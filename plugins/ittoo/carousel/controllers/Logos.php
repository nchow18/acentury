<?php namespace Ittoo\Carousel\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Slider Back-end Controller
 */
class Logos extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
        'Backend.Behaviors.ListController',
        'Backend.Behaviors.ReorderController'
    ];

    public $formConfig = 'config_form.yaml';
    public $listConfig = 'config_list.yaml';
    public $reorderConfig = 'config_reorder.yaml';
    
    public $requiredPermissions = [
        'ittoo.carousel.manage_logos'
    ];

    public function __construct()
    {
        parent::__construct();

        BackendMenu::setContext('Ittoo.Carousel', 'carousel', 'logos');
    }
}
