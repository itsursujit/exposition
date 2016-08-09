<?php

namespace App\Repositories;

use App\Models\Stand;
use InfyOm\Generator\Common\BaseRepository;

class StandRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'exposition_id',
        'title',
        'length',
        'breadth',
        'feature_details',
        'description',
        'is_reserved',
        'is_booked',
        'price'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Stand::class;
    }
}
