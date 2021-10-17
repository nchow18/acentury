<?php namespace Ittoo\Carousel\Models;

use Model;
use October\Rain\Database\Traits\SoftDelete as SoftDeleteTrait;
use October\Rain\Database\Traits\Validation as ValidationTrait;

/**
 * Carousel Model
 */
class Logo extends Model
{
//    use SoftDeleteTrait;
    use ValidationTrait;
    use \October\Rain\Database\Traits\Sortable;
//    use \October\Rain\Database\Traits\NestedTree;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'ittoo_carousel_logos';
    
    public $belongsTo = [
        'carousel' => [
            'Ittoo\Carousel\Models\Carousel',
            'table' => 'ittoo_carousel_carousels',
        ]
    ];           

    /**
     * @var array Validation rules
     */
    public $rules = [
        'name' => 'required',
        'image' => 'required|image',
    ];

    public $attachOne = [
        'image' => 'System\Models\File'
    ];
    
    public function getCarouselLogo()
    {
        return $this->image ? $this->image->getThumb(150, 30, 'portrait') : null;
//        return $this->image ? $this->image->resize(null, 30, ['mode' => 'landscape']) : null;
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
     * Allows filtering for specifc categories.
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
