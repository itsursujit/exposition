<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Stand",
 *      required={""},
 *      @SWG\Property(
 *          property="id",
 *          description="id",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="exposition_id",
 *          description="exposition_id",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="title",
 *          description="title",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="length",
 *          description="length",
 *          type="number",
 *          format="float"
 *      ),
 *      @SWG\Property(
 *          property="breadth",
 *          description="breadth",
 *          type="number",
 *          format="float"
 *      ),
 *      @SWG\Property(
 *          property="feature_details",
 *          description="feature_details",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="description",
 *          description="description",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="is_reserved",
 *          description="is_reserved",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="is_booked",
 *          description="is_booked",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="price",
 *          description="price",
 *          type="number",
 *          format="float"
 *      )
 * )
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
