<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class Order extends Model
{
    use SoftDeletes;

    public $table = 'orders';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'order_date',
        'exposition_id',
        'notes',
        'status',
        'amount',
        'transaction_id',
        'organization_id',
        'is_payment_completed',
        'payment_transaction_code',
        'is_deleted'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'exposition_id' => 'string',
        'notes' => 'string',
        'status' => 'string',
        'amount' => 'float',
        'transaction_id' => 'string',
        'organization_id' => 'integer',
        'is_payment_completed' => 'integer',
        'payment_transaction_code' => 'string',
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
