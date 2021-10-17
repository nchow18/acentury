<?php namespace Ittoo\Carousel\Components;

use Cms\Classes\ComponentBase;
use App;

class Logos extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Logos',
            'description' => 'Displays a collection of logos'
        ];
    }
    
    public function defineProperties()
    {
        return [
            'title' => [
                'title' => 'Title',
                'description' => 'Title displayed above the logos',
                'type' => 'string',
            ],
            'carousel' => [
                'title'       => 'Category',
                'type'        => 'dropdown',
                'default'     => '7',
                'required' => true
            ]            
        ];
    }
    
    public function getCarouselOptions() {
        return \Ittoo\Carousel\Models\Carousel::orderBy('name')->lists('name', 'id');
    }
    

    public function logos()
    {
        $carousel = $this->property('carousel');
        return \Ittoo\Carousel\Models\Logo::whereHas('carousel', function($q) use ($carousel) {
            $q->where('id', $carousel);
        })->orderBy('sort_order')->get();
    }
}
