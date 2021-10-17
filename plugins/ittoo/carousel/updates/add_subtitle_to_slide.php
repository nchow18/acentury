<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

class AddSubtitleToSlide extends Migration
{
    public function up()
    {
        if (Schema::hasColumn('ittoo_carousel_slides', 'subtitle')) {
            return;
        }

        Schema::table('ittoo_carousel_slides', function(Blueprint $table)
        {
            $table->string('subtitle')->default('');
        });
    }
    
    public function down()
    {
    }
}
