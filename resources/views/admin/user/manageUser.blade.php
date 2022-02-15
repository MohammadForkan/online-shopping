@extends('admin.master')
@section('content')

<hr/>
<h3 class="text-center text-success">{{ Session::get('message') }}</h3>
<hr/>
<h2>Total {{ $users->total() }} users</h2>
<h3>{{  $users->count() }} in this page</h3>
<table class="table table-bordered table-hover">
    <thead class="bg-primary">
        <tr>
            <th><h4 class="text-center"><b>ID</b></h4></th>
            <th><h4 class="text-center"><b>User Id</b></h4></th>
            <th><h4><b>User Name</b></h4></th>
            <th><h4 class="text-center"><b>Address</b></h4></th>
            <th><h4 class="text-center"><b>Email</b></h4></th>
            <th><h4 class="text-center"><b>Action</b></h4></th>
        </tr>
    </thead>
    <tbody>
        <?php $i=1; ?>
        @foreach ($users as $user)
        <tr class="text-center">
            <td>{{ $i++ }}</td>
            <td>{{ $user->id }}</td>
            <td>{{ $user->name }}</td>
            <td>{{ $user->address }}</td>
            <td>{{ $user->email }}</td>
            <td>
                <a href="{{url('/user/edit/'.$user->id)}}" class="btn btn-success" title="Product Edit">
                    <span class="glyphicon glyphicon-edit"></span>
                </a>
                <a href="{{url('/user/delete/'.$user->id)}}" title="Product Delete" class="btn btn-danger" onclick="return confirm('Are you sure to delete this');">
                    <span class="glyphicon glyphicon-trash"></span>
                </a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
<hr/>
<div>
     {{ $users->links() }}
</div>
@endsection
