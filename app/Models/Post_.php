<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

class Post //extends Model
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Ara",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore non quo nihil, nesciunt quam voluptate nam! Placeat illum vero nam eum. Non aut dolorem magnam, maxime inventore eos sequi, odit natus suscipit voluptatum reprehenderit est blanditiis minima, officiis incidunt neque accusantium. Dicta harum reprehenderit minus assumenda sunt commodi tenetur, ipsum, dolorem optio reiciendis accusamus temporibus iure ad saepe laborum eum! Quia esse quasi iusto dolore, dicta, sunt ratione placeat ullam nihil enim sapiente. Maiores sint vel labore at repellendus ab!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Zidan",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam quaerat, nam nulla quos minima hic cum saepe odit vitae itaque sequi obcaecati alias necessitatibus temporibus repudiandae soluta adipisci laudantium atque! Hic deserunt quod voluptatum dolore quos aut repellat velit praesentium perspiciatis natus fugit, illum rem vitae, officia necessitatibus soluta! Deleniti adipisci sint eligendi quas velit incidunt architecto doloremque quam voluptatibus dolorum dolore, est provident veritatis ex impedit corporis pariatur nihil! Voluptatum animi doloremque facilis et quis nobis tenetur ea praesentium laudantium sapiente sequi libero vitae deserunt, voluptatem dolores voluptate excepturi pariatur, corrupti architecto doloribus. Quisquam delectus perferendis ullam atque maiores?"
            ]
        ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
            
        // $post = [];    
        // foreach($posts as $p){
        //     if($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}
