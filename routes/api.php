<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;

// API Versioning - Group routes under /api/v1/
Route::prefix('v1')->group(function() {
    Route::get('products', [ProductController::class, 'index']);
    Route::get('products/{id}', [ProductController::class, 'show']);
    Route::post('products', [ProductController::class, 'store']);
    Route::put('products/{id}', [ProductController::class, 'update']);
    Route::delete('products/{id}', [ProductController::class, 'destroy']);
    Route::get('categories', [CategoryController::class, 'index']);
})->middleware('auth:sanctum');



// curl --location 'http://localhost:8000/api/v1/products' \
// --header 'Content-Type: application/json' \
// --header 'Accept: application/json' \
// --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
// --data '{
//            "name": "Sample Product",
//            "description": "This is a sample product description.",
//            "sku": "SKU123456",
//            "price": 99.99,
//            "category_id": 1
//          }'

// curl --location 'http://localhost:8000/api/v1/categories'


// curl --location --request DELETE 'http://localhost:8000/api/v1/products/1'



// curl --location --request PUT 'http://localhost:8000/api/v1/products/2' \
// --header 'Content-Type: application/json' \
// --header 'Accept: application/json' \
// --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
// --data '{
//            "name": "Sample Product",
//            "description": "This is a sample product description.",
//            "sku": "SKU123434",
//            "price": 99.99,
//            "category_id":2
//          }'

// curl --location 'http://localhost:8000/api/v1/products'


// curl --location 'http://localhost:8000/api/v1/products?page=2'

// curl --location 'http://localhost:8000/api/v1/categories'