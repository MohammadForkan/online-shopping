@extends('admin.master')

@section('content')
    <hr/>
    <h3 class="text-center text-success">{{ Session::get('message')}}</h3>
    <hr/>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Order details info for this order</h3>
                    <table class="table table-bordered">
                        <tr>
                            <th>Order No</th>
                            <td>{{ $order->id }}</td>
                        </tr>

                        <tr>
                            <th>Order Total</th>
                            <td>{{ $order->orderTotal }}</td>
                        </tr>

                        <tr>
                            <th>Order Status</th>
                            <td>{{ $order->orderStatus }}</td>
                        </tr>
                        <tr>
                            <th>Order Date</th>
                            <td>{{ $order->	created_at }}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Customer info for this order</h3>
                    <table class="table table-bordered">
                        <tr>
                            <th>Customer Name</th>
                            <td>{{ $customer->firstName.' '.$customer->lastName }}</td>
                        </tr>

                        <tr>
                            <th>Phone number</th>
                            <td>{{ $customer->phoneNumber }}</td>
                        </tr>

                        <tr>
                            <th>Email Address</th>
                            <td>{{ $customer->emailAddress }}</td>
                        </tr>
                        <tr>
                            <th>Addree</th>
                            <td>{{ $customer->address }}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Shipping info for this order</h3>
                    <table class="table table-bordered">
                        <tr>
                            <th>Full Name</th>
                            <td>{{ $shipping->fullName }}</td>
                        </tr>

                        <tr>
                            <th>Phone number</th>
                            <td>{{ $shipping->phoneNumber }}</td>
                        </tr>

                        <tr>
                            <th>Email Address</th>
                            <td>{{ $shipping->emailAddress }}</td>
                        </tr>
                        <tr>
                            <th>Addree</th>
                            <td>{{ $shipping->address }}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Payment info for this order</h3>
                    <table class="table table-bordered">
                        <tr>
                            <th>Payment Type</th>
                            <td>{{ $payment->paymentType }}</td>
                        </tr>

                        <tr>
                            <th>Payment Status</th>
                            <td>{{ $payment->paymentStatus }}</td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">Product info for this order</h3>
                    <table class="table table-striped table-bordered table-hover">
                        <thead class="bg-primary">
                        <tr class="text-center">
                            <th><h4 class="text-center"><b>ID</b></h4></th>
                            <th><h4 class="text-center"><b>Product Id</b></h4></th>
                            <th><h4 class="text-center"><b>Product Name</b></h4></th>
                            <th><h4 class="text-center"><b>Product Price</b></h4></th>
                            <th><h4 class="text-center"><b>Product Quantity</b></h4></th>
                            <th><h4 class="text-center"><b>Total Price</b></h4></th>
                        </tr>
                        </thead>
                        <tbody>
                        @php( $i=1 )
                        @foreach(  $orderDetails as $orderDetail)
                            <tr>
                                <th scope="row">{{ $i++ }}</th>
                                <td>{{ $orderDetail->productId }}</td>
                                <td>{{ $orderDetail->productName }}</td>
                                <td>TK.{{ $orderDetail->productPrice }}</td>
                                <td>{{ $orderDetail->productQuantity }}</td>
                                <td>TK.{{ $orderDetail->productPrice*$orderDetail->productQuantity }}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
