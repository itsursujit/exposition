<?php

namespace App\Repositories;

use App\Models\Order;
use InfyOm\Generator\Common\BaseRepository;

class OrderRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'order_date',
        'exposition_id',
        'notes',
        'status',
        'amount',
        'transaction_id',
        'organization_id',
        'is_payment_completed',
        'payment_transaction_code',
        'is_deleted'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Order::class;
    }
}
