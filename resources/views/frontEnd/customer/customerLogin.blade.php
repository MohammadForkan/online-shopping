@extends('frontEnd.master')

@section('title')
    Category
@endsection

@section('mainContent')
    <hr/>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well lead text-center text-success">Welcome to e-commerce plateform!
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-center">Registration Here!</h3>
                <hr/>
                <div class="well box box-primary">
                    {!! Form::open(['url'=>'/customer/logout','method'=>'POST']) !!}
                    <div class="box-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">First Name</label>
                            <input type="text" name="firstName" class="form-control" placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Last Name</label>
                            <input type="text" name="lastName" class="form-control" placeholder="Last Name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email Address</label>
                            <input type="email" name="emailAddress" class="form-control" placeholder="Email Address">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Address</label>
                            <textarea name="address" class="form-control" placeholder="Enter Address"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Phone Number</label>
                            <input type="number" name="phoneNumber" class="form-control"
                                   placeholder="Enter Phone Number">
                        </div>
                        <div class="form-group">
                            <label>Dist. Name</label>
                            <select class="form-control" name="districtName">
                                <option>---Select District Name---</option>
                                <option value="Dhaka">Dhaka</option>
                                <option value="nar">Narayanganj</option>
                                <option value="Savar">Chattogram</option>
                                <option value="Barisal">Barisal</option>
                                <option value="Gazipur">Gazipur</option>
                                <option value="Comilla">Comilla</option>
                            </select>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class=" btn btn-lg btn btn-primary btn-block">Submit</button>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
            <div class="col-lg-6">
                <h3 class="text-center">Login Here!</h3>
                <hr/>
                <h4 class="text-center text-danger">{{ Session::get('message') }}</h4>
                <br/>
                <div class="well box box-primary">
                    {!! Form::open(['url'=>'/customer/new-login','method'=>'POST',]) !!}
                    <div class="box-body">

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email Address</label>
                            <input type="email" name="emailAddress" class="form-control" placeholder="Email Address">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class=" btn btn-lg btn btn-primary btn-block">Submit</button>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
@endsection
