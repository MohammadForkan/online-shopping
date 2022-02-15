@extends('admin.master')
@section('content')
    <hr/>

    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center text-success">{{ Session::get('message') }}</h3>
            <hr/>
            <div class="well">
                {!! Form::open( [ 'url'=>'user/update', 'method' =>'POST', 'class' =>'form-horizontal' ] ) !!}
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">User Name</label>
                    <div class="col-sm-10">
                        <input type="text" value="{{$userById->name}}" class="form-control" name="name">
                        <input type="hidden" value="{{ $userById->id}}" class="form-control" name="userId">
                        <span class="text-danger">{{$errors->has('	name')? $errors->first('name'):''}}</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Address</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" name="address" rows="6">{{$userById->address}}</textarea>
                        <span class="text-danger">{{$errors->has('address')? $errors->first('address'):''}}</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">E-Maill</label>
                    <div class="col-sm-10">
                        <input type="email" value="{{$userById->email}}" class="form-control" name="email">
                        <span class="text-danger">{{$errors->has('email')? $errors->first('email'):''}}</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" value="{{$userById->password}}" class="form-control" name="password">
                        <span class="text-danger">{{$errors->has('password')? $errors->first('password'):''}}</span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" name="btn" class=" btn btn-lg btn btn-success btn-block">Update User
                            Info
                        </button>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>

@endsection