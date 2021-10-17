<?php namespace Ittoo\Carousel\Components;

use Cms\Classes\ComponentBase;
use App;
use Ittoo\Carousel\classes\Region;

class Popup extends ComponentBase
{
    public $carousel;
    protected $region;
    protected $enabled;
    
    public function componentDetails()
    {
        return [
            'name'        => 'Popup',
            'description' => 'In-page poup'
        ];
    }

    public function defineProperties()
    {
        return [
            'id' => [
                'title' => 'Popup ID',
                'type' => 'string',
                'required' => true,
                'description' => 'Storage name. Allow letters, digitals and underscore only, without space',
                'validationPattern' => '^[0-9a-zA-Z\_]+$',
                'validationMessage' => 'The popup "Name" property must contain letters, digitals and underscore only'
            ],
            'delay' => [
                'title' => 'Delay (in seconds)',
                'type' => 'string',
                'default' => 5,
                'required' => true,
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'The popup "Delay" property must be integer'
            ],
            'reset' => [
                'title' => 'Reset (in seconds)',
                'type' => 'string',
                'default' => 7200,
                'required' => true,
                'description' => 'Period of time the popup will closed',
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'The popup "Reset" property must be integer'
            ],
            'block' => [
                'title' => 'Partial Block File Name',
                'type' => 'string',
                'required' => true,
            ]
        ];
    }
     

    public function onRun()
    {
        $this->enabled = (null === $this->page['ito_popup'])? true : $this->page['ito_popup'];
    }

    public function onRender() 
    {		
        $this->setProperty('enabled', $this->enabled); 
    }
}
