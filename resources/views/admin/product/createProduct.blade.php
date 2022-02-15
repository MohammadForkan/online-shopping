@extends('admin.master')

@section('content')
<hr/>
<div class="row">
    <div class="col-lg-12">
        <h3 class="text-center text-success">{{ Session::get('message') }}</h3>
        <hr/>
        <div class="well">
            {!! Form::open( [ 'url'=>'product/save', 'method' =>'POST', 'class' =>'form-horizontal','enctype'=>'multipart/form-data' ] ) !!}

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Product Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="productName">
                    <span class="text-danger">{{$errors->has('productName')? $errors->first('productName'):''}}</span>
                </div>
            </div> 

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Category Name</label>
                <div class="col-sm-10">
                    <select class="form-control" name="categoryId">
                        <option>Select Category Name</option>

                        @foreach($categories as $category)
                        <option value="{{ $category->id}}">{{$category->categoryName}}</option>
                        @endforeach

                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Manufacturer Name</label>
                <div class="col-sm-10">
                    <select class="form-control" name="manufacturerId">
                        <option>Select Manufacturer Name</option>

                        @foreach($manufacturers as $manufacturer)
                        <option value="{{ $manufacturer->id}}">{{$manufacturer->manufacturerName}}</option>
                        @endforeach

                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Product Price</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="productPrice">
                    <span class="text-danger">{{$errors->has('productPrice')? $errors->first('productPrice'):''}}</span>
                </div>
            </div> 

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Product Quantity</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="productQuantity">
                    <span class="text-danger">{{$errors->has('productQuantity')? $errors->first('productQuantity'):''}}</span>
                </div>
            </div> 

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Product Short Description</label>
                <div class="col-sm-10">
                    <textarea type="text" class="form-control" name="productShortDescription" rows="6"></textarea>
                    <span class="text-danger">{{$errors->has('productShortDescription')? $errors->first('productShortDescription'):''}}</span>
                </div>
            </div> 

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Product Long Description</label>
                <div class="col-sm-10">
                    <textarea class="form-control" name="productLongDescription" rows="10"></textarea>
                    <span class="text-danger">{{$errors->has('productLobgDescription')? $errors->first('productLongDescription'):''}}</span>
                </div>
            </div>

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Product Image</label>
                <div class="col-sm-10">
                    <input type="file" name="productImage" accept="image/*">
                    <span class="text-danger">{{$errors->has('productImage')? $errors->first('productImage'):''}}</span>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Publication Status</label>
                <div class="col-sm-10">
                    <select class="form-control" name="publicationStatus">
                        <option>Select Publication Status</option>
                        <option value="1">Published</option>
                        <option value="0">Unpublished</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" name="btn" class=" btn btn-lg btn btn-success btn-block">Save Product
                        Info
                    </button>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection