<?php

namespace App\Repositories;

use App\Models\OrganizationStands;
use InfyOm\Generator\Common\BaseRepository;

class OrganizationStandsRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'image',
        'organization_id',
        'exposition_id',
        'stand_id',
        'stand_features',
        'visitors_count',
        'is_deleted'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return OrganizationStands::class;
    }
}
