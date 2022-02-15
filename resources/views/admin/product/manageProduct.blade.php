@extends('admin.master')

@section('content')
<hr/>
<h3 class="text-center text-success">{{ Session::get('message') }}</h3>
<hr/>
<table class="table table-bordered table-hover">
    <thead class="bg-primary">
        <tr>
            <th><h4 class="text-center"><b>Product Name</b></h4></th>
            <th><h4 class="text-center"><b>Category Name</b></h4></th>
            <th><h4 class="text-center"><b>Manufacturer Name</b></h4></th>
            <th><h4 class="text-center"><b>Product Price</b></h4></th>
            <th><h4 class="text-center"><b>Product Quantity</b></h4></th>
            <th><h4 class="text-center"><b>Publication Status</b></h4></th>
            <th><h4 class="text-center"><b>Action</b></h4></th>
        </tr>
    </thead>
    <tbody>
        @foreach($products as $product)
        <tr class="text-center">
            <th scope="row">{{$product->productName }}</th>
            <td>{{ $product->categoryName }}</td>
            <td>{{ $product->manufacturerName }}</td>
            <td>TK. {{ $product->productPrice }}</td>
            <td> {{ $product->productQuantity }}</td>
            <td>{{ $product->publicationStatus == 1 ? 'Published' : 'Unpublished' }}</td> 
            <td>
                <a href="{{ url('/product/view/'.$product->id) }}" class="btn btn-info" title="Product View">
                    <span class="glyphicon glyphicon-info-sign"></span>
                </a>
                <a href="{{ url('/product/edit/'.$product->id) }}" class="btn btn-success" title="Product Edit">
                    <span class="glyphicon glyphicon-edit"></span>
                </a>
                <a href="{{ url('/product/delete/'.$product->id) }}" title="Product Delete" class="btn btn-danger" onclick="return confirm('Are you sure to delete this');">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td> 
        </tr>
        @endforeach
    </tbody>
</table>
@endsection
