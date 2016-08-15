<?php

use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class ExampleTest extends TestCase
{
    /**
     * A basic functional test example.
     *
     * @return void
     */
    public function testBasicExample()
    {
        $this->visit('/')
             ->see('UPCOMING EXPOSITIONS');
    }

    public function testVisitClick()
    {
        $this->visit('/')
            ->click('visit')
            ->seePageIs('/visit/expo/2');
    }

}
