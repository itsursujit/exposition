<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\CreateExpositionsRequest;
use App\Http\Requests\UpdateExpositionsRequest;
use App\Models\Stand;
use App\Repositories\ExpositionsRepository;
use App\Http\Controllers\AppBaseController as BaseController;
use Illuminate\Http\Request;
use Flash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class ExpositionsController extends BaseController
{
    /** @var  ExpositionsRepository */
    private $expositionsRepository;

    public function __construct(ExpositionsRepository $expositionsRepo)
    {
        $this->expositionsRepository = $expositionsRepo;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function book($id){
        $stands = DB::select("SELECT stands.*, expositions.title
                                FROM expositions 
                                INNER JOIN stands ON expositions.id = stands.exposition_id
                                WHERE expositions.id = $id");
        return view('organizations.book', compact('stands'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function stand($id, Request $request) {
        $ajax = $request->ajax();
        $stands = DB::select("SELECT distinct s.id as stand_id, s.*, o.id as organization_id, os.image, o.name, o.email,o.phone,o.admin_name, o.admin_email
                                FROM expositions e 
                                INNER JOIN stands s ON e.id = s.exposition_id
                                LEFT JOIN organization_stands os ON os.stand_id = s.id
                                LEFT JOIN organizations o ON os.organization_id = o.id
                                WHERE s.id = $id");
        $materials = DB::select("SELECT om.* FROM organization_marketing_items om WHERE stand_id = $id AND is_live=1");
        return view('organizations.stand', compact('stands', 'ajax', 'materials'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function reserve($id, Request $request) {
        $stand = DB::select("SELECT distinct s.id as stand_id, s.*, e.title as exposition_title
                                FROM expositions e
                                INNER JOIN stands s ON e.id = s.exposition_id
                                WHERE s.id = $id");
        return view('organizations.reserve', compact('stand'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     * @throws \Illuminate\Foundation\Validation\ValidationException
     */
    public function postReserve($id, Request $request) {
        return redirect($this->redirectPath());
        dd($request->all());


        $validator = $this->validator($request->all());

        if ($validator->fails()) {
            $this->throwValidationException(
                $request, $validator
            );
        }
        $stand = DB::select("SELECT distinct s.id as stand_id, s.*, e.title as exposition_title
                                FROM expositions e
                                INNER JOIN stands s ON e.id = s.exposition_id
                                WHERE s.id = $id");
        return view('organizations.reserve', compact('stand'));
        Auth::guard($this->getGuard())->login($this->create($request->all()));

        return redirect($this->redirectPath());
    }

    /**
     * @return string
     */
    public function redirectPath()
    {
        if (property_exists($this, 'redirectPath')) {
            return $this->redirectPath;
        }

        return property_exists($this, 'redirectTo') ? $this->redirectTo : '/home';
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
        $sql ="
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                ( 3959 * acos( 
                cos( radians($lat) ) * cos( radians( addresses.lat ) ) * cos( radians( addresses.lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( addresses.lat ) ) ) ) AS distance
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id AND expositions.is_live = 1 HAVING distance < 3100 ORDER BY distance LIMIT 0 , 50;
                ";
        //dd($sql);
        $map = DB::select($sql);
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
        $map = DB::select("
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                countries.iso_3166_3 as country,
                ( 3959 * acos(
                cos( radians($lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id WHERE expostions.id = '$id' ORDER BY distance LIMIT 0 , 10;
                ");
        echo json_encode(array('data'=>$map));
    }

    /**
     * Display a listing of the Expositions.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->expositionsRepository->pushCriteria(new RequestCriteria($request));
        $expositions = $this->expositionsRepository->all();

        return view('expositions.index')
            ->with('expositions', $expositions);
    }

    /**
     * Show the form for creating a new Expositions.
     *
     * @return Response
     */
    public function create()
    {
        return view('expositions.create');
    }

    /**
     * Store a newly created Expositions in storage.
     *
     * @param CreateExpositionsRequest $request
     *
     * @return Response
     */
    public function store(CreateExpositionsRequest $request)
    {
        $input = $request->all();

        $expositions = $this->expositionsRepository->create($input);

        Flash::success('Expositions saved successfully.');

        return redirect(route('expositions.index'));
    }

    /**
     * Display the specified Expositions.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $expositions = $this->expositionsRepository->findWithoutFail($id);

        if (empty($expositions)) {
            Flash::error('Expositions not found');

            return redirect(route('expositions.index'));
        }

        return view('expositions.show')->with('expositions', $expositions);
    }

    /**
     * Show the form for editing the specified Expositions.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $expositions = $this->expositionsRepository->findWithoutFail($id);

        if (empty($expositions)) {
            Flash::error('Expositions not found');

            return redirect(route('expositions.index'));
        }

        return view('expositions.edit')->with('expositions', $expositions);
    }

    /**
     * Update the specified Expositions in storage.
     *
     * @param  int              $id
     * @param UpdateExpositionsRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateExpositionsRequest $request)
    {
        $expositions = $this->expositionsRepository->findWithoutFail($id);

        if (empty($expositions)) {
            Flash::error('Expositions not found');

            return redirect(route('expositions.index'));
        }

        $expositions = $this->expositionsRepository->update($request->all(), $id);

        Flash::success('Expositions updated successfully.');

        return redirect(route('expositions.index'));
    }

    /**
     * Remove the specified Expositions from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $expositions = $this->expositionsRepository->findWithoutFail($id);

        if (empty($expositions)) {
            Flash::error('Expositions not found');

            return redirect(route('expositions.index'));
        }

        $this->expositionsRepository->delete($id);

        Flash::success('Expositions deleted successfully.');

        return redirect(route('expositions.index'));
    }
}
