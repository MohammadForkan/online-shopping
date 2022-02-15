@extends('admin.master')
@section('content')

<hr/>
<h3 class="text-center text-success">{{ Session::get('message') }}</h3>
<hr/>
<table class="table table-bordered table-hover">
      <thead class="bg-primary">
        <tr>
            <th><h4 class="text-center"><b>ID</b></h4></th>
            <th><h4 class="text-center"><b>Manufacturer Name</b></h4></th>
            <th><h4 class="text-center"><b>Manufacturer Description</b></h4></th>
            <th><h4 class="text-center"><b>Publication Status</b></h4></th>
            <th><h4 class="text-center"><b>Action</b></h4></th>
        </tr>
    </thead>
    <tbody>
        @foreach($manufacturers as $manufacturer)
        <tr class="text-center">
            <th scope="row">{{$manufacturer->id}}</th>
            <td>{{$manufacturer->manufacturerName}}</td>
            <td>{{$manufacturer->manufacturerDescription}}</td>
            <td>{{ $manufacturer->publicationStatus == 1 ? 'Published'  : 'Unpublished'}}</td>
            <td>
                <a href="{{url('/manufacturer/edit/'.$manufacturer->id)}}" class="btn btn-success" title="Manufactur Edit">
                    <span class="glyphicon glyphicon-edit"></span>
                </a>
                <a href="{{url('/manufacturer/delete/'.$manufacturer->id)}}" class="btn btn-danger" title="Manufactur Delete" onclick="return confirm('Are You Sure To Delete This');">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
</table>


@endsection
