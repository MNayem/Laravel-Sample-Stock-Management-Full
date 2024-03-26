@extends('adminHome')

@section('content')

 <center><h1>Edit This Product Info.</h1><br></center>
            <hr>
            <form action="{{ url('/producteditprocess',$data->id) }}" method="post" class="form-control">
                @csrf
                <label>Product Name: </label>
                <input type="text" name="title" placeholder="Name" value="{{ $data->title }}"><br><br>
                
                <label>Description: </label>
                <input type="text" name="description" placeholder="Description" value="{{ $data->description }}"><br><br>
                
                <label>Price LP: </label>
                <input type="number" step="any" name="buyingprice" placeholder="Buying Price" value="{{ $data->buyingprice }}">
                <br><br>
                
                <label>Selling Price: </label>
                <input type="number" step="any" name="sellingprice" placeholder="Selling Price" value="{{ $data->sellingprice }}"> <br><br>

                <label>Price TP: </label>
                <input type="number" name="updated_price" placeholder="Updated Price" value="{{ $data->updated_price }}"><br><br>
                
                <input type="submit" value="Update" class="btn btn-info" name="submit">
            </form>

@endsection