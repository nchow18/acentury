<?php namespace Ittoo\Carousel\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Slider Back-end Controller
 */
class Carousels extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
        'Backend.Behaviors.ListController',
    ];

    public $formConfig = 'config_form.yaml';
    public $listConfig = 'config_list.yaml';
    
    public $requiredPermissions = [
        'ittoo.carousel.manage_carousels' 
    ];     

    public function __construct()
    {
        parent::__construct();

        BackendMenu::setContext('Ittoo.Carousel', 'carousel', 'carousels');
    }
}
