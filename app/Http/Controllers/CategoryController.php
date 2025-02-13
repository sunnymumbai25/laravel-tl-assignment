<?php

namespace App\Http\Controllers;

use App\Repositories\CategoryRepositoryInterface;

class CategoryController extends Controller
{
    private $categoryRepository;

    public function __construct(CategoryRepositoryInterface $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    public function index()
    {
        $categories = $this->categoryRepository->getAll();
        return response()->json([
            'status' => 'success',
            'data' => [
                'categories' => $categories
            ],
            'message' => 'Categories retrieved successfully.'
        ], 200);
    }
}
