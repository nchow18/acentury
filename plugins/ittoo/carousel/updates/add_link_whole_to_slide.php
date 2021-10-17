<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

// if link is applied to the whole banner instead of the button
class AddLinkWholeToSlide extends Migration
{
    public function up()
    {
        if (Schema::hasColumn('ittoo_carousel_slides', 'link_whole')) {
            return;
        }

        Schema::table('ittoo_carousel_slides', function(Blueprint $table)
        {
            $table->boolean('link_whole')->default(false);
        });
    }
    
    public function down()
    {
    }
}
