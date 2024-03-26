<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Digital Vai</title>
    <link rel="icon" href="images/dv.png" type="image/gif" sizes="16x16"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
    
    <header class="headerSection sticky-top bg-light">
        <div class="container">
            <nav class="navbar navbar-expand-lg ">
              <div class="container-fluid">
                <a class="navbar-brand" href="/">Digital Vai</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="{{ url('/home') }}">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" aria-current="page" href="{{ route('register') }}">Sign Up</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{{ route('login') }}">Sign In</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="{{ url('/carts') }}">
                        <button class="btn btn-danger">
                          <span>Carts: </span>
                          <span class="badge badge-warning" id="totalItems">
                             {{ App\Models\Cart::totalItems() }}
                          </span>
                        </button>
                      </a>
                    </li>
                    <!--<li class="nav-item dropdown">-->
                    <!--  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">-->
                    <!--    Dropdown-->
                    <!--  </a>-->
                    <!--  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">-->
                    <!--    <li><a class="dropdown-item" href="#">One</a></li>-->
                    <!--    <li><a class="dropdown-item" href="#">Two</a></li>-->
                    <!--  </ul>-->
                    <!--</li>-->
                  </ul>
                  <!--<form class="d-flex" role="search">-->
                  <!--  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">-->
                  <!--  <button class="btn btn-outline-success" type="submit">Search</button>-->
                  <!--</form>-->
                </div>
              </div>
            </nav> 
        </div>
    </header>
    <section>
        <div class="container margin-top 20">
    <h2>My Cart Items</h2>
    <table class="table table-bordered table-stripe">
        <thead>
          <tr>
            <th>No.</th>
            <th>Product Title</th>
            <th>Product Image</th>
            <th>Product Quantity</th>
            <th>Unit Price</th>
            <th>Sub total Price</th>
            <th>
              Delete
            </th>
          </tr>
        </thead>
        <tbody>
            @php
             $total_price = 0;
            @endphp
            @foreach(App\Models\Cart::totalCarts() as $cart)
                <tr>
                <td>
                   {{ $loop->index + 1 }}
                </td>
                <td>
                    <a href="#">{{ $cart->product->title }}</a>
                </td>
                <td>
                    <img src="#" alt=""></img>
                </td>
                <td>
                <form class="form-inline" action="{{ route('carts.update', $cart->id) }}" method="post">
                  @csrf
                  <input type="number" name="product_quantity" class="form-control" value="{{ $cart->product_quantity }}"/>
                  <button type="submit" class="btn btn-success mt-1">Update</button>
                </form>
                </td>
                <td>
                    {{ $cart->product->sellingprice }} Taka
                </td>
                <td>
                @php
                    $total_price += $cart->product->sellingprice * $cart->product_quantity;
                @endphp

                {{ $cart->product->sellingprice * $cart->product_quantity }} Taka
                </td>
                <td>
                <form class="form-inline" action="{{ route('carts.delete', $cart->id) }}" method="post">
                  @csrf
                  <input type="hidden" name="cart_id" />
                  <button type="submit" class="btn btn-danger">Delete</button>
                </form>
                </td>
            </tr>
            @endforeach
            <tr>
            <td colspan="4"></td>
            <td>
              Total Amount:
            </td>
            <td colspan="2">
              <strong>  {{ $total_price }} Taka</strong>
            </td>
          </tr>
        </tbody>
    </table>
    <div class="float-right">
        <a href="{{ route('productcartfront') }}" class="btn btn-info btn-lg">Continue Shopping...</a>
         <a href="{{ route('checkouts') }}" class="btn btn-warning btn-lg">Checkout</a>
    </div>
</div>
</section>
    
    <footer class="footerSection bg-light">
        <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">© Copyright Digital Vai. All Rights Reserved by DigitalVai</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Home</a>
          </li>
        </ul>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>