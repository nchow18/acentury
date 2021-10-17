<?php 

use Ittoo\Carousel\classes\Region;

App::before(function($request) 
{
    if (App::runningInBackend()) {
        return;
    }
    
    $region = Region::instance();
    
    $locale = $region->getCookieRegion()?: $region->getRegion($region->getDefaultRegion());
    
    Route::group(['prefix' => $locale, 'middleware' => 'web'], function() {
        Route::any('{slug}', 'Cms\Classes\CmsController@run')->where('slug', '(.*)?');
    });  
    
    Route::any($locale, 'Cms\Classes\CmsController@run')->middleware('web');
    
    Event::listen('cms.route', function() use ($locale) {
        Route::group(['prefix' => $locale, 'middleware' => 'web'], function() {
            Route::any('{slug}', 'Cms\Classes\CmsController@run')->where('slug', '(.*)?');
        });        
    });
});




