<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests;
use App\Models\Stand;
use App\Repositories\OrganizationRepository;
use App\Repositories\ExpositionsRepository;
use App\Http\Controllers\AppBaseController as BaseController;
use Illuminate\Http\Request;
use Flash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Response;

class ExpositionsController extends BaseController
{
    /** @var  ExpositionsRepository */
    private $expositionsRepository;
    private $organizationRepository;

    /**
     * ExpositionsController constructor.
     * @param ExpositionsRepository $expositionsRepo
     */
    public function __construct(ExpositionsRepository $expositionsRepo)
    {
        $this->expositionsRepository = $expositionsRepo;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function book($id){
        $stands = $this->expositionsRepository->getExpositionStands($id);
        return view('organizations.book', compact('stands'));
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function visit($id){
        $exposition = $this->expositionsRepository->getExposition($id);
        $stands = $this->expositionsRepository->getExpositionLiveStands($id);
        return view('expo', compact('stands','exposition'));
    }


    /**
     * @param $id
     * @param OrganizationRepository $organizationRepository
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function stand($id,OrganizationRepository $organizationRepository, Request $request) {
        $ajax = $request->ajax();
        $stands = $organizationRepository->getOrganizationStand( $id );

        $materials = $organizationRepository->getStandMaterials( $id );

        return view('organizations.stand', compact('stands', 'ajax', 'materials'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function reserve($id, Request $request) {
        $stand = $this->expositionsRepository->getStandDetails( $id );
        return view('organizations.reserve', compact('stand'));
    }


    /**
     * @param $file
     * @param $uploaddir
     * @return bool|string
     */
    public function upload($file, $uploaddir) {
        if(!file_exists($uploaddir)) File::makeDirectory($uploaddir);
        if($file->isValid()) {
            $destinationPath = $uploaddir; // upload path
            $extension =$file->getClientOriginalExtension(); // getting image extension
            $fileName = strtolower(str_replace(' ','-',$file->getClientOriginalName())); // renameing image
            $file->move($destinationPath, $fileName); // uploading file to given path
            return strtolower(str_replace(' ','-',$file->getClientOriginalName()));
        }
        else{
            return false;
        }
    }


    /**
     * @param $organization
     * @param $stand
     * @param $files
     * @param OrganizationRepository $organizationRepository
     * @return mixed
     */
    public function putOrganizationOrder($organization, $stand, $files, OrganizationRepository $organizationRepository){
        $document = $files['documents'];
        $image = $files['image'];
        $documentDestinationPath = public_path(). '/materials/';
        $imageDestinationPath = public_path(). '/images/';
        $imageURL = '/images/';
        $documentURL = '/materials/';
        $title = '';
        $uploaddir = '';

        $order = [
            'organization_id' => $organization->id,
            'exposition_id' => $stand->exposition_id,
            'status' => 'APPROVED',
            'amount' => $stand->price,
        ];
        $order = $organizationRepository->saveOrder($order);

        $orderItem = [
            'order_id' => $order->id,
            'stand_id' => $stand->id,
            'status' => 'APPROVED',
        ];
        $orderItem = $organizationRepository->saveOrderItems($orderItem);

        $imageName = $this->upload($image, $imageDestinationPath);

        $documentName = $this->upload($document, $documentDestinationPath);

        $standItems = [
            'organization_id' => $organization->id,
            'stand_id' => $stand->id,
            'exposition_id' => $stand->exposition_id,
            'image' => ($imageName)?$imageURL.$imageName:''
        ];

        $organizationStand = $organizationRepository->saveStandItems( $standItems );

        $materialItems = [
            'organization_id' => $organization->id,
            'stand_id' => $stand->id,
            'titles' => $title,
            'path' => ($documentName)?$documentURL.$documentName:'',
            'name' => $title
        ];

        $materials = $organizationRepository->saveMaterialItems( $materialItems );

        return $organizationStand;
    }

    /**
     * @param $id
     * @param OrganizationRepository $organizationRepository
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     * @throws \Illuminate\Foundation\Validation\ValidationException
     */
    public function postReserve($id,OrganizationRepository $organizationRepository,  Request $request) {
        $this->validator($request);

        $data = $request->all();

        $organization = $organizationRepository->putOrganization($data);

        $user = $organizationRepository->putUser($data);

        Auth::guard($this->getGuard())->login($user);

        $organizationUsers = [
            'organization_id' => $organization->id,
            'user_id' => $user->id,
        ];

        $organizationRepository->putOrganizationUser($organizationUsers);

        $stand = Stand::find($id);

        $orders = $this->putOrganizationOrder($organization, $stand, $request->file(), $organizationRepository);

        $organizationRepository->updateStand($stand, $data);

        return redirect('/dashboards');
        //

        //return redirect($this->redirectPath());
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return string|null
     */
    protected function getGuard()
    {
        return property_exists($this, 'guard') ? $this->guard : null;
    }

    /**
     *
     */
    public function map(){
        $center = explode(",", Input::get('center'));
        $lat = $center[0];
        $lng = $center[1];
        $map = $this->expositionsRepository->getExpositionsLocation($lat, $lng);
        echo json_encode(array('data'=>$map));
    }

    /**
     *
     */
    public function expo(){
        $bounds=explode(",", Input::get('bounds'));
        $lat = $bounds[0]-($bounds[0]-$bounds[2])/2;
        $lng = $bounds[1]-($bounds[1]-$bounds[3])/2;
        $id = Input::get('id');
        $map = $this->expositionsRepository->getExpositionsLocation($lat, $lng, $id );
        echo json_encode(array('data'=>$map));
    }

    /**
     * @param $request
     * @throws \Illuminate\Foundation\Validation\ValidationException
     */
    private function validator($request) {
        $orgValidator = Validator::make($request->all(),[
            'organization_name' => 'required',
            'name' => 'required',
            'organization_email' => 'required|email',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);

        if ($orgValidator->fails()) {
            $this->throwValidationException(
                $request, $orgValidator
            );
        }
    }
}
