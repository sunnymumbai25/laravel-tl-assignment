<?php

namespace Tests\Feature;

use App\Models\Product;
use App\Repositories\Contracts\ProductRepositoryInterface;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Mockery;
use Tests\TestCase;


class ProductControllerTest extends TestCase
{

    public function testShow()
    {
        $response = $this->getJson('/api/v1/products/1');  // Use $product->id
        $response->assertStatus(200);
    }

    public function testIndex()
    {

        $response = $this->getJson('/api/v1/products'); // Add /api/v1/

        $response->assertStatus(200);
    }

    public function testStore()
    {
        $productData = [
            'name' => 'Smartphone X',
            'description' => 'Latest model with advanced features.',
            'sku' => 'SMX1' . rand(),
            'price' => 1299.99,
            'category_id' => 1,
        ];

        $response = $this->postJson('/api/v1/products', $productData); // Add /api/v1/

        $response->assertStatus(201);
    }
}
