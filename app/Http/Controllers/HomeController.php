<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Models\Expositions;
use App\Models\Order;
use App\Models\OrderItems;
use App\Models\OrganizationStands;
use App\Repositories\ExpositionsRepository;
use App\Repositories\StandRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @param ExpositionsRepository $expositionsRepository
     * @return \Illuminate\Http\Response
     */
    public function index(ExpositionsRepository $expositionsRepository)
    {
        $expositions = $expositionsRepository->getExpositionWithLocation();
        $dateClass = [];
        foreach($expositions as $key => $exposition){
            if(!in_array($exposition->date_class, $dateClass)){
                $dateClass[] = $exposition->date_class;
            }
        }
        $dateChunks = array_chunk($dateClass, 7);
        $dateRange = [];
        if(count($dateChunks)>0){
            $dateRange = $dateChunks[0];
        }
        return view('welcome', compact('expositions', 'dateRange'));
    }

    /**
     * @Description Inserts the order being made by Organization
     * @param $status
     * @param $id
     * @param StandRepository $standRepository
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function updateOrder($status, $id, StandRepository $standRepository) {
        $canChangeStatus = false;
        $user = Auth::user();
        if(!$user){
            return redirect('/login');
        }
        $order = Order::find($id);
        $organizationOrder='';
        if($user->is_admin){
            $canChangeStatus = true;
        }
        else{
            $organization = $standRepository->getOrganizationByUser($user->id);
            $currentUserOrganization =isset($organization[0])?$organization[0]->organization_id:'';
            if($currentUserOrganization == $order->organization_id && $currentUserOrganization !=''){
                $canChangeStatus = true;
            }
        }
        if(!$canChangeStatus) {
            abort('403', 'Unauthorised Access');
        }

        if(count($order)>0) {
            $standRepository->updateStandOrder( $id, $status, $user);
        }

        return redirect('/dashboards');
    }

    /**
     * @Description Shows the admin dashboard after login
     * @param StandRepository $standRepository
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     */
    public function dashboards(StandRepository $standRepository){
        $isAdmin = false;
        $user = Auth::user();
        if(!$user){
            return redirect('/login');
        }
        $filter = '';
        if($user->is_admin){
            $isAdmin = true;
        }
        if(!$user->is_admin && $user->role == 'ORGANIZATION' ){
            $organization = $standRepository->getOrganizationByUser($user->id);
            if(isset($organization[0]->organization_id)){
                $filter = ' WHERE o.id = ' . $organization[0]->organization_id;
            }
        }

        $orders = $standRepository->getOrdersForAdmin($filter);
        $stands = $standRepository->getStandsForAdmin($filter);
        $expositions = $standRepository->getExpositionsForAdmin();
        return view('dashboards.index', compact('orders','stands', 'expositions', 'isAdmin'));
    }
}
