<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenjualanItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penjualan_items', function (Blueprint $table) {
            $table->id();
            $table->decimal('price', 14, 2);
            $table->integer('quantity')->default(1);
            $table->foreignId('penjualan_id');
            $table->foreignId('product_id');
            $table->timestamps();

            $table->foreign('penjualan_id')->references('id')->on('penjualans')->onDelete('cascade');
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_items');
    }
};
