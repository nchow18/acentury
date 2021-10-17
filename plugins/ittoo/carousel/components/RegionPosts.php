<?php namespace Ittoo\Carousel\Components;

use RainLab\Blog\Components\Posts as BasePosts;
use RainLab\Blog\Models\Post as BlogPost;
use RainLab\Blog\Models\Category as BlogCategory;
use Ittoo\Carousel\classes\Region;
use App;

class RegionPosts extends BasePosts
{
    public function componentDetails()
    {
        return [
            'name'        => 'Region Blog List',
            'description' => 'Displays current region blog posts'
        ];
    }
    
    
    protected function listPosts()
    { 
        $category = $this->category ? $this->category->id : null; 
        $categorySlug = $this->category ? $this->category->slug : null;
        
        $exceptCategories = is_array($this->property('exceptCategories'))
                ? $this->property('exceptCategories')
                : preg_split('/,\s*/', $this->property('exceptCategories'), -1, PREG_SPLIT_NO_EMPTY);
        
        // if not category is defined, list all except "news". News section always has categroy defined
        if (!$category) {
//            echo $this->getAllCategoriesExceptNews($exceptCategories);
            $category = $this->getAllCategoriesExceptNews($exceptCategories);
        }

        /*
         * List all the posts, eager load their categories
         */
        $isPublished = !$this->checkEditor();
        
        $region = Region::instance()->getRegion();

        $posts = BlogPost::with('categories')->listRegionFrontEnd([
            'page'             => $this->property('pageNumber'),
            'sort'             => $this->property('sortOrder'),
            'perPage'          => $this->property('postsPerPage'),
            'search'           => trim(input('search')),
            'categories'         => $category,
            'category'          => null,
            'published'        => $isPublished,
            'exceptPost'       => is_array($this->property('exceptPost'))
                ? $this->property('exceptPost')
                : preg_split('/,\s*/', $this->property('exceptPost'), -1, PREG_SPLIT_NO_EMPTY),
            'exceptCategories' => $exceptCategories,
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
    
    private function getAllCategoriesExceptNews($exceptCategories) {
        $return = [];
        $categories = BlogCategory::where('slug', '!=', 'news')->get();
                
        foreach($categories as $c) {
            $except = false;
            // remove categories that are in the except; otherwise won't work
            foreach($exceptCategories as $slug) {
                if ($slug == $c->slug) {
                    $except = true;
                    break;
                }
            }
            
            if (!$except) {
                $return[] = $c->id;
            }
        }
        
        return $return;
    }
    
}
