@extends('adminHome')

@section('content')

@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif


<style>
     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: 'Poppins', sans-serif
 }

 body {
     background: linear-gradient(45deg, #ce1e53, #8f00c7);
     min-height: 100vh
 }

 body::-webkit-scrollbar {
     display: none
 }

 .wrapper {
     max-width: 700px;
     margin: 80px auto;
     padding: 30px 45px;
     box-shadow: 5px 25px 35px #3535356b
 }

 .wrapper label {
     display: block;
     padding-bottom: 0.2rem
 }

 .wrapper .form .row {
     padding: 0.6rem 0
 }

 .wrapper .form .row .form-control {
     box-shadow: none
 }

 .wrapper .form .option {
     position: relative;
     padding-left: 20px;
     cursor: pointer
 }

 .wrapper .form .option input {
     opacity: 0
 }

 .wrapper .form .checkmark {
     position: absolute;
     top: 1px;
     left: 0;
     height: 20px;
     width: 20px;
     border: 1px solid #bbb;
     border-radius: 50%
 }

 .wrapper .form .option input:checked~.checkmark:after {
     display: block
 }

 .wrapper .form .option:hover .checkmark {
     background: #f3f3f3
 }

 .wrapper .form .option .checkmark:after {
     content: "";
     width: 10px;
     height: 10px;
     display: block;
     background: linear-gradient(45deg, #ce1e53, #8f00c7);
     position: absolute;
     top: 50%;
     left: 50%;
     border-radius: 50%;
     transform: translate(-50%, -50%) scale(0);
     transition: 300ms ease-in-out 0s
 }

 .wrapper .form .option input[type="radio"]:checked~.checkmark {
     background: #fff;
     transition: 300ms ease-in-out 0s
 }

 .wrapper .form .option input[type="radio"]:checked~.checkmark:after {
     transform: translate(-50%, -50%) scale(1)
 }

 #sub {
     display: block;
     width: 100%;
     border: 1px solid #ddd;
     padding: 10px;
     border-radius: 5px;
     color: #333
 }

 #sub:focus {
     outline: none
 }

 @media(max-width: 768.5px) {
     .wrapper {
         margin: 30px
     }

     .wrapper .form .row {
         padding: 0
     }
 }

 @media(max-width: 400px) {
     .wrapper {
         padding: 25px;
         margin: 20px
     }
 }
 .h3{
     text-align: center;
 }
</style>

<div class="wrapper rounded bg-white">
    <div class="h3">Add Stock</div><hr>
    <center><img src="images/addproduct.png" alt="Image" class="img-fluid" width="200" height="150"/></center>
    <div class="form">
        <form method="post" action="/addstock" class="form-control">
            @csrf
        <div class="row">
            <div class="my-md-2 my-3"> <label>Product Name</label> <select id="sub" name="title" required>
                <option value="" selected hidden>Choose Product</option>
                 @foreach ($productname as $productname)
                <option value="{{ $productname->title }}">{{ $productname->title }}</option>
                @endforeach
            </select> </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Pack</label> <input type="number" placeholder="Pack" name="pack" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Openning Stock</label> <input type="number" step="any" name="openningstock" placeholder="Openning Stock" class="form-control" required> </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Price LP</label> <input type="number" step="any" name="pricelp" placeholder="Price LP" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Selling Price</label> <input type="number" step="any" name="price" placeholder="Selling Price" class="form-control" required> </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Stock</label> <input type="number" step="any" name="stock" placeholder="Stock" class="form-control" required> </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Remaining Stock</label> <input type="number" step="any" name="remainingstock" placeholder="Remaining Stock" class="form-control" disabled> </div>
        </div>
        <div class="text-right">
            <button class="btn btn-primary mt-3" type="submit" name="submit">Confirm Stock</button>
        </div>
        </form>
    </div>
</div>

@endsection