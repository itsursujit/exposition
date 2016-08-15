<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class Materials extends Model
{
    use SoftDeletes;

    public $table = 'organization_marketing_items';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'titles',
        'organization_id',
        'path',
        'stand_id',
        'name',
        'is_downloadable',
        'is_live'
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
