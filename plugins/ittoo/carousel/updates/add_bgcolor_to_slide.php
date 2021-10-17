<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

class AddBgcolorToSlide extends Migration
{
    public function up()
    {
        if (Schema::hasColumn('ittoo_carousel_slides', 'bgcolor')) {
            return;
        }

        Schema::table('ittoo_carousel_slides', function(Blueprint $table)
        {
            $table->string('bgcolor')->default('')->nullable();
        });
    }
    
    public function down()
    {
    }
}
