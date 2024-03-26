<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CommonController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\SrController;
use App\Http\Controllers\DeliverymanController;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\CartsController;
use App\Http\Controllers\CheckoutsController;
use App\Http\Controllers\ReturnCheckoutsController;
use App\Http\Controllers\ReturnController;
use App\Http\Controllers\CompanyCheckoutsController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\OfferController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\StockController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

//Admin Home Route
Route::get('admin/home', [HomeController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');

//Route For All Nav menus
Route::get('/about', [CommonController::class,'about' ])->name('about');
Route::get('/services', [CommonController::class,'services' ])->name('services');
//Route::get('/services', [CommonController::class,'services' ])->name('services');
Route::get('/casestudies', [CommonController::class,'casestudies' ])->name('casestudies');
Route::get('/ourteam', [CommonController::class,'ourteam' ])->name('ourteam');
Route::get('/courses', [CommonController::class,'courses' ])->name('courses');
Route::get('/careers', [CommonController::class,'careers' ])->name('careers');
Route::get('/contact', [CommonController::class,'contact' ])->name('contact');
Route::get('/demorequest', [CommonController::class,'demorequest' ])->name('demorequest');
Route::get('/lms', [CommonController::class,'lms' ])->name('lms');
Route::get('/ecommerce', [CommonController::class,'ecommerce' ])->name('ecommerce');

//Request For a Demo Section Route
Route::post('/requestfordemo', [CommonController::class,'requestfordemo' ]) ;

//Contact Route
Route::post('/contactwithus', [CommonController::class,'contactwithus' ]) ;

//Product Add Route
Route::post('/addproduct', [ProductController::class, 'productstore']);
Route::get('/productadd', function () {
    return view('product.productadd');
});

//All Products Show Route
Route::get('/productshow', [ProductController::class, 'productshow']);

//Edit and Delete Product
Route::get('/productedit/{id}', [ProductController::class,'productedit' ]) ;
Route::post('/producteditprocess/{id}', [ProductController::class,'producteditprocess' ]) ;
Route::get('/deleteproduct/{id}', [ProductController::class,'deleteproduct' ]) ;

//Shop Add Routes
Route::post('/addshop', [ShopController::class, 'shopstore']);
/*Route::get('/shopadd', function () {
    return view('shop.shopadd');
});*/
Route::get('/shopadd', [ShopController::class, 'shopadd']);

//All Shop Show Route
Route::get('/shopshow', [ShopController::class, 'shopshow']);

//Edit and Delete Shop
Route::get('/shopedit/{id}', [ShopController::class,'shopedit' ]) ;
Route::post('/shopeditprocess/{id}', [ShopController::class,'shopeditprocess' ]) ;
Route::get('/deleteshop/{id}', [ShopController::class,'deleteshop' ]) ;

//SR Add Routes
Route::post('/addsr', [SrController::class, 'srstore']);
Route::get('/sradd', function () {
    return view('sr.sradd');
});

//All SR Show Route
Route::get('/srshow', [SrController::class, 'srshow']);

//Edit and Delete SR
Route::get('/sredit/{id}', [SrController::class,'sredit' ]) ;
Route::post('/sreditprocess/{id}', [SrController::class,'sreditprocess' ]) ;
Route::get('/deletesr/{id}', [SrController::class,'deletesr' ]) ;

//Deliveryman Add Routes
Route::post('/adddeliveryman', [DeliverymanController::class, 'deliverymanstore']);
Route::get('/deliverymanadd', function () {
    return view('deliveryman.deliverymanadd');
});

//All Deliveryman Show Route
Route::get('/deliverymanshow', [DeliverymanController::class, 'deliverymanshow']);

//Edit and Delete Deliveryman
Route::get('/deliverymanedit/{id}', [DeliverymanController::class,'deliverymanedit' ]) ;
Route::post('/deliverymaneditprocess/{id}', [DeliverymanController::class,'deliverymaneditprocess' ]) ;
Route::get('/deletedeliverytman/{id}', [DeliverymanController::class,'deletedeliverytman' ]) ;

//Expense Add Routes
Route::post('/addexpensename', [ExpenseController::class, 'expensenamestore']);
Route::get('/expensenameadd', function () {
    return view('expense.expensenameadd');
});

//All Expense Show Route
Route::get('/expensenameshow', [ExpenseController::class, 'expensenameshow']);

//Edit and Delete Expense
Route::get('/expensenameedit/{id}', [ExpenseController::class,'expensenameedit' ]) ;
Route::post('/expensenameeditprocess/{id}', [ExpenseController::class,'expensenameeditprocess' ]) ;
Route::get('/deleteexpensename/{id}', [ExpenseController::class,'deleteexpensename' ]) ;

//Expense Name Add Routes
Route::post('/addexpense', [ExpenseController::class, 'expensestore']);
/*Route::get('/expenseadd', function () {
    return view('expense.expenseadd');
});*/
Route::get('/expenseadd', [ExpenseController::class, 'expenseadd']);

//Others Expense Add
Route::post('/addexpenseothers', [ExpenseController::class, 'othersexpensestore']);
Route::get('/expenseaddothers', [ExpenseController::class, 'expenseaddothers']);
//All Expense Show Route
Route::get('/expenseshow', [ExpenseController::class, 'expenseshow']);

//Individual Expense Show Route
Route::get('/expenseshowjahangir', [ExpenseController::class, 'expenseshowjahangir']);
Route::get('/expenseshowyeasin', [ExpenseController::class, 'expenseshowyeasin']);
Route::get('/expenseshowhridoy', [ExpenseController::class, 'expenseshowhridoy']);
Route::get('/expenseshowsajid', [ExpenseController::class, 'expenseshowsajid']);
Route::get('/expenseshowothers', [ExpenseController::class, 'expenseshowothers']);

//Edit and Delete Expense Name
Route::get('/expenseedit/{id}', [ExpenseController::class,'expenseedit' ]) ;
Route::post('/expenseeditprocess/{id}', [ExpenseController::class,'expenseeditprocess' ]) ;
Route::get('/deleteexpense/{id}', [ExpenseController::class,'deleteexpense' ]) ;

//Offer Add Routes
Route::post('/addoffer', [OfferController::class, 'offerstore']);
/*Route::get('/offeradd', function () {
    return view('offer.offeradd');
});*/
Route::get('/offeradd', [OfferController::class, 'offeradd']);

//All Offer Show Route
Route::get('/offershow', [OfferController::class, 'offershow']);

//Edit and Delete Offer
Route::get('/offeredit/{id}', [OfferController::class,'offeredit' ]) ;
Route::post('/offereditprocess/{id}', [OfferController::class,'offereditprocess' ]) ;
Route::get('/deleteoffer/{id}', [OfferController::class,'deleteoffer' ]) ;


//Product Cart Routes
Route::get('/productcart', [ProductController::class, 'productcart'])->name('productcart');

//Product Cart Front Routes
Route::get('/', [ProductController::class, 'productcartfront'])->name('productcartfront');


//Return Cart Routes
Route::get('/returncart', [ProductController::class, 'returncart'])->name('returncart');

//Company Cart Routes
Route::get('/companycart', [ProductController::class, 'companycart'])->name('companycart');


// Cart Routes for Product
Route::group(['prefix' => 'carts'], function () {
  Route::get('/', [CartsController::class, 'index'])->name('carts');
  Route::get('/cartshome', [CartsController::class, 'cartshome'])->name('cartshome');
  Route::post('/store', [CartsController::class, 'store'])->name('carts.store');
  Route::post('/update/{id}', [CartsController::class, 'update'])->name('carts.update');
  Route::post('/delete/{id}', [CartsController::class, 'destroy'])->name('carts.delete');
});

// Checkouts Routes for Product
Route::group(['prefix' => 'checkout'], function () {
  Route::get('/', [CheckoutsController::class, 'index'])->name('checkouts');
  Route::post('/store', [CheckoutsController::class, 'store'])->name('checkouts.store');
});

// Checkouts Routes for Product Front
Route::group(['prefix' => 'checkoutfront'], function () {
  Route::get('/', [CheckoutsController::class, 'cehckoutfront'])->name('checkoutfront');
  Route::post('/frontstore', [CheckoutsController::class, 'frontstore'])->name('checkouts.frontstore');
});

// Cart Routes for Product Return
Route::group(['prefix' => 'cartsreturn'], function () {
  Route::get('/', [ReturnController::class, 'index'])->name('returncarts');
  Route::post('/store', [ReturnController::class, 'store'])->name('returncarts.store');
  Route::post('/update/{id}', [ReturnController::class, 'update'])->name('returncarts.update');
  Route::post('/delete/{id}', [ReturnController::class, 'destroy'])->name('returncarts.delete');
});

// Checkouts Routes for Product Return
Route::group(['prefix' => 'checkoutreturn'], function () {
  Route::get('/', [ReturnCheckoutsController::class, 'index'])->name('returncheckouts');
  Route::post('/store', [ReturnCheckoutsController::class, 'store'])->name('returncheckouts.store');
});

// Cart Routes for Company Product Return
Route::group(['prefix' => 'companycarts'], function () {
  Route::get('/', [CompanyController::class, 'index'])->name('companycarts');
  Route::post('/store', [CompanyController::class, 'store'])->name('companycarts.store');
  Route::post('/update/{id}', [CompanyController::class, 'update'])->name('companycarts.update');
  Route::post('/delete/{id}', [CompanyController::class, 'destroy'])->name('companycarts.delete');
});

// Checkouts Routes for Company Product Return
Route::group(['prefix' => 'companycheckout'], function () {
  Route::get('/', [CompanyCheckoutsController::class, 'index'])->name('companycheckouts');
  Route::post('/store', [CompanyCheckoutsController::class, 'store'])->name('companycheckouts.store');
});


/*Routes for all Reports */
Route::get('/dailyreport', [ReportController::class,'dailyreport' ])->name('dailyreport');
Route::get('/monthlyreport', [ReportController::class,'monthlyreport' ])->name('monthlyreport');
Route::get('/datewisereport', [ReportController::class,'datewisereport' ])->name('datewisereport');

//Edit and Delete Offer
Route::get('/dueedit/{id}', [DueController::class,'dueedit' ]) ;
Route::post('/dueditprocess/{id}', [DueController::class,'dueditprocess' ]) ;
Route::get('/deletedue/{id}', [DueController::class,'deletedue' ]) ;

//Stock List Table
/*Route::get('/stocklist', function () {
    return view('stock.stocklist');
});

//Damage Product List Table
Route::get('/damageproductlist', function () {
    return view('stock.damageproductlist');
});

//Due List Table
Route::get('/duetable', function () {
    return view('stock.duetable');
});*/

//Daily Sales Table
Route::get('/dailysales', function () {
    return view('stock.dailysales');
});

//Daily Delivery Table
Route::get('/dailydelivery', function () {
    return view('stock.dailydelivery');
});

//Daily Sales Report
Route::get('/dailysalesreport', function () {
    return view('stock.dailysalesreport');
});

//Stock Add Route
Route::post('/addstock', [StockController::class, 'stockstore']);
/*Route::get('/stockadd', function () {
    return view('stock.stockadd');
});*/
Route::get('/stockadd', [StockController::class, 'stockadd']);

//All Stock Show Route
Route::get('/stockshow', [StockController::class, 'stockshow']);

//Edit and Delete Stock
Route::get('/stockedit/{id}', [StockController::class,'stockedit' ]) ;
Route::post('/stockeditprocess/{id}', [StockController::class,'stockeditprocess' ]) ;
Route::get('/deletestock/{id}', [StockController::class,'deletestock' ]) ;

//Damage Product Add Route
Route::post('/adddamageproduct', [StockController::class, 'damageproductstore']);
/*Route::get('/damageproductadd', function () {
    return view('stock.damageproductadd');
});*/

Route::get('/damageproductadd', [StockController::class, 'damageproductadd']);

//Damage Product Show Route
Route::get('/damageproductkshow', [StockController::class, 'damageproductkshow']);

//Edit and Delete Damage Product 
Route::get('/damageproductedit/{id}', [StockController::class,'damageproductedit' ]) ;
Route::post('/damageproducteditprocess/{id}', [StockController::class,'damageproducteditprocess' ]) ;
Route::get('/deletedamageproduct/{id}', [StockController::class,'deletedamageproduct' ]) ;

/* Due List Add Route */

//Deliveryman Due

Route::post('/adddue', [StockController::class, 'duestore']);
/*Route::get('/dueadd', function () {
    return view('stock.dueadd');  
});*/
Route::get('/dueadd', [StockController::class, 'dueadd']);

//Others Due
Route::post('/adddueothers', [StockController::class, 'othersduestore']);
Route::get('/dueaddothers', [StockController::class, 'dueaddothers']);

//Due Show Route
Route::get('/dueshow', [StockController::class, 'dueshow']);

//Due Show individually
Route::get('/dueshowjahangir', [StockController::class, 'dueshowjahangir']);
Route::get('/dueshowyeasin', [StockController::class, 'dueshowyeasin']);
Route::get('/dueshowhridoy', [StockController::class, 'dueshowhridoy']);
Route::get('/dueshowsajid', [StockController::class, 'dueshowsajid']);
Route::get('/dueshowothers', [StockController::class, 'dueshowothers']);

//Edit and Delete Due 
Route::get('/dueedit/{id}', [StockController::class,'dueedit' ]) ;
Route::post('/dueeditprocess/{id}', [StockController::class,'dueeditprocess' ]) ;
Route::get('/deletedue/{id}', [StockController::class,'deletedue' ]) ;

//Add Collection Route
Route::get('/collectionadd', [StockController::class, 'collectionadd']);
Route::post('/addcollection', [StockController::class, 'collectionstore']);

//Add Others Collection
Route::get('/collectionaddothers', [StockController::class, 'collectionaddothers']);
Route::post('/addcollectionothers', [StockController::class, 'otherscollectionstore']);

//Collection Show Route
Route::get('/showcollection', [StockController::class, 'showcollection']);

//Colllection Show Individually Routes
Route::get('/showcollectionjahangir', [StockController::class, 'showcollectionjahangir']);
Route::get('/showcollectionyeasin', [StockController::class, 'showcollectionyeasin']);
Route::get('/showcollectionhridoy', [StockController::class, 'showcollectionhridoy']);
Route::get('/showcollectionsajid', [StockController::class, 'showcollectionsajid']);
Route::get('/showcollectionothers', [StockController::class, 'showcollectionothers']);

//Edit and Delete Collection 
Route::get('/collectionedit/{id}', [StockController::class,'collectionedit' ]) ;
Route::post('/collectioneditprocess/{id}', [StockController::class,'collectioneditprocess' ]) ;
Route::get('/deletecollection/{id}', [StockController::class,'deletecollection' ]) ;

//Collection Statement Show Route
Route::get('/collectionstatement', [StockController::class, 'showcollectionstatement']);

//Edit and Delete Collection 
Route::get('/collectionstatementedit/{id}', [StockController::class,'collectionstatementedit' ]) ;
Route::post('/collectionstatementeditprocess/{id}', [StockController::class,'collectionstatementeditprocess' ]) ;
Route::get('/deletecollectionstatement/{id}', [StockController::class,'deletecollectionstatement' ]) ;


/* Daily Sales Route */

//Jahangir
Route::post('/adddailysale', [StockController::class, 'dailysalestore']);
Route::get('/dailaysaleadd', [StockController::class, 'dailysaleadd']);

//Yesasin
Route::post('/adddailysaleyeasin', [StockController::class, 'yeasindailysalestore']);
Route::get('/dailaysaleaddyeasin', [StockController::class, 'dailaysaleaddyeasin']);

//Hridoy
Route::post('/adddailysalehridoy', [StockController::class, 'hridoydailysalestore']);
Route::get('/dailaysaleaddhridoy', [StockController::class, 'dailaysaleaddhridoy']);

//Sajid
Route::post('/adddailysalesajid', [StockController::class, 'sajiddailysalestore']);
Route::get('/dailaysaleaddsajid', [StockController::class, 'dailaysaleaddsajid']);

//Daily Sale Show Route
Route::get('/dailysaleshow', [StockController::class, 'dailysaleshow']);

//Individual Sale
Route::get('/showjahangirsale', [StockController::class, 'showjahangirsale']);
Route::get('/showyeasinsale', [StockController::class, 'showyeasinsale']);
Route::get('/showhridoysale', [StockController::class, 'showhridoysale']);
Route::get('/showsajidsale', [StockController::class, 'showsajidsale']);

//Show Sale by Date Range
Route::get('/datewisesale', [StockController::class, 'datewisesale']);

//Edit and Delete Daily Sale 
Route::get('/dailysaleedit/{id}', [StockController::class,'dailysaleedit' ]) ;
Route::post('/dailysaleeditprocess/{id}', [StockController::class,'dailysaleeditprocess' ]) ;
Route::get('/deletedailysale/{id}', [StockController::class,'deletedailysale' ]) ;

//Daily Report
Route::post('/dailyreport', [StockController::class, 'dailyreport']);

//Datewise Report
Route::get('/reportdatewise', [StockController::class, 'reportdatewise']);
Route::post('/getdatewisereport', [StockController::class, 'getdatewisereport']);

//Monthly Report
Route::get('/reportemonthwise', [StockController::class, 'reportemonthwise']);
Route::post('/getmonthwisereport', [StockController::class, 'getmonthwisereport']);

