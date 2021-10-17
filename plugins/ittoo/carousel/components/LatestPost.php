<?php namespace Ittoo\Carousel\Components;

use RainLab\Blog\Components\Posts;
use RainLab\Blog\Models\Post as BlogPost;
use Ittoo\Carousel\classes\Region;

class LatestPost extends Posts
{
    public function componentDetails()
    {
        return [
            'name'        => 'Latest Post',
            'description' => 'Displays one lastest blog post in defined category'
        ];
    }
    
    public function defineProperties()
    {
        return [
            'categoryFilter' => [
                'title'       => 'rainlab.blog::lang.settings.posts_filter',
                'description' => 'rainlab.blog::lang.settings.posts_filter_description',
                'type'        => 'string',
                'default'     => '',
            ],
            'categoryPage' => [
                'title'       => 'rainlab.blog::lang.settings.posts_category',
                'description' => 'rainlab.blog::lang.settings.posts_category_description',
                'type'        => 'dropdown',
                'default'     => 'blog/category',
                'group'       => 'rainlab.blog::lang.settings.group_links',
            ],
            'postPage' => [
                'title'       => 'rainlab.blog::lang.settings.posts_post',
                'description' => 'rainlab.blog::lang.settings.posts_post_description',
                'type'        => 'dropdown',
                'default'     => 'blog/post',
                'group'       => 'rainlab.blog::lang.settings.group_links',
            ]            
        ];
    }
    
    
    protected function listPosts()
    {
        $category = $this->category ? $this->category->id : null;
        $categorySlug = $this->category ? $this->category->slug : null;

        /*
         * List all the posts, eager load their categories
         */
        $isPublished = !$this->checkEditor();
        $region = Region::instance()->getRegion();

        $posts = BlogPost::with('categories')->listRegionFrontEnd([
            'page'             => ':page',
            'sort'             => 'published_at desc',
            'perPage'          => 1,
            'category'         => $category,
            'published'        => true,
            'tag' => $region
        ]);

        /*
         * Add a "url" helper attribute for linking to each post and category
         */
        $posts->each(function($post) use ($categorySlug) {
            $post->setUrl($this->postPage, $this->controller, ['category' => $categorySlug]);

            $post->categories->each(function($category) {
                $category->setUrl($this->categoryPage, $this->controller);
            });
        });


//        $blogPostComponent = $this->getComponent('blogPost', $this->postPage);
//        $blogPostsComponent = $this->getComponent('blogPosts', $this->categoryPage);
//
//        $posts->each(function ($post) use ($blogPostComponent, $blogPostsComponent) {
//            $post->setUrl(
//                $this->postPage,
//                $this->controller,
//                [
//                    'slug' => $this->urlProperty($blogPostComponent, 'slug')
//                ]
//            );
//
//            $post->categories->each(function ($category) use ($blogPostsComponent) {
//                $category->setUrl(
//                    $this->categoryPage,
//                    $this->controller,
//                    [
//                        'slug' => $this->urlProperty($blogPostsComponent, 'categoryFilter')
//                    ]
//                );
//            });
//        });

        return $posts;
    }    
    
    
}
