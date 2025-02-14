<?php

namespace App\Repositories;

use App\Models\Product;
use App\BO\ProductBO;
use Illuminate\Support\Facades\Cache;
use App\Repositories\Contracts\ProductRepositoryInterface;

class ProductRepository implements ProductRepositoryInterface
{
    public function getAll($categoryId = null, $search = null, $perPage = 10)
    {

        $cacheKey = "products_{$categoryId}_{$search}_{$perPage}_" . request()->get('page', 1);

        return Cache::remember($cacheKey, now()->addMinutes(10), function () use ($categoryId, $search, $perPage) {
            $query = Product::query();

            if ($categoryId) {
                $query->where('category_id', $categoryId);
            }

            if ($search) {
                $query->where(function ($q) use ($search) {
                    $q->where('name', 'LIKE', "%$search%")
                        ->orWhere('description', 'LIKE', "%$search%");
                });
            }

            $paginated = $query->paginate($perPage);

            // Get the collection of products
            $productsCollection = collect($paginated->items());

            // Convert each model to a BO
            $productsBO = $productsCollection->map(function ($product) {
                return $this->convertModelToBO($product);
            });

            // Replace the items with the mapped collection
            $paginated->setCollection($productsBO);

            return $paginated;
        });
    }

    private function convertModelToBO(Product $product)
    {
        return new ProductBO(
            $product->id,
            $product->name,
            $product->description,
            $product->sku,
            $product->price,
            $product->category_id,
            $product->created_at,
            $product->updated_at
        );
    }

    public function getById($id)
    {
        return Cache::remember("product_{$id}", now()->addMinutes(10), function () use ($id) {
            $product = Product::findOrFail($id);
            return $this->convertModelToBO($product);
        });
    }
    public function create(ProductBO $productBO)
    {
        $data = $this->convertBOToArray($productBO);
        $model = new Product();
        $model->fill($data);
        $model->save();
        Cache::forget('products_*'); // Invalidate cache
        return $model;
    }

    public function update($id, ProductBO $productBO)
    {
        $data = $this->convertBOToArray($productBO);
        $model = Product::findOrFail($id);
        $model->fill($data);
        $model->save();
        Cache::forget("product_{$id}");
        Cache::forget('products_*'); // Invalidate cache
        return $this->convertModelToBO($model);
    }

    public function delete($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();
        Cache::forget("product_{$id}");
        Cache::forget('products_*'); // Invalidate cache
        return $this->convertModelToBO($product);
    }
    private function convertBOToArray(ProductBO $productBO)
    {
        return [
            'id' => $productBO->id,
            'name' => $productBO->name,
            'description' => $productBO->description,
            'sku' => $productBO->sku,
            'price' => $productBO->price,
            'category_id' => $productBO->category_id,
            'created_at' => $productBO->created_at,
            'updated_at' => $productBO->updated_at,
        ];
    }
}
