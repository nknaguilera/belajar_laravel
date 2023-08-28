<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        

        // User::create([
        //     'name' => 'ara',
        //     'email' => 'ara@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'zidan',
        //     'email' => 'zidan@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
        
        User::factory(3)->create();

        Category::create([
            'name' => ' Web Programming',
            'slug' => 'web-programming'         
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'         
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit. Consequatur repellendus quae sed, perferendis corporis veritatis expedita optio explicabo provident. Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit, inventore nesciunt distinctio impedit magnam voluptas?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit. Consequatur repellendus quae sed, perferendis corporis veritatis expedita optio explicabo provident. Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit, inventore nesciunt distinctio impedit magnam voluptas?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit. Consequatur repellendus quae sed, perferendis corporis veritatis expedita optio explicabo provident. Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit, inventore nesciunt distinctio impedit magnam voluptas?',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit. Consequatur repellendus quae sed, perferendis corporis veritatis expedita optio explicabo provident. Atque molestias quisquam nemo quam, ab optio a eum inventore voluptatum nam voluptates quod quia doloribus ullam eaque neque animi, fugiat facilis molestiae eius! Nemo, facere. Vitae excepturi, nostrum, dolore cupiditate quaerat dolorum odit, inventore nesciunt distinctio impedit magnam voluptas?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

    }
}
