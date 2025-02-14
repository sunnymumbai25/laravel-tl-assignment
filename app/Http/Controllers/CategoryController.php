<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\CategoryRepositoryInterface;
use App\Http\Requests\CategoryRequest;
use App\Repositories\Contracts\ProductRepositoryInterface;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    // Dependency injection of the CategoryRepositoryInterface
    private $categoryRepository;

    // Constructor to inject the CategoryRepositoryInterface dependency
    public function __construct(CategoryRepositoryInterface $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    // Method to handle the request to get all categories
    public function index(Request $request)
    {
        // Retrieve all categories from the repository
        $categories = $this->categoryRepository->getAll();

        // Return a JSON response with the retrieved categories
        return response()->json([
            'status' => 'success', // Status of the response
            'data' => [
                'categories' => $categories // Retrieved categories data
            ],
            'message' => 'Categories retrieved successfully.' // Response message
        ], 200); // HTTP status code 200 OK
    }
}
