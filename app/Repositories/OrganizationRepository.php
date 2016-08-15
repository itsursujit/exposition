<?php

namespace App\Repositories;

use App\Models\Materials;
use App\Models\Order;
use App\Models\OrderItems;
use App\Models\Organization;
use App\Models\OrganizationStands;
use App\Models\OrganizationUser;
use App\Models\Visitor;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use InfyOm\Generator\Common\BaseRepository;

class OrganizationRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'email',
        'phone',
        'logo',
        'admin_name',
        'admin_email'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Organization::class;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getOrganizationStand($id ) {
        $stand = DB::select("SELECT distinct s.id as stand_id, s.*, o.id as organization_id, os.image, o.name, o.organization_email,o.phone,o.admin_name, o.admin_email
                                FROM expositions e
                                INNER JOIN stands s ON e.id = s.exposition_id
                                LEFT JOIN organization_stands os ON os.stand_id = s.id
                                LEFT JOIN organizations o ON os.organization_id = o.id
                                WHERE s.id = $id");
        return $stand;
    }

    /**
     * @param $stand
     */
    public function updateVisitors($stand ) {
        Visitor::create([
            'exposition_id' => $stand[0]->exposition_id,
            'stand_id' => $stand[0]->stand_id,
            'ip_address' => $_SERVER['REMOTE_ADDR']
        ]);
        DB::update("UPDATE organization_stands SET visitors_count = visitors_count + 1 WHERE exposition_id='".$stand[0]->exposition_id."' AND stand_id = '".$stand[0]->stand_id."'");
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getStandMaterials($id ){
        return DB::select("SELECT om.* FROM organization_marketing_items om WHERE stand_id = $id AND is_live=1");
    }

    /**
     * @param $data
     * @return array
     */
    public function putOrganization($data){
        $organization = [
            'name' => $data['organization_name'],
            'organization_email' => $data['organization_email'],
            'phone' => $data['phone'],
            'admin_name' => $data['name'],
            'admin_email' => $data['email'],
        ];
        $organization = Organization::create($organization);
        return $organization;
    }

    /**
     * @param $data
     * @return array|static
     */
    public function putUser($data){
        $user = [
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'is_admin' => 0,
            'role' => 'ORGANIZATION',
        ];
        $user = User::create($user);
        return $user;
    }

    /**
     * @param $organizationUsers
     */
    public function putOrganizationUser($organizationUsers){
        $organizationUsers = OrganizationUser::create($organizationUsers);
    }

    /**
     * @param $order
     * @return mixed
     */
    public function saveOrder($order ){
        $rs = Order::create($order);
        return $rs;
    }

    /**
     * @param $orderItems
     * @return mixed
     */
    public function saveOrderItems($orderItems ) {
        $items = OrderItems::create($orderItems);
        return $items;
    }

    /**
     * @param $standItems
     * @return mixed
     */
    public function saveStandItems($standItems ) {
        $items = OrganizationStands::create($standItems);
        return $items;
    }

    /**
     * @param $materialItems
     * @return mixed
     */
    public function saveMaterialItems($materialItems ) {
        $items = Materials::create($materialItems);
        return $items;
    }

    /**
     * @param $stand
     * @param $data
     */
    public function updateStand($stand, $data ) {

        if($data['order'] == 'reserve'){
            $stand->is_reserve = 1;
        }
        elseif($data['order'] == 'book') {
            $stand->is_booked = 1;
        }
        $stand->update();
    }
}
