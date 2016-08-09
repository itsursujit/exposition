<?php

namespace App\Repositories;

use App\Models\Organization;
use InfyOm\Generator\Common\BaseRepository;

class OrganizationRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'email',
        'phone',
        'logo',
        'admin_name',
        'admin_email'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Organization::class;
    }
}
