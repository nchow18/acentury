<?php
namespace Ittoo\Carousel\Updates;

use Schema;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;

class CreateCarouselLogos extends Migration
{
    public function up()
    {
        if (Schema::hasColumn('rainlab_blog_posts', 'featured')) {
            return;
        }
                
        Schema::table('rainlab_blog_posts', function(Blueprint $table)
        {
            $table->boolean('featured')->default(0);
        });
    }

    public function down()
    {
    }
}
