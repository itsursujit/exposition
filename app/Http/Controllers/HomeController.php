<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Models\Expositions;
use App\Models\Order;
use App\Models\OrderItems;
use App\Models\OrganizationStands;
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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $expositions = DB::select("
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                countries.iso_3166_3 as country
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id
                INNER JOIN countries On countries.id = addresses.country_id ORDER BY expositions.start_date DESC;
                ");
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

    public function updateOrder($status, $id) {
        $canChangeStatus = false;
        $user = Auth::user();
        if(!$user){
            return redirect('/login');
        }
        $organizationOrder='';
        if($user->is_admin){
            $canChangeStatus = true;
            $order = Order::find($id);
        }
        else{
            $organization = DB::select("SELECT organization_id FROM organization_users WHERE user_id = $user->id");
            $currentUserOrganization =isset($organization[0])?$organization[0]->organization_id:'';
            $order = Order::find($id);
            if($currentUserOrganization == $order->organization_id && $currentUserOrganization !=''){
                $canChangeStatus = true;
            }
        }
        if(!$canChangeStatus) {
            abort('403', 'Unauthorised Access');
        }

        if(count($order)>0) {
            $orderItem = OrderItems::where('order_id', $id);
            $orderItems = $orderItem->get();
            switch($status) {
                case 'cancel':
                    $order->status = 'CANCELLED';
                    $order->update();
                    $orderItem->update(array('status' => 'CANCELLED','is_cancelled'=>1));
                    $standIdArray = [];
                    foreach($orderItems as $key => $item) {
                        $standIdArray[] = $item->stand_id;
                    }
                    if(count($standIdArray)>0){
                        $standIdArray = implode(',', $standIdArray);
                        DB::update("UPDATE stands SET is_reserved=0, is_booked=0 WHERE id IN ($standIdArray)");
                    }

                    break;
                case 'approve':
                    if($user->is_admin){
                        $order->status = 'APPROVED';
                        $order->update();
                        $orderItem->update(array('status' => 'APPROVED','is_cancelled'=>0));
                        $standIdArray = [];
                        foreach($orderItems as $key => $item) {
                            $standIdArray[] = $item->stand_id;
                        }
                        if(count($standIdArray)>0){
                            $stand = implode(',', $standIdArray);
                            DB::update("UPDATE stands SET is_reserved=0, is_booked=1 WHERE id IN ($stand)");
                            foreach($standIdArray as $key => $stand){
                                $row = [
                                    'organization_id' => $order->organization_id,
                                    'exposition_id' => $order->exposition_id,
                                    'stand_id' => $stand,
                                ];
                                $hasRow = OrganizationStands::where($row);
                                if(count($hasRow->get()) == 0){
                                    OrganizationStands::create($row);
                                }

                            }
                        }
                    }
                    else{
                        abort('403', 'Unauthorised Access');
                    }

                    break;
                case 'reject':
                    if($user->is_admin){
                        $order->status = 'REJECTED';
                        $order->update();
                        $orderItem->update(array('status' => 'REJECTED','is_cancelled'=>0));

                        $standIdArray = [];
                        foreach($orderItems as $key => $item) {
                            $standIdArray[] = $item->stand_id;
                        }
                        if(count($standIdArray)>0){
                            $standIdArray = implode(',', $standIdArray);
                            DB::update("UPDATE stands SET is_reserved=0, is_booked=0 WHERE id IN ($standIdArray)");
                        }
                    }
                    else{
                        abort('403', 'Unauthorised Access');
                    }

                    break;
                default:
                    abort('403', 'Unauthorised Access');
                    break;
            }
        }

        return redirect('/dashboards');
    }

    public function dashboards(){
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
            $organization = DB::select("SELECT organization_id FROM organization_users WHERE user_id = $user->id");
            if(isset($organization[0]->organization_id)){
                $filter = ' WHERE o.id = ' . $organization[0]->organization_id;
            }
        }

        $orders = DB::select("
                SELECT os.id, o.name, os.order_date, e.title as expo,s.title as stand, os.status,
                CASE WHEN datediff(now(), order_date) >5 then 1 else 0 end as can_cancel
                FROM organizations o
                INNER JOIN orders os ON os.organization_id = o.id
                INNER JOIN expositions e ON e.id = os.exposition_id
                INNER JOIN order_items oi ON oi.order_id = os.id
                INNER JOIN stands s ON oi.stand_id = s.id
                $filter
                ORDER BY os.order_date DESC;
                ");
        $stands = DB::select("
                SELECT s.id, o.name,s.title as stand, os.visitors_count
                FROM organizations o
                INNER JOIN organization_stands os ON os.organization_id =o.id
                INNER JOIN stands s ON os.stand_id = s.id
                $filter
                ORDER BY os.visitors_count DESC;
                ");
        $expositions = DB::select("
                SELECT e.id, e.title,COUNT(s.id) as total,                
                SUM(CASE WHEN s.is_reserved = 1 THEN 1 ELSE 0 END) as reserved, 
                SUM(CASE WHEN s.is_booked = 1 THEN 1 ELSE 0 END) as booked
                FROM expositions e
                INNER JOIN stands s ON e.id = s.exposition_id
                GROUP BY e.id");
        return view('dashboards.index', compact('orders','stands', 'expositions', 'isAdmin'));
    }
}
