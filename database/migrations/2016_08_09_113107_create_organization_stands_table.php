<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class Createorganization_standsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('organization_stands', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image');
            $table->integer('organization_id');
            $table->integer('exposition_id');
            $table->integer('stand_id');
            $table->text('stand_features');
            $table->integer('visitors_count');
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
        Schema::drop('organization_stands');
    }
}
