<?php namespace Ittoo\Carousel\Components;

use Ittoo\Carousel\classes\Region;

class RegionSwitcher extends RegionPicker
{
    public $region;
    public $show = true;
    
    public function componentDetails()
    {
        return [
            'name'        => 'Region Switcher',
            'description' => 'Change region'
        ];
    }
    
    public function onRun()
    {
    }
    

}
