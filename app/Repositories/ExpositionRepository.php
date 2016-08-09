<?php

namespace App\Repositories;

use App\Models\Exposition;
use InfyOm\Generator\Common\BaseRepository;

class ExpositionRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'title',
        'image',
        'description',
        'start_date',
        'end_date',
        'venue_name',
        'booking_start_date',
        'booking_end_date',
        'is_live',
        'address_id',
        'is_deleted'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Exposition::class;
    }
}
