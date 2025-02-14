<?php

namespace App\Repositories\Contracts;

use App\BO\ProductBO;

interface ProductRepositoryInterface
{
    public function getAll($categoryId = null, $search = null, $perPage = 10);
    public function getById($id);
    public function create(ProductBO $productBO);
    public function update($id, ProductBO $productBO);
    public function delete($id);
}
