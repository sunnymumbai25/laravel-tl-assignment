<?php

namespace App\Repositories;

use App\Models\Category;

class CategoryRepository implements CategoryRepositoryInterface {
    public function getAll() {
        return Category::with('children')->get();
    }
}
