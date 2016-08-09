<?php

namespace App\Repositories;

use App\Models\OrderItems;
use InfyOm\Generator\Common\BaseRepository;

class OrderItemsRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'order_id',
        'stand_id',
        'is_cancelled',
        'is_deleted',
        'status'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return OrderItems::class;
    }
}
