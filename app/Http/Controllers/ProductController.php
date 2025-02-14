<?php

namespace App\Http\Controllers;

use App\BO\ProductBO;
use App\Models\Product;
// use App\Repositories\ProductRepositoryInterface;
use App\Http\Requests\ProductRequest;
use App\Repositories\Contracts\ProductRepositoryInterface;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    // Dependency injection of the ProductRepositoryInterface
    private $productRepository;

    // Constructor to inject the ProductRepositoryInterface dependency
    public function __construct(ProductRepositoryInterface $productRepository)
    {
        $this->productRepository = $productRepository;
    }
    /**
     * Display a listing of the products.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // Get query parameters for category_id and search
        $categoryId = $request->query('category_id');
        $search = $request->query('search');

        // Retrieve products from the repository with pagination
        $products = $this->productRepository->getAll($categoryId, $search, 10);

        // Return a JSON response with the retrieved products and pagination info
        return response()->json([
            'status' => 'success',
            'data' => [
                'products' => $products->items(),
                'pagination' => [
                    'total' => $products->total(),
                    'count' => $products->count(),
                    'per_page' => $products->perPage(),
                    'current_page' => $products->currentPage(),
                    'total_pages' => $products->lastPage(),
                    'links' => [
                        'previous' => $products->previousPageUrl(),
                        'next' => $products->nextPageUrl(),
                    ],
                ],
            ]
        ], 200);
    }

    /**
     * Display the specified product.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        // Validate the product ID
        if (empty($id) || !is_numeric($id)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Product ID.'
            ], 400); // HTTP status code 400 Bad Request
        }
        // Retrieve the product from the repository by ID
        $product = $this->productRepository->getById($id);
        if ($product) {
            // Return a JSON response with the retrieved product
            return response()->json([
                'status' => 'success',
                'data' => [
                    'product' => $product
                ]
            ], 200);
        } else {
            // Return a JSON response indicating the product was not found
            return response()->json([
                'status' => 'error',
                'message' => 'Product not found.'
            ], 404); // HTTP status code 404 Not Found
        }
    }

    /**
     * Store a newly created product in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(ProductRequest $request)
    {

        try {
            if (!$request->isMethod('post')) {
                return response()->json([
                    'message' => 'Invalid request.',
                ], 405);
            }
            // Create a ProductBO object with the request data
            $productBO = new ProductBO(
                null,
                $request->name,
                $request->description,
                $request->sku,
                $request->price,
                $request->category_id,
            );

            // Create the product in the repository
            $product = $this->productRepository->create($productBO);

            // Return a JSON response indicating the product was created successfully
            return response()->json([
                'status' => 'success',
                'message' => 'Product created successfully',
                'data' => [
                    'product' => $product
                ]
            ], 201); // HTTP status code 201 Created

        } catch (\Exception $e) {
            // Return a JSON response indicating an unexpected error occurred
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred while creating the product.'
            ], 500); // HTTP status code 500 Internal Server Error
        }
    }


    /**
     * Update the specified product in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, $id)
    {
        if (!$request->isMethod('put')) {
            return response()->json([
                'message' => 'Invalid request.',
            ], 405);
        }
        // Validate the product ID
        if (!is_numeric($id)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Product ID.'
            ], 400); // HTTP status code 400 Bad Request
        }
        try {
            // Retrieve the existing product from the repository by ID
            $existingProduct = $this->productRepository->getById($id);

            // Only update provided fields
            $productBO = new ProductBO(
                $id,
                $request->name ?? $existingProduct->name,
                $request->description ?? $existingProduct->description,
                $request->sku ?? $existingProduct->sku,
                $request->price ?? $existingProduct->price,
                $request->category_id ?? $existingProduct->category_id,
                null,
                null
            );

            // Update the product in the repository
            $product = $this->productRepository->update($id, $productBO);

            // Return a JSON response indicating the product was updated successfully
            return response()->json([
                'status' => 'success',
                'message' => 'Product updated successfully',
                'data' => [
                    'product' => $product
                ]
            ], 200); // HTTP status code 200 OK
        } catch (\Exception $e) {
            // Return a JSON response indicating an unexpected error occurred
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred while updating the product.'
            ], 500); // HTTP status code 500 Internal Server Error
        }
    }

    /**
     * Remove the specified product from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Validate the product ID
        if (!$id) {
            return response()->json([
                'status' => 'error',
                'message' => 'Product ID is missing.'
            ], 400); // HTTP status code 400 Bad Request
        }

        try {
            // Delete the product from the repository by ID
            $deleted = $this->productRepository->delete($id);

            if (!$deleted) {
                // Return a JSON response indicating the product was not found or could not be deleted
                return response()->json([
                    'status' => 'error',
                    'message' => 'Product not found or could not be deleted.'
                ], 404); // HTTP status code 404 Not Found
            }
            // Return a JSON response indicating the product was deleted successfully
            return response()->json([
                'status' => 'success',
                'message' => 'Product deleted successfully.'
            ], 200); // HTTP status code 200 OK
        } catch (\Exception $e) {
            // Return a JSON response indicating an unexpected error occurred
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred while deleting the product.'
            ], 500); // HTTP status code 500 Internal Server Error
        }
    }
}
