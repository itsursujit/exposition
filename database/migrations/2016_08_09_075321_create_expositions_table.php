<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateexpositionsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('expositions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('image');
            $table->text('description');
            $table->timestamp('start_date');
            $table->timestamp('end_date');
            $table->string('venue_name');
            $table->integer('address_id');
            $table->timestamp('booking_start_date');
            $table->timestamp('booking_end_date');
            $table->integer('is_live');
            $table->integer('is_deleted');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('expositions');
    }
}
