@extends('admin.master')

@section('content')
    <hr/>
    <h3 class="text-center text-success">{{ Session::get('message')}}</h3>
    <hr/>

    {{--<div class="row">--}}
    {{--    <div class="col-lg-12">--}}
    {{--        <div class="panel panel-default">--}}
    {{--            <div class="panel-heading">--}}
    {{--                <h3 class="well text-center">Daily Report</h3>--}}
    {{--            </div>--}}
    {{--            <!-- /.panel-heading -->--}}
    {{--            <div class="panel-body">--}}
    {{--                <div class="dataTable_wrapper">--}}

    <table class="table table-striped table-bordered table-hover">
        <thead class="bg-primary">
        <tr>
            <th><h4 class="text-center"><b>ID</b></h4></th>
            <th><h4 class="text-center"><b>Category Name</b></h4></th>
            <th><h4 class="text-center"><b>Category Description</b></h4></th>
            <th><h4 class="text-center"><b>Publication Status</b></h4></th>
            <th><h4 class="text-center"><b>Action</b></h4></th>
        </tr>
        </thead>
        <tbody>
        @foreach($categories as $category)
            <tr class="text-center">
                <th scope="row">{{ $category->id }}</th>
                <td>{{ $category->categoryName }}</td>
                <td>{{ $category->categoryDescription }}</td>
                <td>{{ $category->publicationStatus == 1? 'Published' : 'Unpublished' }}</td>
                <td>
                    <a href="{{url('/category/edit/'.$category->id)}}" class="btn bg-success" title="Category Edit">
                        <span class="glyphicon glyphicon-edit"></span>
                    </a>
                    <a href="{{url('/category/delete/'.$category->id)}}" class="btn bg-danger" title="Category Delete"
                       onclick="return confirm('Are sure to delete this')">
                        <span class="glyphicon glyphicon-trash"></span>
                    </a>

                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    </div>
    </div>
    </div>
    </div>
    </div>


    {{--    <ul>--}}
    {{--        @foreach($categories as $category)--}}
    {{--            <li>{{ $category->categoryName }}</li>--}}
    {{--        @endforeach--}}
    {{--    </ul>--}}

@endsection