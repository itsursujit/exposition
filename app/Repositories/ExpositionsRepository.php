<?php

namespace App\Repositories;

use App\Models\Expositions;
use InfyOm\Generator\Common\BaseRepository;

class ExpositionsRepository extends BaseRepository
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
        'address_id',
        'booking_start_date',
        'booking_end_date',
        'is_live',
        'is_deleted'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Expositions::class;
    }
}
