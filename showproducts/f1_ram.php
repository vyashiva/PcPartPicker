<?php
session_start();
$_SESSION["mobo_number"]=$_POST['mobo'];
?> 
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


<form  method="post" action="f1_graphics_card.php" style="font-size:40px; "  >
<div style="color:#FFA500">
<?php
/*echo "<div id='session_print' style='position : fixed;display:block;top:3%;left:144px;'>";
echo "Logged in as: ".$_SESSION["loggedin_user"];
echo "</div>";


echo "<div id='logout' style='position : fixed;display:block;top:3%;right:144px;'>";
echo "<a href='../login.php' style='color:white;'>Logout</a>";
echo "</div>";*/


// Create connection
include ("connection.php");
echo "<table border='1px' id='displaytable'><tr><th>Select</th><th>Company</th><th>Product<br>Number</th><th>Frequency</th>
<th>Type</th><th>Capacity</th><th>Cost</th></tr>";
$str=mysqli_query($con, "select * from ram WHERE frequency <= '".$_SESSION["cpu_ram_frequency"]."' AND type = '".$_SESSION["cpu_ram_type"]."'");

while ($row=mysqli_fetch_assoc($str))
    {
        //$imgpath ="media/products/motherboard/";
        $company = $row['company'];
        $number = $row['number'];
        $frequency = $row['frequency'];
        $type = $row['type'];
        $capacity= $row['capacity'];
        $cost = $row['cost'];
        //$file = $row['images'];     // take product img name
        echo '<div class="r_ram">';
        //echo '<img src="'.$pathx.$file.'" id="eventimg">';
        echo '<tr>';
        echo'<td><input type="radio" required name="ram"  id="r_ram"  value="'.$number.'"  onclick="r_ram_call(this.value)">';   
        
        echo'<td>'.$company.'
        <td>'.$number.'
        <td>'.$frequency.'
        <td>'.$type.'
        <td>'.$capacity.'
        <td>'.$cost;
        //echo'<br><p>'.$text;      description goes here
        echo '</div>';
        echo '</tr>';

}
echo '</table>';
echo'<input type="submit" style="  margin-left:42%;width:20%;margin-top:2%;" class="m_mybutton button1"></button>';

?>
<script>
    function r_ram_call(ram) {
        var x= ram;
        document.getElementById("showram").innerHTML="Ram Selected : "+x;
      
    }
</script>
<p id="showram"></p>
</form>
</div>
</div>
</div>
</div>

</body>
</html>







