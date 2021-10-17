<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

class AddVerticalToSlide extends Migration
{
    public function up()
    {
        if (Schema::hasColumn('ittoo_carousel_slides', 'vspacing')) {
            return;
        }

        Schema::table('ittoo_carousel_slides', function(Blueprint $table)
        {
            $table->integer('vspacing')->unsigned()->default(0);
        });
    }
    
    public function down()
    {
    }
}
