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
            $table->string('picture')->default('default.jpg');
            $table->string('headerpic')->default('no-preview.png');
            $table->longText('description')->nullable();
            $table->longText('address')->nullable();
            $table->string('type')->default('All');
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