<?php
$con = mysqli_connect("localhost","root","") or die('unable to connect');
mysqli_select_db($con, 'database') or die(mysqli_error($con));
?>