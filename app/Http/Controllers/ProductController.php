<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Product;
use App\Models\Order;
use App\Models\Payment;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    /*Produvts Add */
    public function productstore(Request $request)
    {
        $user_email = Auth::user()->email;
        $product=new Product;
        $product->email= $user_email;
        $product->title= $request->title;
        $product->description= $request->description;
        $product->buyingprice= $request->buyingprice;
        $product->updated_price= $request->updated_price;
        $product->sellingprice= $request->sellingprice;

        $files=$request->file('image');
        $name=$request->file('image')->getClientOriginalName();
        //return $name;


        if($request->hasFile('image')) {
          $name=$request->file('image')->getClientOriginalName();
      $request->file('image')->storeAs('images/',$name);
      $request->image->move(public_path('images'), $name);

        // $path = $file->storeAs('public/', $originalname);


    }

     $product->image="images/".$name;
      $product->save();
      return redirect()->back()->with('message', 'Product has been added successly!!');
    }

    /*Products Show */
    public function productshow()
    {
      $productshow= Product::select('*')
                    ->orderBy('id', 'DESC')
                    ->get();
      return view('product.allproduct',compact('productshow'));
    }
    
    /*Edit and Delete Product */
    public function productedit($id)
    {
        $data=Product::find($id);
        return view('product.productedit', compact('data'));
    }
    public function producteditprocess(Request $request, $id)
    {
        $data=Product::find($id);
        $data->title= $request->title;
        $data->description= $request->description;
        $data->buyingprice= $request->buyingprice;
        $data->sellingprice= $request->sellingprice;
        $data->updated_price= $request->updated_price;
        
        $data->save();
      	return redirect()->to('/productshow')->with('message1', 'Product has been updated successly!!');  
    }

    /* Delete Product */
    public function deleteproduct($id)
    {
        $data=Product::find($id);
        $data->delete();
        return redirect()->back()->with('message2', 'Product has been deleted successly!!');
    }

    /* Product Cart */
    public function productcart(){
        $product = Product::select('*')
                  ->get();
        return view('product.productcart', compact('product'));
    }
    
    /* Product Cart Front */
    public function productcartfront(){
        $product = Product::select('*')
                  ->get();
        return view('welcome', compact('product'));
    }

    /* Return Cart*/
    public function returncart(){
        $product = Product::select('*')
                   ->get();
        return view('product.returncart', compact('product'));
    }

    /* Company Cart*/
    public function companycart(){
        $product = Product::select('*')
                  ->get();
        return view('product.companycart', compact('product'));
    }
}
