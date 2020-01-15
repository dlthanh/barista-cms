<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateForeign extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('teacher_subject');

        Schema::create('teacher_subject', function (Blueprint $table) {
            $table->unsignedBigInteger('subject_id');
            $table->unsignedBigInteger('teacher_id');

            $table->foreign('subject_id')->references('id')->on('subjects')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('teacher_id')->references('id')->on('teachers')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->primary(['subject_id', 'teacher_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teacher_subject');
    }
}
