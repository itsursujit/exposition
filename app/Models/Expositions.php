<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Expositions table
 */
class Expositions extends Model
{
    use SoftDeletes;

    public $table = 'expositions';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
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
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'title' => 'string',
        'image' => 'string',
        'description' => 'string',
        'venue_name' => 'string',
        'address_id' => 'integer',
        'is_live' => 'integer',
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
