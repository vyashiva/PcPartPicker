<?php
session_start();

$_SESSION["cpu_number"]="6100";

$_SESSION["mobo_number"]="GA-H110M-S2";

$_SESSION["ram_number"]="HX424C12FB2";

$_SESSION["selected_gcard"]="GT 710";

$_SESSION["selected_psupply"]="VS550";

$_SESSION["storage"]="STEL4000300";

$_SESSION["pc_case"]="570x";


header("location: final_cart.php");
?>
