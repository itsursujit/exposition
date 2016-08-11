<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class OrganizationStands extends Model
{
    use SoftDeletes;

    public $table = 'organization_stands';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'image',
        'organization_id',
        'exposition_id',
        'stand_id',
        'stand_features',
        'visitors_count',
        'is_deleted'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'image' => 'string',
        'organization_id' => 'integer',
        'exposition_id' => 'integer',
        'stand_id' => 'integer',
        'stand_features' => 'string',
        'visitors_count' => 'integer',
        'is_deleted' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];
}
