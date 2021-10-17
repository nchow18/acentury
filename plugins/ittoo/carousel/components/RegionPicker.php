<?php namespace Ittoo\Carousel\Components;

use Cms\Classes\ComponentBase;
use Redirect;
use App;
use Ittoo\Carousel\classes\Region;

class RegionPicker extends ComponentBase
{
    public $region;
    public $show = true;
    
    public function componentDetails()
    {
        return [
            'name'        => 'Region Picker',
            'description' => 'Displays region picker'
        ];
    }
    
    public function defineProperties()
    {
        return [
        ];
    }
    
    public function init()
    {
        $this->region = Region::instance();
    }
    
    public function onRun()
    {
        if (null !== $this->region->getCookieRegion()) {
            $this->show = false;
        }
    }
    
    public function onDismiss() 
    {
        $this->region->setCookieRegion($this->region->getRegion());
    }
    
    public function onChange() {
        $region = post('region-switcher');
        $this->region->setCookieRegion($region);
        
        $url = '/'.$region.'/'.$this->getRouter()->getUrl();
        if ($query = request()->query()) {
            $url .= '?'.http_build_query($query);
        }
        return Redirect::to($url);             
    }
}
