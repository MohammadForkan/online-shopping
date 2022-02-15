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
            <th><h4 class="text-center"><b>Customer Name</b></h4></th>
            <th><h4 class="text-center"><b>Order Total</b></h4></th>
            <th><h4 class="text-center"><b>Order Date</b></h4></th>
            <th><h4 class="text-center"><b>Order Status</b></h4></th>
            <th><h4 class="text-center"><b>Payment Type</b></h4></th>
            <th><h4 class="text-center"><b>Payment Status</b></h4></th>
            <th><h4 class="text-center"><b>Action</b></h4></th>
        </tr>
        </thead>
        <tbody>
        @foreach($orders as $order)
            @php($i=1)
            <tr class="text-center">
                <th scope="row">{{ $i++ }}</th>
                <td>{{ $order->firstName.' '.$order->lastName }}</td>
                <td>{{ $order->orderTotal }}</td>
                <td>{{ $order->created_at }}</td>
                <td>{{ $order->orderStatus }}</td>
                <td>{{ $order->paymentType }}</td>
                <td>{{ $order->paymentStatus }}</td>
                <td>
                    <a href="{{url('/order/view/'.$order->id)}}" class="btn btn-info btn-xs" title="View Order Details">
                        <span class="glyphicon glyphicon-zoom-in"></span>
                    </a>

                    <a href="{{url('/order/invoice/'.$order->id)}}" class="btn btn-warning btn-xs"
                       title="View Order Invoice">
                        <span class="glyphicon glyphicon-zoom-out"></span>
                    </a>
                    <a href="{{url('/order/invoiceDownload/'.$order->id)}}" class="btn btn-primary btn-xs"
                       title="Download Order Invoice">
                        <span class="glyphicon glyphicon-download"></span>
                    </a>
                    <a href="{{url('/category/edit/'.$order->id)}}" class="btn btn-success btn-xs" title="Order Edit">
                        <span class="glyphicon glyphicon-edit"></span>
                    </a>
                    <a href="{{url('/category/delete/'.$order->id)}}" class="btn bg-danger btn-xs" title="Order Delete"
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

@endsection