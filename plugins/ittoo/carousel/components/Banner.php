<?php namespace Ittoo\Carousel\Components;

use Cms\Classes\ComponentBase;
use App;
use Ittoo\Carousel\Models\Slide;

class Banner extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Banner',
            'description' => 'Show a banner to your page'
        ];
    }

    public function defineProperties()
    {
        return [
            'slide' => [
                'title' => 'Banner',
                'description' => 'Title of the banner',
                'type' => 'dropdown',
//                'required' => true,
            ]
        ];
    }

    public function getSlideOptions()
    {   
        return Slide::whereHas('carousel',function($query) {
                        $query
                                ->where('name', 'Hero')
                                ->where('enabled', true);
                })
                ->get(['id', 'caption'])
                ->lists('caption', 'id');
    }
    
    public function slide()
    {
        return Slide::where('id', $this->property('slide'))
                ->where('enabled', true)
                ->first();
//        return Slide::find($this->property('slide'));
    }
  
}
