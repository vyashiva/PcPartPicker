 
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
<div style="background-color:grey;" >
<div style="height:100%;">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  	<a class="navbar-brand" href="../index.php">PcPartPicker</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  	<span class="navbar-toggler-icon"></span>
  	</button>
	
	 <ul class="navbar-nav ml-auto">
	 <li class="nav-item active">

                <a href="../cart.php" class="btn btn-outline-warning">Shop</a>
                <a href="../Shopping_cart.php"class="btn btn-outline-info">Shopping cart</a>
	<a href="Complete.php" class="btn btn-outline-success">Completed Builed PC</a>	
                <a href="../logout.php"class="btn btn-outline-danger">Log out</a>
	</li>
	</ul>
	</nav>


<?php
session_start();
$_SESSION["cpu_number"]=$_POST['cpu'];
?>
	
<form  method="post" action="f1_ram.php" style="font-size:40px; "  >
<div style="color:#FFA500">


<?php

include ("connection.php");

$str=mysqli_query($con, "select * from processor WHERE number='".$_SESSION["cpu_number"]."'");

while ($row=mysqli_fetch_assoc($str))
    {   $_SESSION["company"] = $row['company'];
        $_SESSION["model"] = $row['model'];
        $_SESSION["cpu_generation"]=$row['generation'];
        $_SESSION["frequency"] = $row['frequency'];
        $_SESSION["cores"] = $row['cores'];
        $_SESSION["cpu_socket"]=$row['socket_pin'];
        $_SESSION["cpu_ram_frequency"] = $row['ram_frequency'];
        $_SESSION["cpu_ram_type"] = $row['ram_type'];
        $_SESSION["power"] = $row['power'];
        $_SESSION["cpu_cost"] = $row['cost'];
        $_SESSION["cpu_overclockable"]=$row['overclockable'];
    }





echo "<table border='1px' id='displaytable'><tr><th>Select</th><th>Company</th><th>Product<br>Number</th><th>CPU Socket</th><th>Supported<br>Generation</th><th>Graphics<br>Supported</th><th>Cost</th></tr>";

$str=mysqli_query($con, "select * from motherboard WHERE socket='".$_SESSION["cpu_socket"]."' AND generation >='".$_SESSION["cpu_generation"]."'");
while ($row=mysqli_fetch_assoc($str))
    {
        
        //$imgpath ="media/products/motherboard/";
        $company = $row['company'];
        $number = $row['number'];
        $socket = $row['socket'];
        $generation = $row['generation'];
        $graphics_type = $row['graphics_type'];
        $cost = $row['cost'];
        //$file = $row['images'];     // take product img name
        echo "<tr>";
        echo '<div class="r_motherboard">';
        //echo '<img src="'.$pathx.$file.'" id="eventimg">';
        echo'<td><input type="radio" required name="mobo"  id="r_mobo"  value="'.$number.'"  onclick="r_mobo_call(this.value)">';    
        
        echo'<td>'.$company.'
        <td>'.$number.'
        <td>'.$socket.'
        <td>'.$generation.'
        <td>'.$graphics_type.'
        <td>'.$cost;
        
        //echo'<br><p>'.$text;      desc goes here
        echo '</div>';
        echo "</tr>";
}
echo "</table>";
echo'<input type="submit";width:20%;margin-top:2%;" class="m_mybutton button1"></button>';
?>
<script>
    function r_mobo_call(mobo) {
        var x= mobo;
        document.getElementById("showmobo").innerHTML="Motherboard selected : "+x;
      
    }
</script>
  <p id="showmobo"></p>
</div>
</div>
</div>
</div>

</body>
</html>







