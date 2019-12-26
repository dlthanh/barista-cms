<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeacherSubjectTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teacher_subject', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('subject_id')->unsigned()->nullable();
            $table->integer('teacher_id')->unsigned()->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('teacher_subject', function (Blueprint $table) {
            //
        });
    }
}
