<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use System\Classes\PluginManager;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;
use Ittoo\Carousel\Models\Tag;

class AddCategoryToLogos extends Migration
{
    public function up()
    {
        if (Schema::hasTable('ittoo_carousel_carousels')) {
            Schema::table('ittoo_carousel_logos', function(Blueprint $table)
            {
                $table->integer('carousel_id')->unsigned()->nullable();
                $table->foreign('carousel_id')
                    ->references('id')
                    ->on('ittoo_carousel_carousels')
                    ->onUpdate('cascade')
                    ->onDelete('set null');            
            });
        }
    }
    
    public function down()
    {
    }
}
