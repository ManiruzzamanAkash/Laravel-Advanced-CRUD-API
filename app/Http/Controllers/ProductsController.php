<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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
     * @OA\POST(
     *     path="/api/products",
     *     tags={"Products"},
     *     summary="Create New Product",
     *     description="Create New Product",
     *     @OA\RequestBody(
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="title", type="string", example="Product 1"),
     *              @OA\Property(property="description", type="string", example="Description"),
     *              @OA\Property(property="price", type="integer", example=10120),
     *              @OA\Property(property="image", type="string", example=""),
     *          ),
     *      ),
     *      @OA\Response( response=200, description="Create New Product" ),
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
