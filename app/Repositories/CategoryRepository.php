<?php

namespace App\Repositories;

use App\Models\Category;
use App\BO\CategoryBo;
use App\Repositories\Contracts\CategoryRepositoryInterface;

class CategoryRepository implements CategoryRepositoryInterface
{
    public function getAll()
    {
        return Category::with('children')->get();
    }
}
