<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\CreateOrganizationStandsRequest;
use App\Http\Requests\UpdateOrganizationStandsRequest;
use App\Repositories\OrganizationStandsRepository;
use App\Http\Controllers\AppBaseController as InfyOmBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class OrganizationStandsController extends InfyOmBaseController
{
    /** @var  OrganizationStandsRepository */
    private $organizationStandsRepository;

    public function __construct(OrganizationStandsRepository $organizationStandsRepo)
    {
        $this->organizationStandsRepository = $organizationStandsRepo;
    }

    /**
     * Display a listing of the OrganizationStands.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->organizationStandsRepository->pushCriteria(new RequestCriteria($request));
        $organizationStands = $this->organizationStandsRepository->all();

        return view('organizationStands.index')
            ->with('organizationStands', $organizationStands);
    }

    /**
     * Show the form for creating a new OrganizationStands.
     *
     * @return Response
     */
    public function create()
    {
        return view('organizationStands.create');
    }

    /**
     * Store a newly created OrganizationStands in storage.
     *
     * @param CreateOrganizationStandsRequest $request
     *
     * @return Response
     */
    public function store(CreateOrganizationStandsRequest $request)
    {
        $input = $request->all();

        $organizationStands = $this->organizationStandsRepository->create($input);

        Flash::success('OrganizationStands saved successfully.');

        return redirect(route('organizationStands.index'));
    }

    /**
     * Display the specified OrganizationStands.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $organizationStands = $this->organizationStandsRepository->findWithoutFail($id);

        if (empty($organizationStands)) {
            Flash::error('OrganizationStands not found');

            return redirect(route('organizationStands.index'));
        }

        return view('organizationStands.show')->with('organizationStands', $organizationStands);
    }

    /**
     * Show the form for editing the specified OrganizationStands.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $organizationStands = $this->organizationStandsRepository->findWithoutFail($id);

        if (empty($organizationStands)) {
            Flash::error('OrganizationStands not found');

            return redirect(route('organizationStands.index'));
        }

        return view('organizationStands.edit')->with('organizationStands', $organizationStands);
    }

    /**
     * Update the specified OrganizationStands in storage.
     *
     * @param  int              $id
     * @param UpdateOrganizationStandsRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateOrganizationStandsRequest $request)
    {
        $organizationStands = $this->organizationStandsRepository->findWithoutFail($id);

        if (empty($organizationStands)) {
            Flash::error('OrganizationStands not found');

            return redirect(route('organizationStands.index'));
        }

        $organizationStands = $this->organizationStandsRepository->update($request->all(), $id);

        Flash::success('OrganizationStands updated successfully.');

        return redirect(route('organizationStands.index'));
    }

    /**
     * Remove the specified OrganizationStands from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $organizationStands = $this->organizationStandsRepository->findWithoutFail($id);

        if (empty($organizationStands)) {
            Flash::error('OrganizationStands not found');

            return redirect(route('organizationStands.index'));
        }

        $this->organizationStandsRepository->delete($id);

        Flash::success('OrganizationStands deleted successfully.');

        return redirect(route('organizationStands.index'));
    }
}
