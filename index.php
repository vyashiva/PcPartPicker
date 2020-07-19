<?php
require_once 'core/init.php';
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="css/boostrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato|Open+Sans" rel="stylesheet" />
    <title>MAIN PAGE</title>
</head>
<body>
    <section class="main" >
        <div class="container-fluid">
            <div class="col-sm" >
                
                <?php
                if(Session::exists('home')){
                echo '<div class="alert alert-dismissible alert-warning">';
                echo '<button type="button" class="close" data-dismiss="alert">&times;</button>';
                echo '<h4 class="alert-heading">Warning!</h4>';
                echo '<p class="mb-0">'.Session::flash('home').'</p>';
                echo '</div>';
                }
                $user = new User();
                if($user->is_Logged_In()) {
                ?>
	
               
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="width:1488px" >
  	<a class="navbar-brand" href="#">PcPartPicker</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  	<span class="navbar-toggler-icon"></span>
  	</button>
	
	 <ul class="navbar-nav ml-auto">
	 <li class="nav-item active">
                <a href="cart.php"class="btn btn-outline-warning">Shop</a>
                <a href="Shopping_cart.php"class="btn btn-outline-info">Shopping cart</a>
	<a href="showproducts/f1_cpu.php" class="btn btn-outline-warning">Builed Yourself PC</a>
	<a href="showproducts/Complete.php" class="btn btn-outline-success">Completed Builed PC</a>	

<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          User Profile
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="update.php">Update Profile</a>
          <a class="dropdown-item" href="changepassword.php">Change Password</a>
          <a class="dropdown-item" href="logout.php">Log out</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="profile.php">Logged as:</br><a class="dropdown-item" href="profile.php?UID=<?php echo escape($user->data()->UID);?>"> <?php echo escape($user->data()->fullname); ?></a></a>
        </div>
      </li>
 	<a >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>	
	</li>
	</ul>
	</nav>
                <?php
                }
                else{ 
                ?>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">PcPartPicker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
           
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="#">Shop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Builed Yourself PC</a>
      </li>

<li class="nav-item">
<a href="#"class="nav-link">Completed Builed PC</a>
</li>	
      
    </ul>

    <form class="form-inline my-2 my-lg-0">
      <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"> -->
     <form>
		<input class="btn btn-outline-success my-2 my-sm-0"type="button" value="Login" onclick="window.location.href='Login.php'" />
    <input class="btn btn-outline-success my-2 my-sm-0"type="button" value="Register Your Self" onclick="window.location.href='register.php'" />
		

	</form>
      
    </form>
  </div>
</nav>

                
                <?php
                }
                ?>
            </div>
        </div>
    </section>


<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/slider2.jpg" alt="Los Angeles"width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="img/slider7.jpg" alt="Chicago"width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="img/slider9.jpg" alt="New York"width="1100" height="500">
    </div>
  </div>

  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>


<section class="my-5">
	<div class="py-5">
		<h2 class="text-center">About Us</h2>	
	</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-lg-6 col-md-6 col-12">
			<img src="img/los.jpg" class="img-fluid">
		</div>

		<div class="col-lg-6 col-md-6 col-12">
			<h2>I'm interseting in finding new things</h2>
			<p class="py-3">Success doesn’t come from what you do ocassionally. It comes from what you do consistently.
			he Common Thing That Most Of Us Forgot In Life. ...
			Dalai Lama's Wisdom: True Compassion is Your Own Creation. ...
			Dalai Lama's Wisdom: Never Force Anyone To Follow Your Path. ...
			Make Sure Your Future Self Will Thank You For What You Are Doing Now.</p>
			<a href="#" class="btn btn-success"> Check more Quote </a>
		</div>

	</div>
</div>
</section>

	<section class="my-5">
	<div class="py-5">
		<h2 class="text-center">Some Feature Product</h2>	
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="clo-lg-4 col-md-4 col-12">
				<div class="card" >
 		<img class="card-img-top" src="img/qw.jpg" alt="Card image">
 				 <div class="card-body">
  				  <h4 class="card-title">Asus ROG Strix G Core i7 9th Gen </h4>
  				  <p class="card-text">(16 GB/1 TB SSD/Windows 10 Home/4 GB Graphics/NVIDIA Geforce GTX 1650) G531GT-AL150T Gaming Laptop  (15.6 inch, Black, 2.4 kg)</p>
  				  <a href="#" class="btn btn-primary">See Profile</a>
  				  
 				 </div>
			
			</div>
		</div>


		<div class="clo-lg-4 col-md-4 col-12">
				<div class="card" >
 		<img class="card-img-top" src="img/ali.png" alt="Card image">
 				 <div class="card-body">
  				  <h4 class="card-title">Alienware 15 Core i9 8th Gen </h4>
  				  <p class="card-text">32 GB/1 TB HDD/1 TB SSD/Windows 10 Home/8 GB Graphics/NVIDIA Geforce GTX 1080) AW159321TB8S Gaming Laptop  (15.6 inch, Epic Silver, 3.49 kg, With MS Office)</p>
  				  <a href="#" class="btn btn-primary">See Profile</a>
  				  

 				 </div>
			
			</div>
		</div>

		<div class="clo-lg-4 col-md-4 col-12">
				<div class="card" >
 		<img class="card-img-top" src="img/dell.jpg" alt="Card image">
 				 <div class="card-body">
  				  <h4 class="card-title">Dell Vostro 3581</h4>
  				  <p class="card-text">5.6-inch HD Laptop (7th Gen Core i3-7020U/4GB/1TB HDD/Windows 10 + MS Office/Intel HD Graphics/Black).</p>
  				  <a href="#" class="btn btn-primary">See Profile</a>
  				  

 				 </div>
			
			</div>
		</div>
			
	</div>
	</div>
	</section>


  <section class="my-5">
  <div class="py-5">
    <h2 class="text-center">Feature Product</h2>  
  </div>
  <div class="container-fluid">
    <div class="row">
      <div class="clo-lg-4 col-md-4 col-12">
        <div class="card" >
    <img class="card-img-top" src="img/cb.png" alt="Card image">
         <div class="card-body">
            <h4 class="card-title">Corsair Carbide</h4>
            <p class="card-text">SPEC-05 Mid-Tower Gaming Case - Black</p>
            <a href="#" class="btn btn-primary">See Profile</a>
            
         </div>
      
      </div>
    </div>


    <div class="clo-lg-4 col-md-4 col-12">
        <div class="card" >
    <img class="card-img-top" src="img/123.png" alt="Card image">
         <div class="card-body">
            <h4 class="card-title">Ant Esports Superflown</h4>
            <p class="card-text">120 Auto RGB V2 1200 RPM Case Fan/Cooler</p>
            <a href="#" class="btn btn-primary">See Profile</a>
            

         </div>
      
      </div>
    </div>

    <div class="clo-lg-4 col-md-4 col-12">
        <div class="card" >
    <img class="card-img-top" src="img/key.png" alt="Card image">
         <div class="card-body">
            <h4 class="card-title">HP K500F Gaming Keyboard (7ZZ97AA)</h4>
            <p class="card-text">Specially added LED backlight, with monochromatic or mixed light options, showing its elegant temperament
Gaming buttons rated at up to 10 million-clicks, With a thick keyboard with responsive keys</p>
            <a href="#" class="btn btn-primary">See Profile</a>
            

         </div>
      
      </div>
    </div>
      
  </div>
  </div>
  </section>


  <section class="my-5">
  
  <div class="container-fluid">
    <div class="row">
      <div class="clo-lg-4 col-md-4 col-12">
        <div class="card" >
    <img class="card-img-top" src="img/i7.jpg" alt="Card image">
         <div class="card-body">
            <h4 class="card-title">Intel i7 Extreme</h4>
            <p class="card-text">Some example text.</p>
            <a href="#" class="btn btn-primary">See Profile</a>
            
         </div>
      
      </div>
    </div>


    <div class="clo-lg-4 col-md-4 col-12">
        <div class="card" >
    <img class="card-img-top" src="img/i9.jpg" alt="Card image">
         <div class="card-body">
            <h4 class="card-title">Intel i9 Gen </h4>
            <p class="card-text">optimize full power</p>
            <a href="#" class="btn btn-primary">See Profile</a>
           

         </div>
      
      </div>
    </div>

    <div class="clo-lg-4 col-md-4 col-12">
        <div class="card" >
    <img class="card-img-top" src="img/i7.jpg" alt="Card image">
         <div class="card-body">
            <h4 class="card-title">Intel i7 Extreme</h4>
            <p class="card-text">Some example text.</p>
            <a href="#" class="btn btn-primary">See Profile</a>
            

         </div>
      
      </div>
    </div>
      
  </div>
  </div>
  </section>



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

 <footer class="container-fluid text-center navbar-fixed-bottom">
  
</footer>
</body>
</html>

