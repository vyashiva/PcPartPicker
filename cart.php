<?php

require_once 'core/init.php';

$products_id = array();

// Check if Add to Cart button has been submitted
if(filter_input(INPUT_POST, 'add_to_cart')){

    // Check if session shopping cart exists
    if (isset($_SESSION['shopping_cart'])){

        // Check how many products are in shoping cart array
        $count = count($_SESSION['shopping_cart']);

        // Create sequantial array for matching array keys to products id's
        $product_ids = array_column($_SESSION['shopping_cart'], 'id');

        // Check if product exists in $product_ids
        // In don't create new array
        if (!in_array(filter_input(INPUT_GET, 'id'), $product_ids)){
            $_SESSION['shopping_cart'][$count] = array
                (
                    'id' => filter_input(INPUT_GET, 'id'),
                    'name' => filter_input(INPUT_POST, 'name'),
                    'price' => filter_input(INPUT_POST, 'price'),
                    'quantity' => filter_input(INPUT_POST, 'quantity')
                );
        }
        // If product already exists, increase quantity
        // Match array key to id of the product being added to the cart
        else {
            for ($i = 0; $i < count($product_ids); $i++){
                if ($product_ids[$i] == filter_input(INPUT_GET, 'id')){

                    // Add item quantity to the existing product in the array
                    $_SESSION['shopping_cart'][$i]['quantity'] += filter_input(INPUT_POST, 'quantity');
                }
            }
        }
    }
    // If session shopping cart doesn't exist, create first product with array key 0
    // Create array using submitted form data, start from key 0 and fill it with values
    else {
        $_SESSION['shopping_cart'][0] = array
        (
            'id' => filter_input(INPUT_GET, 'id'),
            'name' => filter_input(INPUT_POST, 'name'),
            'price' => filter_input(INPUT_POST, 'price'),
            'quantity' => filter_input(INPUT_POST, 'quantity')
        );
    }
}

// Check action button
if(filter_input(INPUT_GET, 'action') == 'delete'){

    // Loop through all products in the shopping cart until it matches with GET id variable
    foreach($_SESSION['shopping_cart'] as $key => $product){

        // Check if the same id
        if ($product['id'] == filter_input(INPUT_GET, 'id')){

            // Remove product from the shopping cart when it matches with the GET id
            unset($_SESSION['shopping_cart'][$key]);
        }
    }

    // Reset session array keys so they match with $product_ids numeric array
    $_SESSION['shopping_cart'] = array_values($_SESSION['shopping_cart']);
}

//print_r($_SESSION);

function pre_r($array){
    echo '<pre>';
    print_r($array);
    echo '</pre>';
}

?>

<!DOCTYPE HTML>
<html>
<head>
    <title> Shopping Cart </title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/cart.css" />
<meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="css/boostrap.css" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet" />


</head>
<body>
<div style="background-color:grey;" >
<div style="height:100%;">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> 
  	<a class="navbar-brand" href="index.php" >PcPartPicker</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  	<span class="navbar-toggler-icon"></span>
  	</button>
	
	 <ul class="navbar-nav ml-auto">
	 <li class="nav-item active" >

                <a href="cart.php"class="btn btn-outline-warning active" >Shop</a>
                <a href="Shopping_cart.php"class="btn btn-outline-info">Shopping cart</a>
	<a href="showproducts/f1_cpu.php" class="btn btn-outline-warning">Builed Yourself PC</a>
	<a href="showproducts/Complete.php" class="btn btn-outline-success">Completed Builed PC</a>	
                <a href="logout.php"class="btn btn-outline-danger">Log out</a>
	</li>
	</ul>
	</nav>

    <div class="container" " >
</br><H1><b style="font-size:50px"><center style="color:#000000">Products</center></b></H1></br></br>
        <br />
        <?php
        // Create connection with server
        $conn = new Products();

        // Copy results
        $result = $conn->data();

        foreach ($result as $product){
        ?>
        <div class="col-sm-4 col-md-3">
            <form method="post" action="cart.php?action=add&id=<?php echo $product['id']; ?>">
                <div class="products">
                    <img src="<?php echo 'img/'.$product['image']; ?>" class="img-responsive" />
                    <h4 class="text-info">
                        <?php echo $product['name']; ?>
                    </h4>
                    <h4>
                        $ <?php echo $product['price']; ?>
                    </h4>
                    <input type="number" name="quantity" class="form-control" min="1" value="1" />
                    <input type="hidden" name="name" value="<?php echo $product['name']; ?>" />
                    <input type="hidden" name="price" value="<?php echo $product['price']; ?>" />
                    <input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-info" value="Add to Cart" />
                </div>
            </form>
        </div>
        <?php
        }
        ?>
        <div style="clear:both"></div>
        <br />

    </div>
</div>
</div>

</body>
</html>