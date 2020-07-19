 
<html>
<head>
	<title></title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/s1.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Oswald:wght@300&display=swap" rel="stylesheet">  

<link rel="stylesheet" type="text/css" href="../css/bmextra.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">PcPartPicker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
           
    <ul class="navbar-nav ml-auto">
      <li class="nav-item ">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="#">Completed Bills</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="service.php">Gear Store</a>
      </li>

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
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







