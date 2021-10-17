<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

class CreateCarouselSlides extends Migration
{
    public function up()
    {
        Schema::create('ittoo_carousel_slides', function(Blueprint $table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('carousel_id')->unsigned()->nullable();
            $table->string('caption')->nullable();
            $table->text('description')->nullable();
            $table->string('link')->nullable();
            $table->boolean('darken_bg')->default(0);
            $table->integer('sort_order')->default(0);
            $table->timestamps();

            $table->foreign('carousel_id')
                ->references('id')
                ->on('ittoo_carousel_carousels')
                ->onUpdate('cascade')
                ->onDelete('set null');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('ittoo_carousel_slides');
    }
}
