<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

use App\Repositories\ExpositionsRepository;

class ExpositionTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertTrue(true);
    }

    public function testHomePage()
    {
        $this->visit('/')
            ->see('UPCOMING EXPOSITIONS');
    }

    public function testExposition()
    {
        $this->seeInDatabase('expositions', ['id' => 1]);
    }

    public function testLiveExposition()
    {
        $this->seeInDatabase('expositions', ['is_live' => 1]);
    }

    public function testVisitSpecificExposition(){
        $this->visit('/visit/expo/41')
            ->see('About ut suscipit')
            ->see('No stands available');
    }

    public function testBookSpecificExposition(){
        $this->visit('/book/expo/1')
            ->see('No stands available');
    }

    public function testAvailableStands(){
        $this->visit('/book/expo/20')
            ->see('stand-box')
            ->see('Available');
    }

    public function testGetReservationForm(){
        $this->visit('/reserve/41')
            ->seeInDatabase('stands',['id' => 41])
            ->see('Reserve your favourite stand');
    }

    public function testBookStand(){
        $this->visit('/reserve/41')
            ->type('Test Organization','organization_name')
            ->type('testemail@gmail.com','organization_email')
            ->type('Test Admin','name')
            ->type('testemail@gmail.com','email')
            ->type('test1234','password')
            ->type('test1234','password_confirmation')
            ->press('Confirm Reservation')
            ->seePageIs('/reserve/41');
    }

    public function testAdminLogin(){
        $user = \App\User::find(4);
        $this->actingAs($user)
            ->visit('/dashboards')
            ->see('Exposition');
    }

    public function testOrganizationLogin(){
        $user = \App\User::find(10);
        $this->actingAs($user)
            ->visit('/dashboards')
            ->dontSee('Exposition');
    }

}
