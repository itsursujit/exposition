<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateordersTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamp('order_date');
            $table->string('exposition_id');
            $table->text('notes');
            $table->string('status');
            $table->float('amount');
            $table->string('transaction_id');
            $table->integer('organization_id');
            $table->integer('is_payment_completed');
            $table->string('payment_transaction_code');
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
        Schema::drop('orders');
    }
}
