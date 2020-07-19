<?php

session_start();

require_once 'RazorPay/config.php';
require_once 'Classes/Redirect.php';

// Check if sessions exists
if (!(isset($_SESSION['UID'])) || !isset($_SESSION['shopping_cart']))
{   
    Redirect::to('index.php');

    exit();
}

?>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="css/boostrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato|Open+Sans" rel="stylesheet" />
    <title>MAIN PAGE</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  	<a class="navbar-brand" href="index.php">PcPartPicker</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  	<span class="navbar-toggler-icon"></span>
  	</button>
	
	 <ul class="navbar-nav ml-auto">
	 <li class="nav-item active">

                <a href="cart.php"class="btn btn-outline-warning">Shop</a>
                <a href="Shopping_cart.php"class="btn btn-outline-info">Shopping cart</a>
                <a href="logout.php"class="btn btn-outline-danger">Log out</a>
	</li>
	</ul>
	</nav>
    <section class="main">
        <div class="container-fluid">
            <div class="col-sm-4 offset-sm-4">
                <div id="title">
                    <t>
                        <h1>Paymant page</h1>
                    </t>
                </div>
                <br />
                <form action="callback_RazorPay.php" method="POST">
                    <script
                        src="https://checkout.razorpay.com/v1/checkout.js"
                        data-key="<?php echo $razor_api_key; ?>"
                        data-amount="<?php echo $_SESSION['total_price']; ?>"
                        data-buttontext="Pay with Razorpay"
                        data-name="RazorPay solution"
                        data-description="Testing"
                        data-image="img url"
                        data-prefill.name="<?php echo $_SESSION['fname']." ".$_SESSION['lname']; ?>"
                        data-prefill.email="<?php echo $_SESSION['email']; ?>"
                        data-prefill.contact="<?php echo $_SESSION['phone']; ?>" ;
                        data-theme.color="#F37254"></script>

                    <!-- Unused information - created for testing -->
                    <input type="hidden" value="<?php echo $_SESSION['fname']; ?>" name="fname" />
                    <input type="hidden" value="<?php echo $_SESSION['lname']; ?>" name="lname" />
                    <input type="hidden" value="<?php echo ($_SESSION['total_price']/100)." $"; ?>" name="total_price" />
                    <input type="hidden" value="<?php echo $_SESSION['phone']; ?>" name="phone" />
                    <input type="hidden" value="<?php echo $_SESSION['email']; ?>" name="email" />
                    <input type="hidden" value="<?php echo $_SESSION['country']; ?>" name="country" />
                    <input type="hidden" value="<?php echo $_SESSION['postal_code']; ?>" name="postal_code" />
                    <input type="hidden" value="<?php echo $_SESSION['place']; ?>" name="place" />
                    <input type="hidden" value="<?php echo $_SESSION['house_number']; ?>" name="house_number" />
                    <input type="hidden" value="<?php echo $_SESSION['UID']; ?>" name="UID" />
                </form>
                <br />
                <a href="order.php" class="btn btn-danger">Just order</a>
               
            </div>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    
</body>
</html>
