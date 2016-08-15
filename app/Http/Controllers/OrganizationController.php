<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\CreateOrganizationRequest;
use App\Http\Requests\UpdateOrganizationRequest;
use App\Models\Visitor;
use App\Repositories\OrganizationRepository;
use App\Http\Controllers\AppBaseController as BaseController;
use Illuminate\Http\Request;
use Flash;
use Illuminate\Support\Facades\DB;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class OrganizationController extends BaseController
{
    /** @var  OrganizationRepository */
    private $organizationRepository;

    /**
     * OrganizationController constructor.
     * @param OrganizationRepository $organizationRepo
     */
    public function __construct(OrganizationRepository $organizationRepo)
    {
        $this->organizationRepository = $organizationRepo;
    }

    /**
     * Shows the stand information in details
     * @param $id
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function visitStand($id, Request $request) {
        $ajax = $request->ajax();

        $stands = $this->organizationRepository->getOrganizationStand( $id );

        $this->organizationRepository->updateVisitors( $stands );

        $materials = $this->organizationRepository->getStandMaterials( $id );
        return view('organizations.stand-full', compact('stands', 'ajax', 'materials'));
    }
}
