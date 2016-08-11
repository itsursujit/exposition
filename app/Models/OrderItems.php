<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class OrderItems extends Model
{
    use SoftDeletes;

    public $table = 'order_items';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'order_id',
        'stand_id',
        'is_cancelled',
        'is_deleted',
        'status'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'order_id' => 'integer',
        'stand_id' => 'integer',
        'is_cancelled' => 'integer',
        'is_deleted' => 'integer',
        'status' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];
}
