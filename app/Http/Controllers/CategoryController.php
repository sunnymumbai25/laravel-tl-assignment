<?php

namespace App\Http\Controllers;

use App\Repositories\CategoryRepositoryInterface;

class CategoryController extends Controller {
    private $categoryRepository;

    public function __construct(CategoryRepositoryInterface $categoryRepository) {
        $this->categoryRepository = $categoryRepository;
    }

    public function index() {
        return response()->json($this->categoryRepository->getAll(), 200);
    }
}