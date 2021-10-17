<?php namespace Ittoo\Carousel;

use Backend;
use Event;
use System\Classes\PluginBase;
use Ittoo\Carousel\Models\Tag;
use RainLab\Blog\Models\Post as PostModel;

/**
 * Testimonials Plugin Information File
 */
class Plugin extends PluginBase
{
     public $require = ['Rainlab.Blog'];


    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails()
    {
        return [
            'name'        => 'Acentury',
            'description' => 'Sliders, Logos, Team, Popup',
            'author'      => 'Dream Studio 9',
            'icon'        => 'icon-film'
        ];
    }

    /**
     * Register method, called when the plugin is first registered.
     *
     * @return void
     */
    public function register()
    {

    }


    /**
     * Registers any front-end components implemented in this plugin.
     *
     * @return array
     */
    public function registerComponents()
    {
        return [
            'Ittoo\Carousel\Components\Carousel' => 'carousel', // altSection
            'Ittoo\Carousel\Components\ThreeCols' => 'threeCols', 
            'Ittoo\Carousel\Components\Banner' => 'banner',
            'Ittoo\Carousel\Components\Logos' => 'logos',
            'Ittoo\Carousel\Components\RegionPosts' => 'regionPosts',
            'Ittoo\Carousel\Components\LatestPost' => 'latestPost',
            'Ittoo\Carousel\Components\Team' => 'team',
            'Ittoo\Carousel\Components\RegionPicker' => 'regionPicker',
            'Ittoo\Carousel\Components\RegionSwitcher' => 'regionSwitcher',
            'Ittoo\Carousel\Components\Popup' => 'popup',
        ];
    }

    /**
     * Registers any back-end permissions used by this plugin.
     *
     * @return array
     */
    public function registerPermissions()
    {

        return [
            'ittoo.carousel.manage_carousels' => [
                'tab'   => 'Acentury',
                'label' => 'Manage Carousels'
            ],
            'ittoo.carousel.manage_slides' => [
                'tab'   => 'Acentury',
                'label' => 'Manage Slides'
            ],
            'ittoo.carousel.manage_logos' => [
                'tab'   => 'Acentury',
                'label' => 'Manage Logos'
            ],
            'ittoo.carousel.manage_team' => [
                'tab'   => 'Acentury',
                'label' => 'Manage Team'
            ],
        ];
    }

    /**
     * Registers back-end navigation items for this plugin.
     *
     * @return array
     */
    public function registerNavigation()
    {
        return [
            'carousel' => [
                'label'       => 'Acentury',
                'icon'        => 'icon-film',
                'url'         => Backend::url('ittoo/carousel/slides'),
                'permissions' => ['ittoo.carousel.*'],
                'sideMenu' => [
                    'Carousels' => [
                        'label'       => 'Categories',
                        'icon'        => 'icon-ellipsis-h',
                        'url'          => Backend::url('ittoo/carousel/carousels'),
                        'permissions'  => ['ittoo.carousel.manage_carousels'],
                    ],
                    'Slides' => [
                        'label'        => 'Slides',
                        'icon'         => 'icon-picture-o',
                        'url'          => Backend::url('ittoo/carousel/slides'),
                        'permissions'  => ['ittoo.carousel.manage_slides'],
                    ],
                    'Logos' => [
                        'label'       => 'Logos',
                        'icon'        => 'icon-th',
                        'url'          => Backend::url('ittoo/carousel/logos'),
                        'permissions'  => ['ittoo.carousel.manage_logos'],
                    ],
                    'Team' => [
                        'label'       => 'Team',
                        'icon'        => 'icon-address-book',
                        'url'          => Backend::url('ittoo/carousel/team'),
                        'permissions'  => ['iittoo.carousel.manage_team'],
                    ],
                ]
            ]
        ];
    }
    
//    public function registerPageSnippets()
//    {
//        return [
//           '\Ittoo\Carousel\Components\Logos' => 'logos',
//           '\Ittoo\Carousel\Components\Carousel' => 'carousel'
//        ];
//    }    
    
    /**
     * Add banner to CMS Page
     */
    public function boot() 
    {
        $this->extendRainlabPost();
        $this->extendRainlabPostModel();
//        Event::listen('backend.form.extendFieldsBefore', function($widget) {            
//            if (
//                    !$widget->getController() instanceof \Cms\Controllers\Index ||
//                    !$widget->model instanceof \Cms\Classes\Page
//            ) {
//                return;
//            }
//            $widget->addTabFields([
//                'viewBag[hero_title]' => [
//                    'label' => 'Banner Title',
//                    'tab' => 'Hero'
//                ],
//
//            ]);
//            
//        });
    }
    
    protected function extendRainlabPost() {
        Event::listen('backend.form.extendFields', function($widget) {            
            if (
                    !$widget->getController() instanceof \RainLab\Blog\Controllers\Posts ||
                    !$widget->model instanceof \RainLab\Blog\Models\Post
            ) {
                return;
            }
            
            // featured
            $widget->addSecondaryTabFields([
                'featured' => [
                    'label' => 'Featured post',
                    'type' => 'switch',
                    'tab' => 'rainlab.blog::lang.post.tab_manage'
                ],
            ]);
            
            // tags
//            $widget->model->belongsToMany['tags'] = [
//                Tag::class,
//                'table' => Tag::CROSS_REFERENCE_TABLE_NAME,
//                'order' => 'name'
//            ];
            
            $widget->addSecondaryTabFields([
                'tags' => [
                    'label' => 'Select Region',
                    'type' => 'relation',
                    'tab' => 'rainlab.blog::lang.post.tab_categories',
                ],
            ]);
            
//            $widget->model->addDynamicMethod('scopeListRegionFrontEnd', function($query, $options) {
//                return $query;
//            });
//            
        });        
    }

    protected function extendRainlabPostModel() { 
        PostModel::extend(function($model) {
            $model->belongsToMany['tags'] = [
                Tag::class,
                'table' => Tag::CROSS_REFERENCE_TABLE_NAME,
                'order' => 'name'
            ];
            
            $model->addDynamicMethod('scopeListRegionFrontEnd', function($query, $options) {
            extract(array_merge([
                'page'             => 1,
                'perPage'          => 30,
                'sort'             => 'created_at',
                'categories'       => null,
                'exceptCategories' => null,
                'category'         => null,
                'search'           => '',
                'published'        => true,
                'exceptPost'       => null,
                'tag'              => null
            ], $options));

            $searchableFields = ['title', 'slug', 'excerpt', 'content'];

            if ($published) {
                $query->isPublished();
            }

            /*
             * Except post(s)
             */
            if ($exceptPost) {
                $exceptPosts = (is_array($exceptPost)) ? $exceptPost : [$exceptPost];
                $exceptPostIds = [];
                $exceptPostSlugs = [];

                foreach ($exceptPosts as $exceptPost) {
                    $exceptPost = trim($exceptPost);

                    if (is_numeric($exceptPost)) {
                        $exceptPostIds[] = $exceptPost;
                    } else {
                        $exceptPostSlugs[] = $exceptPost;
                    }
                }

                if (count($exceptPostIds)) {
                    $query->whereNotIn('id', $exceptPostIds);
                }
                if (count($exceptPostSlugs)) {
                    $query->whereNotIn('slug', $exceptPostSlugs);
                }
            }

            /*
             * Sorting
             */
            if (in_array($sort, array_keys(PostModel::$allowedSortingOptions))) {
                if ($sort == 'random') {
                    $query->inRandomOrder();
                } else {
                    @list($sortField, $sortDirection) = explode(' ', $sort);

                    if (is_null($sortDirection)) {
                        $sortDirection = "desc";
                    }

                    $query->orderBy($sortField, $sortDirection);
                }
            }

            /*
             * Search
             */
            $search = trim($search);
            if (strlen($search)) {
                $query->searchWhere($search, $searchableFields);
            }

            /*
             * Categories
             */
            if ($categories !== null) {
                $categories = is_array($categories) ? $categories : [$categories];
                $query->whereHas('categories', function($q) use ($categories) {
                    $q->whereIn('id', $categories);
                });
            }

            /*
             * Except Categories
             */
            if (!empty($exceptCategories)) {
                $exceptCategories = is_array($exceptCategories) ? $exceptCategories : [$exceptCategories];
                array_walk($exceptCategories, 'trim');

                $query->whereDoesntHave('categories', function ($q) use ($exceptCategories) {
                    $q->whereIn('slug', $exceptCategories);
                });
            }

            /*
             * Category, including children
             */
            if ($category !== null) {
                $category = \RainLab\Blog\Models\Category::find($category);

                $categories = $category->getAllChildrenAndSelf()->lists('id');
                $query->whereHas('categories', function($q) use ($categories) {
                    $q->whereIn('id', $categories);
                });
            }

            /*
             * Blog Tag (Region)
             */ 
            if ($tag !== null) {
                $query->whereHas('tags', function($q) use ($tag) {
                   $q->where('slug', $tag);
                });
            }
            

            return $query->paginate($perPage, $page);                
            });
        });
    }
}