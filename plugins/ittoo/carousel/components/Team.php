<?php namespace Ittoo\Carousel\Components;

use Cms\Classes\ComponentBase;
use App;

class Team extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Team Member',
            'description' => 'Displays a collection of team member profile images'
        ];
    }
    
    public function defineProperties()
    {
        return [
            'title' => [
                'title' => 'Title',
                'description' => 'Title displayed above the logos',
                'type' => 'string',
            ]
        ];
    }
    

    public function team()
    {
        return \Ittoo\Carousel\Models\Team::orderBy('sort_order')->get();
    }
}
