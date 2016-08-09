<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\CreateOrderItemsRequest;
use App\Http\Requests\UpdateOrderItemsRequest;
use App\Repositories\OrderItemsRepository;
use App\Http\Controllers\AppBaseController as InfyOmBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class OrderItemsController extends InfyOmBaseController
{
    /** @var  OrderItemsRepository */
    private $orderItemsRepository;

    public function __construct(OrderItemsRepository $orderItemsRepo)
    {
        $this->orderItemsRepository = $orderItemsRepo;
    }

    /**
     * Display a listing of the OrderItems.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->orderItemsRepository->pushCriteria(new RequestCriteria($request));
        $orderItems = $this->orderItemsRepository->all();

        return view('orderItems.index')
            ->with('orderItems', $orderItems);
    }

    /**
     * Show the form for creating a new OrderItems.
     *
     * @return Response
     */
    public function create()
    {
        return view('orderItems.create');
    }

    /**
     * Store a newly created OrderItems in storage.
     *
     * @param CreateOrderItemsRequest $request
     *
     * @return Response
     */
    public function store(CreateOrderItemsRequest $request)
    {
        $input = $request->all();

        $orderItems = $this->orderItemsRepository->create($input);

        Flash::success('OrderItems saved successfully.');

        return redirect(route('orderItems.index'));
    }

    /**
     * Display the specified OrderItems.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $orderItems = $this->orderItemsRepository->findWithoutFail($id);

        if (empty($orderItems)) {
            Flash::error('OrderItems not found');

            return redirect(route('orderItems.index'));
        }

        return view('orderItems.show')->with('orderItems', $orderItems);
    }

    /**
     * Show the form for editing the specified OrderItems.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $orderItems = $this->orderItemsRepository->findWithoutFail($id);

        if (empty($orderItems)) {
            Flash::error('OrderItems not found');

            return redirect(route('orderItems.index'));
        }

        return view('orderItems.edit')->with('orderItems', $orderItems);
    }

    /**
     * Update the specified OrderItems in storage.
     *
     * @param  int              $id
     * @param UpdateOrderItemsRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateOrderItemsRequest $request)
    {
        $orderItems = $this->orderItemsRepository->findWithoutFail($id);

        if (empty($orderItems)) {
            Flash::error('OrderItems not found');

            return redirect(route('orderItems.index'));
        }

        $orderItems = $this->orderItemsRepository->update($request->all(), $id);

        Flash::success('OrderItems updated successfully.');

        return redirect(route('orderItems.index'));
    }

    /**
     * Remove the specified OrderItems from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $orderItems = $this->orderItemsRepository->findWithoutFail($id);

        if (empty($orderItems)) {
            Flash::error('OrderItems not found');

            return redirect(route('orderItems.index'));
        }

        $this->orderItemsRepository->delete($id);

        Flash::success('OrderItems deleted successfully.');

        return redirect(route('orderItems.index'));
    }
}
