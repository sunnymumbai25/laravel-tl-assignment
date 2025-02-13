<?php

namespace App\Http\Controllers;

use App\BO\ProductBO;
use Illuminate\Http\Request;
use App\Repositories\ProductRepositoryInterface;

class ProductController extends Controller
{
    private $productRepository;

    public function __construct(ProductRepositoryInterface $productRepository)
    {
        $this->productRepository = $productRepository;
    }
    /**
     * Display a listing of the products.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json($this->productRepository->getAll(), 200);
    }

    /**
     * Display the specified product.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (empty($id) || !is_numeric($id)) {
            return response()->json(['error' => 'Invalid Product ID.'], 400);
        }

        $product = $this->productRepository->getById($id);
        if ($product) {
            return response()->json($product, 200);
        } else {
            return response()->json(['error' => 'Product not found.'], 404);
        }
    }

    /**
     * Store a newly created product in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function  store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'sku' => 'required|string|unique:products,sku',
            'price' => 'required|numeric',
            'category_id' => 'required|exists:categories,id'
        ]);
        return response()->json($this->productRepository->create($request->all()), 201);
    }
 /**
     * Update the specified product in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (empty($id) || !is_numeric($id)) {
            return response()->json(['error' => 'Invalid Product ID.'], 400);
        }
        $validatedData = $request->validate([
            'name' => 'sometimes|required|string|max:255',
            'description' => 'sometimes|required|string',
            'sku' => 'sometimes|required|string|unique:products,sku,' . $id,
            'price' => 'sometimes|required|numeric|min:0',
            'category_id' => 'sometimes|required|exists:categories,id'
        ]);

        return response()->json($this->productRepository->update($id, $request->all()), 200);
    }

    public function destroy($id)
    {
        if (!$id) {
            return response()->json(['error' => 'Product ID is missing.'], 400);
        }
        
        try {
            $deleted = $this->productRepository->delete($id);
            
            if (!$deleted) {
                return response()->json(['error' => 'Product not found or could not be deleted.'], 404);
            }
    
            return response()->json(['message' => 'Product deleted successfully.'], 200);
            
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred while deleting the product.'], 500);
        }
    }
}
