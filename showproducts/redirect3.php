<?php
session_start();


$_SESSION["cpu_number"]="6400";

$_SESSION["mobo_number"]="H110";

$_SESSION["ram_number"]="CMK8GX4M1A24000C16R";

$_SESSION["selected_gcard"]="GTX 1050 Ti ZT-P105";

$_SESSION["selected_psupply"]="VS550";

$_SESSION["storage"]="STEL4000300";

$_SESSION["pc_case"]="EVOLV";

header("location: final_cart.php");
?>


