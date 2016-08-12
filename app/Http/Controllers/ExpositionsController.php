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
        $map = DB::select("
                SELECT *, 
                ( 3959 * acos( 
                cos( radians(lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians(-122) ) + sin( radians(37) ) * sin( radians( lat ) ) ) ) AS distance FROM addresses ORDER BY distance LIMIT 0 , 20;
                ");
        dd($map);
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
