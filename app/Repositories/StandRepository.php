<?php

namespace App\Repositories;

use App\Models\Order;
use App\Models\OrderItems;
use App\Models\OrganizationStands;
use App\Models\Stand;
use Illuminate\Support\Facades\DB;
use InfyOm\Generator\Common\BaseRepository;

class StandRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
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
     * Configure the Model
     **/
    public function model()
    {
        return Stand::class;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getOrganizationByUser($id ){
        return DB::select("SELECT organization_id FROM organization_users WHERE user_id = $id");
    }

    /**
     * @param $id
     * @param $status
     * @param $user
     */
    public function updateStandOrder($id, $status, $user ) {
        $order = Order::find($id);
        $orderItem = OrderItems::where('order_id', $id);
        $orderItems = $orderItem->get();
        switch($status) {
            case 'cancel':
                $order->status = 'CANCELLED';
                $order->update();
                $orderItem->update(array('status' => 'CANCELLED','is_cancelled'=>1));
                $standIdArray = [];
                foreach($orderItems as $key => $item) {
                    $standIdArray[] = $item->stand_id;
                }
                if(count($standIdArray)>0){
                    $standIdArray = implode(',', $standIdArray);
                    DB::update("UPDATE stands SET is_reserved=0, is_booked=0 WHERE id IN ($standIdArray)");
                }

                break;
            case 'approve':
                if($user->is_admin){
                    $order->status = 'APPROVED';
                    $order->update();
                    $orderItem->update(array('status' => 'APPROVED','is_cancelled'=>0));
                    $standIdArray = [];
                    foreach($orderItems as $key => $item) {
                        $standIdArray[] = $item->stand_id;
                    }
                    if(count($standIdArray)>0){
                        $stand = implode(',', $standIdArray);
                        DB::update("UPDATE stands SET is_reserved=0, is_booked=1 WHERE id IN ($stand)");
                        foreach($standIdArray as $key => $stand){
                            $row = [
                                'organization_id' => $order->organization_id,
                                'exposition_id' => $order->exposition_id,
                                'stand_id' => $stand,
                            ];
                            $hasRow = OrganizationStands::where($row);
                            if(count($hasRow->get()) == 0){
                                OrganizationStands::create($row);
                            }

                        }
                    }
                }
                else{
                    abort('403', 'Unauthorised Access');
                }

                break;
            case 'reject':
                if($user->is_admin){
                    $order->status = 'REJECTED';
                    $order->update();
                    $orderItem->update(array('status' => 'REJECTED','is_cancelled'=>0));

                    $standIdArray = [];
                    foreach($orderItems as $key => $item) {
                        $standIdArray[] = $item->stand_id;
                    }
                    if(count($standIdArray)>0){
                        $standIdArray = implode(',', $standIdArray);
                        DB::update("UPDATE stands SET is_reserved=0, is_booked=0 WHERE id IN ($standIdArray)");
                    }
                }
                else{
                    abort('403', 'Unauthorised Access');
                }

                break;
            default:
                abort('403', 'Unauthorised Access');
                break;
        }
    }

    /**
     * @param $filter
     * @return mixed
     */
    public function getOrdersForAdmin($filter ) {
        $rs = DB::select("
                SELECT os.id, o.name, os.order_date, e.title as expo,s.title as stand, os.status,
                CASE WHEN datediff(now(), order_date) >5 then 1 else 0 end as can_cancel
                FROM organizations o
                INNER JOIN orders os ON os.organization_id = o.id
                INNER JOIN expositions e ON e.id = os.exposition_id
                INNER JOIN order_items oi ON oi.order_id = os.id
                INNER JOIN stands s ON oi.stand_id = s.id
                $filter
                ORDER BY os.order_date DESC;
                ");
        return $rs;
    }

    /**
     * @param $filter
     * @return mixed
     */
    public function getStandsForAdmin($filter ) {
        $rs = DB::select("
                SELECT s.id, o.name,s.title as stand, os.visitors_count
                FROM organizations o
                INNER JOIN organization_stands os ON os.organization_id =o.id
                INNER JOIN stands s ON os.stand_id = s.id
                $filter
                ORDER BY os.visitors_count DESC;
                ");
        return $rs;
    }

    /**
     * @return mixed
     */
    public function getExpositionsForAdmin( ) {
        $rs = DB::select("
                SELECT e.id, e.title,COUNT(s.id) as total,
                SUM(CASE WHEN s.is_reserved = 1 THEN 1 ELSE 0 END) as reserved,
                SUM(CASE WHEN s.is_booked = 1 THEN 1 ELSE 0 END) as booked
                FROM expositions e
                INNER JOIN stands s ON e.id = s.exposition_id
                GROUP BY e.id");
        return $rs;
    }
}
