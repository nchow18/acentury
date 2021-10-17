<?php 
namespace Ittoo\Carousel\Updates;

use Schema;
use System\Classes\PluginManager;
use October\Rain\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;
use Ittoo\Carousel\Models\Tag;

class CreateBlogTags extends Migration
{
    public function up()
    {
        if (PluginManager::instance()->hasPlugin('RainLab.Blog')) {
            $this->createTags();
        }
    }
    
    public function down()
    {
        if (PluginManager::instance()->hasPlugin('RainLab.Blog')) {
            $this->dropTags();
        }
    }
    
    private function createTags()
    {
        if (!Schema::hasTable(Tag::TABLE_NAME)) {
            Schema::create(
                Tag::TABLE_NAME,
                static function ($table) {
                    $table->engine = 'InnoDB';
                    $table->increments('id');
                    $table->string('name')->unique();
                    $table->string('slug')->unique();
                    $table->timestamps();
                }
            );
        }
        if (!Schema::hasTable(Tag::CROSS_REFERENCE_TABLE_NAME)) {
            Schema::create(
                Tag::CROSS_REFERENCE_TABLE_NAME,
                static function ($table) {
                    $table->engine = 'InnoDB';
                    $table->integer('tag_id')->unsigned()->nullable()->default(null);
                    $table->integer('post_id')->unsigned()->nullable()->default(null);
                    $table->index(['tag_id', 'post_id']);
                    $table->foreign('tag_id', 'Tag reference')->references('id')->on(Tag::TABLE_NAME)->onDelete('cascade');
                    $table->foreign('post_id', 'Post reference')->references('id')->on('rainlab_blog_posts')->onDelete('cascade');
                }
            );
        }
    }

    private function dropTags()
    {
        Schema::dropIfExists(Tag::CROSS_REFERENCE_TABLE_NAME);
        Schema::dropIfExists(Tag::TABLE_NAME);
    }    
    
}
