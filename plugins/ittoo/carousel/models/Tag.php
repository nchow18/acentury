<?php namespace Ittoo\Carousel\Models;

use Model;
use October\Rain\Database\Traits\SoftDelete as SoftDeleteTrait;
use October\Rain\Database\Traits\Validation as ValidationTrait;

/**
 * Carousel Model
 */
class Tag extends Model
{
    const TABLE_NAME = 'ittoo_blog_tags';
    const CROSS_REFERENCE_TABLE_NAME = 'ittoo_blog_post_tag';    
    
    use \October\Rain\Database\Traits\Sluggable;
    use \October\Rain\Database\Traits\Validation;

    /**
     * @var string The database table used by the model.
     */
    public $table = self::TABLE_NAME;
    
    protected $slugs = ['slug' => 'name'];
    
    public $belongsToMany = [
        'posts' => [
            Post::class,
            'table' => self::CROSS_REFERENCE_TABLE_NAME,
            'order' => 'published_at desc'
        ]
    ];    

    /**
     * @var array Validation rules
     */
    public $rules = [
        'name' => "required|unique:" . self::TABLE_NAME . "|min:2|regex:/^[\w\-\. ]+$/iu",
        'slug' => "required|unique:" . self::TABLE_NAME . "|min:2|regex:/^[\w\-]+$/iu"
    ];
    
    public function beforeValidate()
    {
        // Generate a URL slug for this model
        if (!$this->exists && !$this->slug) {
            $this->slug = Str::slug($this->name);
        }
    }

    protected function getModelUrlParams(array $params): array
    {
        return [
            array_get($params, 'tag', 'tag') => $this->slug
        ];
    }    
}
