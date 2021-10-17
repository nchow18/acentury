<?php namespace Ittoo\Carousel\classes;

use Request;
use Session;
use Illuminate\Support\Facades\Cookie;

Class Region {
    use \October\Rain\Support\Traits\Singleton;
    
    const COOKIE_REGION = 'acentury_region';
    public $cookieExpiry = 24 * 60;
    
    protected $defaultRegion = 'ca';
    protected $currentRegion = 'ca';
    protected $availableRegion = [
        'ca'=>'Canada', 
        'us'=>'U.S and South America', 
        '00'=>'International'
        ]; // load from blog tag
    
    public function getRegion() {
        $this->loadRegionFromRequest();
        
        return $this->currentRegion;
    }
    
    public function setRegion($region) 
    {
        if ($this->isValidRegion($region)) {
            $this->currentRegion = $region;
        }
        
        return true;
    }
        
    public function loadRegionFromRequest($default=null)
    {
        $region = Request::segment(1);
        
        if (!$this->isValidRegion($region)) {
            return $default;
        }
        
        $this->setRegion($region);
    }
    
    public function getCookieRegion() {
        return Cookie::get(SELF::COOKIE_REGION);
    }
    
    public function setCookieRegion($regionCode) 
    {
        Cookie::queue(SELF::COOKIE_REGION, 
                $regionCode, 
                $this->cookieExpiry, 
                '/', // path
                null, // domain
                request()->isSecure(), // https
                true, // http only
                false, // raw
                'strict' // same site
                );
    }
    
    public function getDefaultRegion(): string
    {
        return $this->defaultRegion;
    }
    
    public function getAvailableRegions(): array {
        return $this->availableRegion;
    }
    
    public function isValidRegion($locale): bool 
    {
        return in_array($locale, array_keys($this->availableRegion));
    }
}



