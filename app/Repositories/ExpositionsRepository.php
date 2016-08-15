<?php

namespace App\Repositories;

use App\Models\Expositions;
use Illuminate\Support\Facades\DB;
use InfyOm\Generator\Common\BaseRepository;

class ExpositionsRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
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
     * Configure the Model
     **/
    public function model()
    {
        return Expositions::class;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getExpositionStands($id ){
        $stands = DB::select("SELECT stands.*, expositions.title
                                FROM expositions
                                INNER JOIN stands ON expositions.id = stands.exposition_id
                                WHERE expositions.id = $id");
        return $stands;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getExpositionLiveStands($id ){
        $stands = DB::select("SELECT stands.*, og.image
                                FROM stands
                                INNER JOIN organization_stands og ON og.stand_id  = stands.id
                                WHERE og.exposition_id = $id");
        return $stands;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getExposition($id ) {
        return Expositions::find( $id );
    }

    /**
     * @return mixed
     */
    public function getExpositionWithLocation( ) {
        $expositions = DB::select("
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                countries.iso_3166_3 as country
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id
                INNER JOIN countries On countries.id = addresses.country_id ORDER BY expositions.start_date DESC;
                ");
        return $expositions;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getStandDetails($id ) {
        return DB::select("SELECT distinct s.id as stand_id, s.*, e.title as exposition_title
                                FROM expositions e
                                INNER JOIN stands s ON e.id = s.exposition_id
                                WHERE s.id = $id");
    }

    /**
     * @param $lat
     * @param $lng
     * @param null $id
     * @return mixed
     */
    public function getExpositionsLocation($lat, $lng, $id = null ) {
        if($id == null ) {
            $sql = "
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                ( 3959 * acos(
                cos( radians($lat) ) * cos( radians( addresses.lat ) ) * cos( radians( addresses.lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( addresses.lat ) ) ) ) AS distance
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id AND expositions.is_live = 1 HAVING distance < 3100 ORDER BY distance LIMIT 0 , 50;
                ";
        }
        else{
            $sql = "
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                countries.iso_3166_3 as country,
                ( 3959 * acos(
                cos( radians($lat) ) * cos( radians( lat ) ) * cos( radians( lng ) - radians($lng) ) + sin( radians($lat) ) * sin( radians( lat ) ) ) ) AS distance
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id WHERE expostions.id = '$id' ORDER BY distance LIMIT 0 , 10;
                ";
        }

        $map = DB::select($sql);
        return $map;
    }
}
