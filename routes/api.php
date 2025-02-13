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

// Fallback route for invalid routes
Route::fallback(function(){
    return response()->json([
        'message' => 'Route not found. Please check the URL and try again.'
    ], 404);
});
