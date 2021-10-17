<?php namespace Ittoo\Carousel\Models;

use Model;
use October\Rain\Database\Traits\SoftDelete as SoftDeleteTrait;
use October\Rain\Database\Traits\Validation as ValidationTrait;

/**
 * Carousel Model
 */
class Team extends Model
{
//    use SoftDeleteTrait;
    use ValidationTrait;
    use \October\Rain\Database\Traits\Sortable;
//    use \October\Rain\Database\Traits\NestedTree;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'ittoo_team';

    /**
     * @var array Validation rules
     */
    public $rules = [
        'name' => 'required',
//        'image' => 'required|image',
    ];

    public $attachOne = [
        'image' => 'System\Models\File'
    ];
    
    public function getThumbAttribute()
    {
        return $this->image ? $this->image->getThumb(140, 140, 'fit') : null;
    }
    
    public function getResizedImage()
    {
        return $this->image ? $this->image->getThumb(280, 280, 'fit') : null;
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
}
