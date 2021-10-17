<?php namespace Ittoo\Carousel\Components;

use Cms\Classes\ComponentBase;
use App;
use Ittoo\Carousel\classes\Region;

class ThreeCols extends ComponentBase
{
    public $carousel;
    protected $region;
    
    public function componentDetails()
    {
        return [
            'name'        => '3 Column Block',
            'description' => 'Show blocks in 3 columns'
        ];
    }

    public function defineProperties()
    {
        return [
            'carousel' => [
                'title' => 'Carousel',
                'description' => 'Name of the carousel to display.',
                'type' => 'dropdown',
                'required' => true,
            ],
            'filterRegion' => [
                'title' => 'Filter Region',
                'description' => 'Filter by current region',
                'type' => 'checkbox',
                'default' => 0
            ],
            'centerTitle' => [
                'title' => 'Center Title',
                'description' => 'Center the title',
                'type' => 'checkbox',
                'default' => 0
            ],
            'centerCTA' => [
                'title' => 'Center button',
                'description' => 'Center the CTA button',
                'type' => 'checkbox',
                'default' => 0
            ]
        ];
    }

    public function init()
    {
        $this->region = Region::instance();
    }
        
    public function getCarouselOptions()
    {
        return \Ittoo\Carousel\Models\Carousel::orderBy('name')
            ->get(['id', 'name'])
            ->lists('name', 'id');
    }
    
    public function onRun() {
        $this->loadCarousel();
    }
            
    public function loadCarousel()
    {
        if ($this->property('filterRegion')) {
            $currentRegion = $this->region->getRegion();            
            
            $this->carousel = \Ittoo\Carousel\Models\Carousel::with([
                'slides' => function ($query) use  ($currentRegion){
                    $query
                            ->join('ittoo_carousel_slide_tag', 'ittoo_carousel_slides.id', '=', 'ittoo_carousel_slide_tag.slide_id')
                            ->join('ittoo_blog_tags', 'ittoo_carousel_slide_tag.tag_id', '=', 'ittoo_blog_tags.id')
                            ->where('ittoo_blog_tags.slug', '=', $currentRegion)
                            ->orderBy('ittoo_carousel_slides.sort_order')->orderBy('ittoo_carousel_slides.id')
                            ->select('ittoo_carousel_slides.*')
                            ->where('ittoo_carousel_slides.enabled', true)
                            ;
                }
            ])->find($this->property('carousel'));
        
        } else {
            $this->carousel = \Ittoo\Carousel\Models\Carousel::with([
                'slides' => function ($query) {
                    $query
                            ->where('enabled', true)
                            ->orderBy('sort_order')
                            ->orderBy('id');
                }
            ])->find($this->property('carousel'));
        }
    }
  
}
