
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>CPU</title>
	
	<link rel="stylesheet" type="text/css" href="../css/page1.css">
	<link rel="stylesheet" type="text/css" href="../css/bmextra.css">

    <link rel="stylesheet" href="css/cart.css" />
<meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="css/boostrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato|Open+Sans" rel="stylesheet" />

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  	<a class="navbar-brand" href="#">PcPartPicker</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  	<span class="navbar-toggler-icon"></span>
  	</button>
	
	 <ul class="navbar-nav ml-auto">
	 <li class="nav-item active">

                <a href="cart.php"class="btn btn-outline-warning">Shop</a>
                <a href="user_adress.php"class="btn btn-outline-info">Shopping cart</a>
                <a href="logout.php"class="btn btn-outline-danger">Log out</a>
	</li>
	</ul>
	</nav>



<div id="m_case">
<form method="post" action="fetch_mobo.php">
<?php
session_start();

/*echo "<div id='session_print' style='position : fixed;display:block;top:3%;left:144px;'>";
echo "Logged in as: ".$_SESSION["loggedin_user"];
echo "</div>";

echo "<div id='logout' style='position : fixed;display:block;top:3%;right:144px;'>";
echo "<a href='../login.php' style='color:white;'>Logout</a>";
echo "</div>";

$dbservername = "localhost";
$dbusername = "root";
$dbpassword = "Mrunal@123";
$dbname="pcbuilder";
// Create connection
$conn = mysqli_connect($dbservername, $dbusername, $dbpassword,$dbname);
*/
?>
<table  id="displaytable"> <tr> <th> Select </th> <th>Company</th><th>Model</th><th>Product<br>Number</th> <th> Generation </th> <th>Base Clock </th> <th>Cores</th><th>Socket</th> <th>Ram <br>
Frequency</th> <th>Power</th><th>Overclockable</th><th>Cost</th></tr>
<?php
include ("connection.php");
$str=mysqli_query ($con, "select * from processor");

while ($row=mysqli_fetch_assoc($str))
    {
        $imgpath ="../images/products/processor/3200/";
        $company = $row['company'];
        $model = $row['model'];
        $number = $row['number'];
        $generation = $row['generation'];
        $frequency = $row['frequency'];
        $cores = $row['cores'];
        $socket = $row['socket_pin'];
        $ram_frequency = $row['ram_frequency'];
        $ram_type = $row['ram_type'];
        $power = $row['power'];
        $cost = $row['cost'];
        $overclockable= $row['overclockable'];
        //$file = $row['images'];     // take product img name
        //echo '<div class="r_processor">';

       
       
     //c  $final =$imgpath.$model.".jpg";
     //  echo $final;
     //c  echo '<img src="../images/products/processor/3220/'.$model.'.jpg">';
        echo'<td><input type="radio" required name="cpu"  id="r_cpu"  value="'.$number.'"  onclick="r_cpu_call(this.value)">';   
        echo'<td>'.$company.'
        <td>'.$model.'
        <td>'.$number.'
        <td>'.$generation.'
        <td>'.$frequency.'
        <td>'.$cores.'
        <td>'.$socket.'
        <td>'.$ram_frequency.'
        <td>'.$power.'
        <td>'.$overclockable.'
        <td>'.$cost;
        //echo'<br><p>'.$text;      desc goes here
        //echo '</div>';
        echo '</tr>';
    }
    echo '</table>';
echo'<input type="submit" style="  margin-left:42%;width:20%;margin-top:2%;" class="m_mybutton button1"></button>';
//$userchoice=$_GET['drop'];  //get value from html page
//$userchoice($conn); //call   that function 

?>
<script>
    function r_cpu_call(cpu) 
    {
        var x= cpu;
        document.getElementById("cpushow").innerHTML="CPU selected : "+x;
    }
</script>    

<p id="cpushow"></p>
</form>
</div>

</body>
</html>