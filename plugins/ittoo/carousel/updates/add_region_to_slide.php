<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use System\Classes\PluginManager;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;
use Ittoo\Carousel\Models\Tag;

class AddRegionToSlide extends Migration
{
    public function up()
    {
        if (!Schema::hasTable('ittoo_carousel_slide_tag')) {
            Schema::table(
                'ittoo_carousel_slide_tag',
                static function ($table) {
//                    $table->engine = 'InnoDB';
//                    $table->integer('tag_id')->unsigned()->nullable()->default(null);
//                    $table->integer('slide_id')->unsigned()->nullable()->default(null);
//                    $table->index(['tag_id', 'slide_id']);
                    $table->foreign('tag_id', 'Tag reference')->references('id')->on(Tag::TABLE_NAME)->onDelete('cascade');
                    $table->foreign('slide_id', 'Post reference')->references('id')->on('ittoo_carousel_slides')->onDelete('cascade');
                }
            );
        }   
    }
    
    public function down()
    {
    }
}
