@extends('adminHome3')

@section('content')
    
    <div class="container margin-top-20">
         <div class="card card-body">
             <h2>Confirmed Items</h2>
             <hr>
            <div class="row">
                <div class="col-md-7 border-right">
                    @foreach (App\Models\Company::totalCarts() as $cart)
                        <p>
                            {{ $cart->product->title }} -
                            <strong>{{ $cart->product->sellingprice }} taka </strong>
                            - {{ $cart->product_quantity }} item
                        </p>
                     @endforeach
                </div>
                <div class="col-md-5">
                        @php
                            $total_price = 0;
                        @endphp
                         @foreach (App\Models\Company::totalCarts() as $cart)
                        @php
                            $total_price += $cart->product->sellingprice * $cart->product_quantity;
                        @endphp
                     @endforeach
                     <p>Total Price : <strong>{{ $total_price }}</strong> Taka</p>
                     <p>Total Price with shipping cost: <strong>{{ $total_price + App\Models\Setting::first()->shipping_cost }}</strong> Taka</p>
                </div>
            </div>
         <p>
             <a href="{{ route('carts') }}">Change Cart Items</a>
         </p>
         </div>
          <div class="card card-body mt-2">
             <h2>Details</h2>
              <form method="POST" action="{{ route('companycheckouts.store') }}">
        @csrf

        <div class="form-group row">
          <label for="name" class="col-md-4 col-form-label text-md-right">Reciever Name</label>

          <div class="col-md-6">
            <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ Auth::check() ? Auth::user()->first_name.' '.Auth::user()->last_name : '' }}" required autofocus>

            @if ($errors->has('name'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('name') }}</strong>
              </span>
            @endif
          </div>
        </div>


        <div class="form-group row">
          <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>

          <div class="col-md-6">
            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ Auth::check() ? Auth::user()->email : '' }}" required>

            @if ($errors->has('email'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('email') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group row">
          <label for="phone_no" class="col-md-4 col-form-label text-md-right">Phone No</label>

          <div class="col-md-6">
            <input id="phone_no" type="text" class="form-control{{ $errors->has('phone_no') ? ' is-invalid' : '' }}" name="phone_no" value="{{ Auth::check() ? Auth::user()->phone_no : '' }}" required>

            @if ($errors->has('phone_no'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('phone_no') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group row">
          <label for="message" class="col-md-4 col-form-label text-md-right">Additional Message (optional)</label>

          <div class="col-md-6">
            <textarea id="message" class="form-control{{ $errors->has('message') ? ' is-invalid' : '' }}" rows="4" name="message"></textarea>

            @if ($errors->has('message'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('message') }}</strong>
              </span>
            @endif
          </div>
        </div><br>

        <div class="form-group row">
          <label for="shop" class="col-md-4 col-form-label text-md-right">Shop (*)</label>

          <div class="col-md-6">
            <!--<textarea id="shipping_address" class="form-control{{ $errors->has('shipping_address') ? ' is-invalid' : '' }}" rows="4" name="shipping_address">{{ Auth::check() ? Auth::user()->shipping_address : '' }}</textarea>-->
            
            <select id="shop" name="shop" class="form-control{{ $errors->has('shop') ? ' is-invalid' : '' }}"  required>{{ Auth::check() ? Auth::user()->shop : '' }}
                <option value="" selected hidden>Choose Option</option>
                <option value="Shop 1">Shop 1</option>
                <option value="Shop 2">Shop 2</option>
                <option value="Shop 3">Shop 3</option>
                <option value="Shop 4">Shop 4</option>
                <option value="Shop 5">Shop 5</option>
            </select>

            @if ($errors->has('shop'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('shop') }}</strong>
              </span>
            @endif
          </div>
          <div class="col-md-6">
            <!--<textarea id="shipping_address" class="form-control{{ $errors->has('shipping_address') ? ' is-invalid' : '' }}" rows="4" name="shipping_address">{{ Auth::check() ? Auth::user()->shipping_address : '' }}</textarea>-->
            <label for="sr" class="col-md-4 col-form-label text-md-left">SR (*)</label>
            <select id="sr" name="sr" class="form-control{{ $errors->has('sr') ? ' is-invalid' : '' }}"  required>{{ Auth::check() ? Auth::user()->sr : '' }}
                <option value="" selected hidden>Choose Option</option>
                <option value="SR 1">SR 1</option>
                <option value="SR 2">SR 2</option>
            </select>

            @if ($errors->has('sr'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('sr') }}</strong>
              </span>
            @endif
          </div>
          <div class="col-md-6">
            <!--<textarea id="shipping_address" class="form-control{{ $errors->has('shipping_address') ? ' is-invalid' : '' }}" rows="4" name="shipping_address">{{ Auth::check() ? Auth::user()->shipping_address : '' }}</textarea>-->
             <label for="deliveryman" class="col-md-4 col-form-label text-md-left">Delivery Man (*)</label>
            <select id="deliveryman" name=deliveryman class="form-control{{ $errors->has('deliveryman') ? ' is-invalid' : '' }}"  required>{{ Auth::check() ? Auth::user()->deliveryman : '' }}
                <option value="" selected hidden>Choose Option</option>
                <option value="Delivery Man 1">Delivery Man 1</option>
                <option value="Delivery Man 2">Delivery Man 2</option>
            </select>

            @if ($errors->has('deliveryman'))
              <span class="invalid-feedback">
                <strong>{{ $errors->first('deliveryman') }}</strong>
              </span>
            @endif
          </div>
        </div><br>

        <div class="form-group row">
          <label for="payment_method" class="col-md-4 col-form-label text-md-right">Select a payment method</label>

          <div class="col-md-6">
            <select class="form-control" name="payment_method_id" required id="payments">
              <option value="">Select a payment method please</option>
              @foreach ($payments as $payment)
                <option value="{{ $payment->short_name }}">{{ $payment->name }}</option>
              @endforeach
            </select>

            @foreach ($payments as $payment)
              @if ($payment->short_name == "cash_in")
                <div id="payment_{{ $payment->short_name }}" class="alert alert-success mt-2 text-center hidden">
                  <h3>
                    For Cash in there is nothing necessary. Just click Finish Order.
                    <br>
                    <small>
                      You will get your product in two or three business days.
                    </small>
                  </h3>
                </div>
              @else
                <div id="payment_{{ $payment->short_name }}" class="alert alert-success mt-2 text-center hidden"
                  <h3>{{ $payment->name }} Payment</h3>
                  <p>
                    <strong>{{ $payment->name }} No :  {{ $payment->no }}</strong>
                    <br>
                    <strong>Account Type: {{ $payment->type }}</strong>
                  </p>
                  <div class="alert alert-success">
                    Please send the above money to this Bkash No and write your transaction code below there..
                  </div>

                </div>
              @endif
            @endforeach
            <input type="text" name="transaction_id" id="transaction_id" class="form-control hidden" placeholder="Paid amount">
          </div>


        </div>
        <div class="form-group row mb-0">
          <div class="col-md-6 offset-md-4">
            <button type="submit" class="btn btn-primary">
              Order Now
            </button>
          </div>
        </div>

      </div>


    </form>
         </div>
    </div>
    
@endsection

@section('scripts')
  <script type="text/javascript">
  $("#payments").change(function(){
    $payment_method = $("#payments").val();
    if ($payment_method == "cash_in") {
      $("#payment_cash_in").removeClass('hidden');
      $("#payment_bkash").addClass('hidden');
      $("#payment_rocket").addClass('hidden');
    }else if ($payment_method == "bkash") {
      $("#payment_bkash").removeClass('hidden');
      $("#payment_cash_in").addClass('hidden');
      $("#payment_rocket").addClass('hidden');
      $("#transaction_id").removeClass('hidden');
    }else if ($payment_method == "rocket") {
      $("#payment_rocket").removeClass('hidden');
      $("#payment_bkash").addClass('hidden');
      $("#payment_cash_in").addClass('hidden');
      $("#transaction_id").removeClass('hidden');
    }
  })
  </script>
@endsection