<?php namespace Ittoo\Carousel\Models;

use Model;
use October\Rain\Database\Traits\SoftDelete as SoftDeleteTrait;
use October\Rain\Database\Traits\Validation as ValidationTrait;
use Ittoo\Carousel\Models\Tag;

/**
 * Carousel Model
 */
class Slide extends Model
{
//    use SoftDeleteTrait;
    use \October\Rain\Database\Traits\Sortable;
    use ValidationTrait;
    
    /**
     * @var string The database table used by the model.
     */
    public $table = 'ittoo_carousel_slides';
    
    public $belongsTo = [
        'carousel' => [
            'Ittoo\Carousel\Models\Carousel',
            'table' => 'ittoo_carousel_carousels',
        ],
        'image_carousel' => [
            'Ittoo\Carousel\Models\Carousel',
            'table' => 'ittoo_carousel_carousels',
        ]
    ];   
    
    public $belongsToMany = [
        'tags' => [
            Tag::class,
            'table' => 'ittoo_carousel_slide_tag',
            'order' => 'name'
        ]
    ];
    

    /**
     * @var array Validation rules
     */   
    public $rules = [
        'carousel_id' => 'required',
//        'image' => 'required|image',
    ];  
       
    public $attachOne = [
        'image' => 'System\Models\File'
    ];

    public function getThumbAttribute()
    {
        return $this->image ? $this->image->getThumb(320, 115) : null;
    }    
    
    public function getImageMediumAttribute()
    {
        return $this->image ? $this->image->getThumb(1024, false, 'auto') : null;
    }    
    
    public function getImageSmallAttribute()
    {
        return $this->image ? $this->image->getThumb(640, false, 'auto') : null;
    }    

    public function getImagePathAttribute()
    {
        if (!$this->image) return null;

//        if ($this->carousel->do_resize && class_exists('\ToughDeveloper\ImageResizer\Classes\Image')) {
//            $image = new \ToughDeveloper\ImageResizer\Classes\Image($this->image->getPath());
//            $image->resize($this->carousel->image_width, $this->carousel->image_height, ['mode' => 'crop']);
//
//            return $image;
//        } else {
            return $this->image->getPath();
//        }
    }    
    
    /**
     * Allows filtering for specific categories.
     * @param  Illuminate\Query\Builder  $query      QueryBuilder
     * @param  array                     $categories List of category ids
     * @return Illuminate\Query\Builder              QueryBuilder
     */
    public function scopeFilterCarousel($query, $categories)
    {
        return $query->whereHas('carousel', function($q) use ($categories) {
            $q->whereIn('id', $categories);
        });
    }        

}
