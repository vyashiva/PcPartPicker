<?php

require_once 'core/init.php';

// Check Facebook login
if(isset($_SESSION['Fuid']))
{
    $user = new User();

    // Check if in database exists Fuid
    // if don't, create new user
    if($user->find_FB_ID($_SESSION['Fuid']) == false){

        // Create new user
        $user->add_FB_User();
    }

    // Update lastlogin data
    $user->Last_Loged_Update();

    // Send raports
    $user->Send_IP_Raport();
    $user->Send_PC_Raport();

    // Clear session
    Session::Clear_FB_Login_Session();

    // Redirect into main page
    Redirect::to('index.php');

    // Exit current script
    exit();
}

// Check Google login
if (isset($_SESSION['Guid']))
{
    $user = new User();

    // Check if in database exists Guid
    // if don't, create new user
    if ($user->find_Google_ID($_SESSION['Guid']) == false)
    {
        // Create new user
        $user->add_Google_User();
    }

    // Update lastlogin data
    $user->Last_Loged_Update();

    // Send raports
    $user->Send_IP_Raport();
    $user->Send_PC_Raport();

    // Clear session
    Session::Clear_Google_Login_Session();

    // Redirect into main page
    Redirect::to('index.php');

    // Exit current script
    exit();
}

// Check if $_POST exists
if(Input::exists()) {
    // Check Token
    if(Token::check(Input::get('token'))) {

        // Create Validation instance
        $validate = new Validation();

        $validation = $validate->Login_Validation($_POST);

        // Check validation flag
        if($validate->Check_Flag()) {

            $user = new User();

            // Chech checkbox value
            $remember = (Input::get('remember') === 'on') ? true : false;

            // Try login
            $login = $user->log_In($_POST['username'], $_POST['password'], $remember);

            // If we loged in redirect
            if($login) {

                // Update lastlogin data
                $user->Last_Loged_Update();

                // Send raports
                $user->Send_IP_Raport();
                $user->Send_PC_Raport();

                Redirect::to('index.php');
            }
            else {
                $_SESSION['login_error'] = 'Incorrect username or password';
            }
        }
    }
}

?>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="css/boostrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
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

                <a href="#"class="btn btn-outline-warning">Shop</a>
                <a href="#"class="btn btn-outline-info">Shopping cart</a>
	 <a href="register.php" class="btn btn-outline-success my-2 my-sm-0"> Register </a>
                
	</li>
	</ul>
	</nav>

    <section class="login">
        <div class="container">
            <div class="col-sm-6 offset-sm-3">
                <div id="title">
                    <t>
                        <h1></br><center style="color:orange">LOGIN PAGE</center></h1>
                       </br> <?php
                    if(Session::exists('login_error')){
                    echo '<div class="alert alert-dismissible alert-warning" id="dvi1">';
                    echo '<button type="button" class="close" data-dismiss="alert">&times;</button>';
                    echo '<h4 class="alert-heading">Warning!</h4>';
                    echo '<p class="mb-0">'.Session::flash('login_error').'</p>';
                    echo '</div>';
                    }
                        ?>
                        <form action="#" method="POST">
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="username" placeholder="Enter email" name="username" required />
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required />
                            </div>
                            <div class="form-group form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="remember" name="remember" /> Remember me
                                </label>
                            </div>
                            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>" />
                            </br><center><button type="submit" class="btn btn-primary">Submit</button></center>
                        </form>

                     
                       
                    </t>
                </div>
            </div>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  
</body>
</html>
