<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class Organization extends Model
{
    use SoftDeletes;

    public $table = 'organizations';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'name',
        'email',
        'phone',
        'logo',
        'admin_name',
        'admin_email'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'name' => 'string',
        'email' => 'string',
        'phone' => 'string',
        'logo' => 'string',
        'admin_name' => 'string',
        'admin_email' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required',
        'email' => 'required|email',
        'admin_email' => 'email'
    ];
}
