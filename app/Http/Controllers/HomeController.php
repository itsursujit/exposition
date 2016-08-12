<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Models\Expositions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $expositions = DB::select("
                SELECT expositions.id as expo_id, DATE_FORMAT(start_date,'%Y-%m-%d') as start_date, concat('.',DATE_FORMAT(start_date,'%y-%b-%d')) as date_class , expositions.title, addresses.*,
                countries.iso_3166_3 as country
                FROM expositions INNER JOIN addresses ON expositions.address_id = addresses.id
                INNER JOIN countries On countries.id = addresses.country_id ORDER BY expositions.start_date DESC;
                ");
        $dateClass = [];
        foreach($expositions as $key => $exposition){
            if(!in_array($exposition->date_class, $dateClass)){
                $dateClass[] = $exposition->date_class;
            }
        }
        $dateChunks = array_chunk($dateClass, 7);
        $dateRange = [];
        if(count($dateChunks)>0){
            $dateRange = $dateChunks[0];
        }
        return view('welcome', compact('expositions', 'dateRange'));
    }
}
