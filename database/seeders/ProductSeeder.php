<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('products')->insert([
            [
                'name' => 'Hoodsy',
                'description' => 'This is a sample product description.',
                'sku' => 'SK611512',
                'price' => 919.99,
                'category_id' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Smartphone X',
                'description' => 'Latest model with advanced features.',
                'sku' => 'SMX123456',
                'price' => 1299.99,
                'category_id' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Wireless Headphones',
                'description' => 'Noise-canceling, high-quality audio.',
                'sku' => 'WH998877',
                'price' => 299.99,
                'category_id' => 3,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }
}
