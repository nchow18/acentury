<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

class CreateCarouselCarousels extends Migration
{
    public function up()
    {
        Schema::create('ittoo_carousel_carousels', function(Blueprint $table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->integer('image_height')->unsigned()->default(600);
            $table->boolean('with_controls')->default(0);
            $table->boolean('with_indicators')->default(0);
            $table->timestamps();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('ittoo_carousel_carousels');
    }
}
