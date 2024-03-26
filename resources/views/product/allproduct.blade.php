<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">




@extends('adminHome')

@section('content')

@if(session()->has('message1'))
    <div class="alert alert-success">
        {{ session()->get('message1') }}
    </div>
@endif

@if(session()->has('message2'))
    <div class="alert alert-success">
        {{ session()->get('message2') }}
    </div>
@endif
<style>
    .header{
        position:sticky;
        top: 0 ;
    }
</style>
<table class="table table-bordered table-dark" >

    <thead class="header">
        <th colspan="11"><h2 style="text-align: center; color: yellow;">All Products</h2></th>
        <tr align="center" style="color: #BB2D3B;">
        <th scope="col">Serial No.</th>
        <th scope="col">Email</th>
        <th scope="col">Product Name</th>
        <th scope="col">Description</th>
        <th scope="col">Price LP</th>
        <th scope="col">Selling Price</th>
        <th scope="col">Price TP</th>
        <th scope="col">Product Image</th>
        <th colspan = 3 scope="col">Actions</th>

    </tr>
    </thead>
    <tbody>
        @foreach ($productshow as $productshow)
        <tr align="center">
            <td>{{ $productshow->id }}</td>
            <td>{{ $productshow->email }}</td>
            <td>{{ $productshow->title }}</td>
            <td>{{ $productshow->description }}</td>
            <td>{{ $productshow->buyingprice }}</td>
            <td>{{ $productshow->sellingprice }}</td>
            <td>{{ $productshow->updated_price }}</td>
            <td> <img src="{{ $productshow->image }}" width="100px" height="100px" alt="Image"></td>
            <td colspan = 3>
                <a href="{{ url('/productedit',$productshow->id) }}" class="btn btn-primary">Edit </a>
                <a href="{{ url('/deleteproduct',$productshow->id) }}" class="btn btn-danger ml-2">Delete</a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>

@endsection
