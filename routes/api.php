<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;

Route::group(['prefix' => 'v1', 'middleware' => ['api']], function () { // Throttle here!
    Route::get('products', [ProductController::class, 'index']);
    Route::get('products/{id}', [ProductController::class, 'show']);
    Route::post('products', [ProductController::class, 'store']);
    Route::put('products/{id}', [ProductController::class, 'update']);
    Route::delete('products/{id}', [ProductController::class, 'destroy']);
    Route::get('categories', [CategoryController::class, 'index']);
});

// Fallback route for invalid routes
Route::fallback(function () {
    return response()->json([
        'message' => 'Route not found. Please check the URL and try again.'
    ], 404);
});
