@extends('admin.master')

@section('content')
<hr/>

<table class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr class="bg-primary" height="60">

            <th scope="col"><h4 class="text-center"><b>ID</b></h4></th>
            <th scope="col"><h4 class=" text-center"><b>Product Details Information</b></h4></th>
        </tr>
    </thead>
    <thead align="center">
        <tr>
            <th>Product Id</th>
            <th>{{ $product->id }}</th>
        </tr>
        <tr>
            <th>Product Name</th>
            <th>{{ $product->productName }}</th>
        </tr>
        <tr>
            <th>Category Name</th>
            <th>{{ $product->categoryName }}</th>
        </tr>
        <tr>
            <th>Manufacturer Name</th>
            <th>{{ $product->manufacturerName }}</th>
        </tr>
        <tr>
            <th>Product Price</th>
            <th>{{ $product->productPrice }}</th>
        </tr>
        <tr>
            <th>Product Quantity</th>
            <th>{{ $product->productQuantity }}</th>
        </tr>
        <tr>
            <th>Product Short Description</th>
            <th>{!! $product->productShortDescription !!}</th>
        </tr>
        <tr>
            <th>Product Long Description</th>
            <th>{!! $product->productShortDescription !!}</th>
        </tr>
        <tr>
            <th>Product Image</th>
            <th><img src="{{ asset($product->productImage) }}" alt="{{ $product->productName }}" height="200" width="200" ></th>
        </tr>
        <tr>
            <th>Publication Status</th>
            <th>{{ $product->publicationStatus == 1 ? 'Published' : 'Unpublished' }}</th>
        </tr>
</table>
@endsection
