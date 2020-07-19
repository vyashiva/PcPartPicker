<?php

require_once 'core/init.php';

$user = new User();

// Check if logged in
if(!$user->is_Logged_In()) {
    // If not redirect into main page
    Redirect::to('index.php');
}

// Check if $_POST is inicializated
if(Input::exists()) {
    // Check if Token is correct
    if(Token::check(Input::get('token'))) {

        $validate = new Validation();

        $validation = $validate->Change_Password_Validation($_POST);
    }

    // If validate ok
    if($validate->Check_Flag()) {

        // Check if old password is the same
        if(!Hash::Verify_Password($_POST['current_password'], $user->data()->password)) {
            $_SESSION['validation_error'] = 'Your current password is wrong.';
        }
        else {

            // Hash new password:
            $Hashed_Password = Hash::make_Hash_Password(Input::get('password1'));

            // Prepare query
            $query = "UPDATE users SET password = '{$Hashed_Password}' WHERE UID = '{$user->data()->UID}'";

            // Send query into server
            $user->update($query);

            Session::flash('home', 'Your password has been changed!');

            Redirect::to('index.php');

            exit();
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
    <link href="https://fonts.googleapis.com/css?family=Lato|Open+Sans" rel="stylesheet" />
    <title>Change password</title>
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


    <section class="main">
        <div class="container-fluid">
            <div class="col-sm-4 offset-sm-4">
                <div id="title">
                    <t>
                        <h1></br><center>Change password</h1>
                    </t>
                </div></br>
                <?php
                if (isset($_SESSION['e_password']))
                    $error = Session::flash('e_password');
                if (isset($_SESSION['e_password1']))
                    $error = Session::flash('e_password1');
                if (isset($_SESSION['validation_error']))
                    $error = Session::flash('validation_error');

                if(isset($error)){
                    echo '<div class="alert alert-dismissible alert-warning">';
                    echo '<button type="button" class="close" data-dismiss="alert">&times;</button>';
                    echo '<h4 class="alert-heading">Warning!</h4>';
                    echo '<p class="mb-0">'.$error.'</p>';
                    echo '</div>';
                }
                ?>
                <form action="#" method="POST">
                    <div class="form-group">
                        <label for="current_password">Current Password: </label>
                        <input type="password" class="form-control" id="current_password" name="current_password" minlength="8" placeholder="Current Password:" required title="8 characters minimum" />
                    </div>
                    <div class="form-group">
                        <label for="password1">New Password: </label>
                        <input type="password" class="form-control" id="password1" name="password1" placeholder="New password:" minlength="8" required title="8 characters minimum" />
                    </div>
                    <div class="form-group">
                        <label for="password2">New Password Again: </label>
                        <input type="password" class="form-control" id="password2" name="password2" placeholder="New password:" minlength="8" required title="8 characters minimum" />
                    </div>

                    <input type="hidden" name="token" value="<?php echo Token::generate(); ?>" />
                    </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" name="submit" class="btn btn-primary">Change Password</button>
                </form>
</center>
               
            </div>
        </div>

    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    
</body>
</html>