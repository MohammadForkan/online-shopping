<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use DB;

class UserController extends Controller
{
    public function createUser(){
        return view('admin.user.createUser');
    }

    public function storeUser(Request $request){
        $this->validate($request,[
            'name' => 'required',
            'address' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);
        DB::table('users')->insert([
            'name'=>$request->name,
            'address'=>$request->address,
            'email'=>$request->email,
            'password'=>$request->password,
        ]);
        return redirect('/user/add')->with('message', 'User Information Save Successfully');

    }

    public function  editUser($id) {
        $userById = User::where('id', $id)->first();
        return view('admin.user.editUser', ['userById' => $userById]);

    }
    public function updateUser(Request $request) {
        $user = User::find($request->userId);
        $user->name = $request->name;
        $user->	address = $request->address;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->save();
        return redirect('/user/manage')->with('message', 'User info update successfully');

    }
    public function deleteUser($id) {
        $user = User::find($id);
        $user->delete();
        return redirect('/user/manage')->with('message', 'User info delete successfully');

    }

    public function manageUser() {
//        $users=User::all();
//        $users=User::simplePaginate(10);
        $users=User::paginate(10);
        return view('admin.user.manageUser', ['users'=>$users]);
    }
}
