<?php namespace Ittoo\Carousel\Models;

use Model;
use October\Rain\Database\Traits\SoftDelete as SoftDeleteTrait;
use October\Rain\Database\Traits\Sortable as SortableTrait;
use October\Rain\Database\Traits\Validation as ValidationTrait;

/**
 * Carousel Model
 */
class Carousel extends Model
{
//    use SoftDeleteTrait;
//    use SortableTrait;
    use ValidationTrait;
    
    /**
     * @var string The database table used by the model.
     */
    public $table = 'ittoo_carousel_carousels';
    
    public $hasMany = [
        'slides' => [
            'Ittoo\Carousel\Models\Slide',
            'table' => 'ittoo_carousel_slides',
        ]
    ];    

    /**
     * @var array Validation rules
     */    public $rules = [
        'name' => 'required',
        'image_height' => 'required|integer',
//        'interval' => 'required|integer|min:100',
        'with_controls' => 'boolean',
        'with_indicators' => 'boolean',
//        'has_keyboard_react' => 'boolean',
//        'has_hover_pause' => 'boolean',
//        'has_autoplays' => 'boolean',
//        'has_continuously_cycle' => 'boolean',
    ];    
       
}
