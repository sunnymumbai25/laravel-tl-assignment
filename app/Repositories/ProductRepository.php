<?php

namespace App\Repositories;

use App\Models\Product;

class ProductRepository implements ProductRepositoryInterface
{
    public function getAll() {
        return Product::paginate(1);
    }

    public function getById($id) {
        return Product::findOrFail($id);
    }

    public function create(array $data) {
        return Product::create($data);
    }

    public function update($id, array $data) {
        $product = Product::findOrFail($id);

        $product->update($data);
        return $product;
    }

    public function delete($id) {
        $product = Product::findOrFail($id);
        $product->delete();
        return $product;
    }
    
}
