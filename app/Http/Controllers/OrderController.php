<?php

namespace App\Http\Controllers;

use App\Customer;
use App\OrderDetail;
use App\Payment;
use App\Shipping;
use App\Order;
use Illuminate\Http\Request;
use DB;
use PDF;

class OrderController extends Controller
{

    public function manageOrder() {
        $orders = DB::table('orders')
            ->join('customers','orders.customerId','=','customers.id')
            ->join('payments','orders.id','=','payments.orderId')
            ->select('orders.*','customers.firstName','customers.lastName','payments.paymentType','payments.paymentStatus')
            ->get();
        return view('admin.order.manageOrder',['orders'=>$orders]);
    }
    public function viewOrderDetails($id){
        $order = Order::find($id);
        $customer = Customer::find($order->customerId);
        $shipping = Shipping::find($order->shippingId);
        $payment = Payment::where('orderId', $order->id)->first();

        $orderDetails = OrderDetail::where('orderId', $order->id)->get();

        return view('admin.order.viewOrder',[
            'order'=>$order,
            'customer'=>$customer,
            'shipping'=>$shipping,
            'payment'=>$payment,
            'orderDetails'=>$orderDetails
        ]);

    }
    public function OrderInvoice($id){
        $order = Order::find($id);
        $customer = Customer::find($order->customerId);
        $shipping = Shipping::find($order->shippingId);

       // $payment = Payment::where('orderId', $order->id)->first();
        $orderDetails = OrderDetail::where('orderId', $order->id)->get();

        return view('admin.order.OrderInvoice',[
            'order'=>$order,
            'customer'=>$customer,
            'shipping'=>$shipping,
            'orderDetails'=>$orderDetails
        ]);
    }
    public function OrderInvoiceDownload($id){
        $order = Order::find($id);
        $customer = Customer::find($order->customerId);
        $shipping = Shipping::find($order->shippingId);
        $orderDetails = OrderDetail::where('orderId', $order->id)->get();

        $pdf = PDF::loadView('admin.order.OrderInvoiceDownload',[
            'order'=>$order,
            'customer'=>$customer,
            'shipping'=>$shipping,
            'orderDetails'=>$orderDetails
        ]);
        return $pdf->stream('invoice.pdf');
       // return $pdf->download('invoice.pdf');

    }
}
