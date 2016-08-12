<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\CreateExpositionsRequest;
use App\Http\Requests\UpdateExpositionsRequest;
use App\Repositories\ExpositionsRepository;
use App\Http\Controllers\AppBaseController as BaseController;
use Illuminate\Http\Request;
use Flash;
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

    public function map(){
        /*$bounds=explode(",", Input::get('bounds'));
        $lat = $bounds[0]-($bounds[0]-$bounds[2])/2;
        $lng = $bounds[1]-($bounds[1]-$bounds[3])/2;*/
        $center = explode(",", Input::get('center'));
        $lat = $center[0];
        $lng = $center[1];
        $map = DB::select("
                SELECT expositions.id as expo_id, expositions.title, addresses.*,
                ( 3959 * acos( 
                cos( radians($lat) ) * cos( radians( addresses.lat ) ) * cos( radians( addresses.lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( addresses.lat ) ) ) ) AS distance
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id HAVING distance < 4100 ORDER BY distance LIMIT 0 , 50;
                ");
        echo json_encode(array('data'=>$map));
    }

    public function expo(){
        $bounds=explode(",", Input::get('bounds'));
        $lat = $bounds[0]-($bounds[0]-$bounds[2])/2;
        $lng = $bounds[1]-($bounds[1]-$bounds[3])/2;
        $id = Input::get('id');
        $map = DB::select("
                SELECT expositions.id as expo_id, expositions.title, addresses.*,
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
