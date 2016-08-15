<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class Visitor extends Model
{
    use SoftDeletes;

    public $table = 'visitors';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'exposition_id',
        'stand_id',
        'ip_address'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'exposition_id' => 'integer',
        'title' => 'string',
        'length' => 'float',
        'breadth' => 'float',
        'feature_details' => 'string',
        'description' => 'string',
        'is_reserved' => 'integer',
        'is_booked' => 'integer',
        'price' => 'float'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];
}
