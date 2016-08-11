<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class Stand extends Model
{
    use SoftDeletes;

    public $table = 'stands';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
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
