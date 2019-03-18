<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateListOrgsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('list_orgs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name_org');
            $table->string('picture')->nullable();
            $table->longText('description')->nullable();
            $table->longText('address')->nullable();
            $table->boolean('bnf_money')->nullable();
            $table->boolean('bnf_car')->nullable();
            $table->boolean('bnf_house')->nullable();
            $table->boolean('software')->nullable();
            $table->boolean('hardware')->nullable();
            $table->boolean('network')->nullable();
            $table->integer('rating')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('listorgs');
    }
}