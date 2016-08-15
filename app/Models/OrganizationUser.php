<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 *
 */
class OrganizationUser extends Model
{
    use SoftDeletes;

    public $table = 'organization_users';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'organization_id',
        'user_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'organization_id' => 'integer',
        'user_id' => 'integer'
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
