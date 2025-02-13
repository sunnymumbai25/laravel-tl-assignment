<?php

namespace App\Http\Controllers;

use App\BO\ProductBO;
use Illuminate\Http\Request;
use App\Repositories\ProductRepositoryInterface;
use App\Http\Requests\ProductRequest;

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
        $products = $this->productRepository->getAll();
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
        if (empty($id) || !is_numeric($id)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Product ID.'
            ], 400);
        }

        $product = $this->productRepository->getById($id);
        if ($product) {
            return response()->json([
                'status' => 'success',
                'data' => [
                    'product' => $product
                ]
            ], 200);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'Product not found.'
            ], 404);
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
        $product = $this->productRepository->create($request->all());
        return response()->json([
            'status' => 'success',
            'message' => 'Product created successfully',
            'data' => [
                'product' => $product
            ]
        ], 201);
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
        if (!is_numeric($id)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Product ID.'
            ], 400);
        }

        $product = $this->productRepository->update($id, $request->all());
        return response()->json([
            'status' => 'success',
            'message' => 'Product updated successfully',
            'data' => [
                'product' => $product
            ]
        ], 200);
    }


    /**
     * Remove the specified product from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        if (!$id) {
            return response()->json([
                'status' => 'error',
                'message' => 'Product ID is missing.'
            ], 400);
        }

        try {
            $deleted = $this->productRepository->delete($id);

            if (!$deleted) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Product not found or could not be deleted.'
                ], 404);
            }

            return response()->json([
                'status' => 'success',
                'message' => 'Product deleted successfully.'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred while deleting the product.'
            ], 500);
        }
    }
}
