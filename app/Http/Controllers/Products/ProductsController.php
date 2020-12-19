<?php

namespace App\Http\Controllers\Products;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;

use App\Repositories\ProductRepository;
use App\Repositories\ResponseRepository;
use Illuminate\Http\Response;

class ProductsController extends Controller
{
    public $productRepository;
    public $responseRepository;

    public function __construct(ProductRepository $productRepository, ResponseRepository $rp)
    {
        $this->middleware('auth:api', ['except' => ['indexAll']]);
        $this->productRepository = $productRepository;
        $this->responseRepository = $rp;
    }

    /**
     * @OA\GET(
     *     path="/api/products",
     *     tags={"Products"},
     *     summary="Get Product List",
     *     description="Get Product List as Array",
     *     operationId="index",
     *     @OA\Response(response=200,description="Get Product List as Array"),
     *     @OA\Response(response=400, description="Bad request"),
     *     @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function index()
    {
        try {
            $data = $this->productRepository->getAll();
            return $this->responseRepository->ResponseSuccess($data, 'Product List Fetch Successfully !');
        } catch (\Exception $e) {
            return $this->responseRepository->ResponseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    
    /**
     * @OA\GET(
     *     path="/api/products/view/all",
     *     tags={"Products"},
     *     summary="All Products - Publicly Accessable",
     *     description="All Products - Publicly Accessable",
     *     operationId="indexAll",
     *     @OA\Parameter(name="perPage", description="perPage, eg; 20", example=20, in="query", @OA\Schema(type="integer")),
     *     @OA\Response(response=200, description="All Products - Publicly Accessable" ),
     *     @OA\Response(response=400, description="Bad request"),
     *     @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function indexAll(Request $request)
    {
        try {
            $data = $this->productRepository->getPaginatedData($request->perPage);
            return $this->responseRepository->ResponseSuccess($data, 'Product List Fetched Successfully !');
        } catch (\Exception $e) {
            return $this->responseRepository->ResponseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
    
    /**
     * @OA\GET(
     *     path="/api/products/view/search",
     *     tags={"Products"},
     *     summary="All Products - Publicly Accessable",
     *     description="All Products - Publicly Accessable",
     *     operationId="search",
     *     @OA\Parameter(name="perPage", description="perPage, eg; 20", example=20, in="query", @OA\Schema(type="integer")),
     *     @OA\Parameter(name="search", description="search, eg; Test", example="Test", in="query", @OA\Schema(type="string")),
     *     @OA\Response(response=200, description="All Products - Publicly Accessable" ),
     *     @OA\Response(response=400, description="Bad request"),
     *     @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function search(Request $request)
    {
        try {
            $data = $this->productRepository->searchProduct($request->search, $request->perPage);
            return $this->responseRepository->ResponseSuccess($data, 'Product List Fetched Successfully !');
        } catch (\Exception $e) {
            return $this->responseRepository->ResponseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @OA\POST(
     *     path="/api/products",
     *     tags={"Products"},
     *     summary="Create New Product",
     *     description="Create New Product",
     *     operationId="store",
     *     @OA\RequestBody(
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="title", type="string", example="Product 1"),
     *              @OA\Property(property="description", type="string", example="Description"),
     *              @OA\Property(property="price", type="integer", example=10120),
     *              @OA\Property(property="image", type="string", example=""),
     *          ),
     *      ),
     *      @OA\Response(response=200, description="Create New Product" ),
     *      @OA\Response(response=400, description="Bad request"),
     *      @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function store(ProductRequest $request)
    {
        try {
            $data = $request->all();
            $unit = $this->productRepository->create($data);
            return $this->responseRepository->ResponseSuccess($unit, 'New Product Created Successfully !');
        } catch (\Exception $exception) {
            return $this->responseRepository->ResponseError(null, $exception->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @OA\GET(
     *     path="/api/products/{id}",
     *     tags={"Products"},
     *     summary="Show Product Details",
     *     description="Show Product Details",
     *     operationId="show",
     *     @OA\Parameter(name="id", description="id, eg; 1", required=true, in="path", @OA\Schema(type="integer")),
     *     @OA\Response(response=200, description="Show Product Details" ),
     *     @OA\Response(response=400, description="Bad request"),
     *     @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function show($id)
    {
        try {
            $data = $this->productRepository->getByID($id);
            if(is_null($data))
                return $this->responseRepository->ResponseError(null, 'Product Not Found', Response::HTTP_NOT_FOUND);

            return $this->responseRepository->ResponseSuccess($data, 'Product Details Fetch Successfully !');
        } catch (\Exception $e) {
            return $this->responseRepository->ResponseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @OA\PUT(
     *     path="/api/products/{id}",
     *     tags={"Products"},
     *     summary="Update Product",
     *     description="Update Product",
     *     @OA\Parameter(name="id", description="id, eg; 1", required=true, in="path", @OA\Schema(type="integer")),
     *     @OA\RequestBody(
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="title", type="string", example="Product 1"),
     *              @OA\Property(property="description", type="string", example="Description"),
     *              @OA\Property(property="price", type="integer", example=10120),
     *              @OA\Property(property="image", type="string", example=""),
     *          ),
     *      ),
     *     operationId="update",
     *     @OA\Response( response=200, description="Update Product" ),
     *     @OA\Response(response=400, description="Bad request"),
     *     @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function update(ProductRequest $request, $id)
    {
        try {
            $data = $this->productRepository->update($id, $request->all());
            if(is_null($data))
                return $this->responseRepository->ResponseError(null, 'Product Not Found', Response::HTTP_NOT_FOUND);

            return $this->responseRepository->ResponseSuccess($data, 'Product Updated Successfully !');
        } catch (\Exception $e) {
            return $this->responseRepository->ResponseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @OA\DELETE(
     *     path="/api/products/{id}",
     *     tags={"Products"},
     *     summary="Delete Product",
     *     description="Delete Product",
     *     operationId="destroy",
     *     @OA\Parameter(name="id", description="id, eg; 1", required=true, in="path", @OA\Schema(type="integer")),
     *     @OA\Response( response=200, description="Delete Product" ),
     *     @OA\Response(response=400, description="Bad request"),
     *     @OA\Response(response=404, description="Resource Not Found"),
     * )
     */
    public function destroy($id)
    {
        try {
            $produtData =  $this->productRepository->getByID($id);
            $deleted = $this->productRepository->delete($id);
            if(!$deleted)
                return $this->responseRepository->ResponseError(null, 'Product Not Found', Response::HTTP_NOT_FOUND);

            return $this->responseRepository->ResponseSuccess($produtData, 'Product Deleted Successfully !');
        } catch (\Exception $e) {
            return $this->responseRepository->ResponseError(null, $e->getMessage(), Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}
