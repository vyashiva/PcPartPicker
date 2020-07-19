
<?php
session_start();
//$_SESSION["pc_case"]=$_POST['pcase'];

include ("connection.php");


$str=mysqli_query( $con, "select * from processor WHERE number='".$_SESSION["cpu_number"]."'");
while ($row=mysqli_fetch_assoc($str))
    {   $_SESSION["c_company"] = $row['company'];
        $_SESSION["c_model"] = $row['model'];
        $_SESSION["c_cost"] = $row['cost'];
    }

$str=mysqli_query( $con, "select * from motherboard WHERE number='".$_SESSION["mobo_number"]."'");
    while ($row=mysqli_fetch_assoc($str))
        {   $_SESSION["m_company"] = $row['company'];
            $_SESSION["m_cost"] = $row['cost'];
        }

        

        $str=mysqli_query($con, "select * from ram WHERE number='".$_SESSION["ram_number"]."'");
        
        while ($row=mysqli_fetch_assoc($str))
                {   $_SESSION["r_company"] = $row['company'];
                    $_SESSION["r_cost"] = $row['cost'];
                }


        $str=mysqli_query($con, "select * from graphics_card WHERE number='".$_SESSION["selected_gcard"]."'");
        
        while ($row=mysqli_fetch_assoc($str))
            {   $_SESSION["g_company"] = $row['company'];
                $_SESSION["g_cost"] = $row['cost'];
            }



            $str=mysqli_query($con, "select * from power_supply WHERE number='".$_SESSION["selected_psupply"]."'");
            
            while ($row=mysqli_fetch_assoc($str))
                    {   
                        $_SESSION["p_company"] = $row['company'];
                        $_SESSION["p_cost"] = $row['cost'];
                    }
    
    
            $str=mysqli_query($con, "select * from storage WHERE number='".$_SESSION["storage"]."'");
            
            while ($row=mysqli_fetch_assoc($str))
                    {   
                                $_SESSION["s_company"] = $row['company'];
                               // $_SESSION["s_cost"] = $row['cost'];
                            } 
    
                      
            $str=mysqli_query($con, "select * from pc_case WHERE id='".$_SESSION["pc_case"]."'");
            
             while ($row=mysqli_fetch_assoc($str))
             {   $_SESSION["pc_company"] = $row['company'];
                    $_SESSION["pc_cost"] = $row['cost'];
             }


             $total_cost=($_SESSION["c_cost"]+$_SESSION["m_cost"]+$_SESSION["r_cost"]+$_SESSION["g_cost"]+$_SESSION["p_cost"]+/*$_SESSION["s_cost"]+*/$_SESSION["pc_cost"]);
                 
             
             $cart_number=rand(10000,99999);
?>
  
<html>
	<head>
    <link rel="icon" href="../img/logo1.png">
		<meta charset="utf-8">
        <title>Invoice</title>
        <style>
            .invoicecontain{
                text-align:center;
                border-width :5px;
                border-style: double;
                border-color: black;
                display:inline-block;
                width:60%;
                left:400px;
                padding:1%;

            }

            img{
                width:150px;
                height:auto;
            }
            </style>
	</head>
	<body style="text-align:center;">
    <div class="invoicecontain">

        <span><img alt="BuildFreak Logo" src="../img/logo1.png"></span>
		<header>
       

			<h1>Invoice</h1>
			<address>
				<p><b>Computer Configuration</b></p>
				<p>Plot No.50, Manke Affluence,<br> Paud Rd,<br> opp. Krishna Hospital,<br> Rambaug Colony,<br> Kothrud,<br> Pune,<br> Maharashtra 411038</p>
				<p>(+91) 8385980140<br>(+91) 9922463408<br>(+91) 6354905195</p>
			</address>
        </header>
        

		<article>
			<!--<h1>Recipient</h1>-->
			<address>
				<!--Email Id : &nbsp; <?php echo $_SESSION["email"]; ?>-->
            </address>
            </article>   
       <!-- <div class="invoicecontain">-->
			<table style="margin-left :40%;">
				<tr>
					<th>Invoice #</th>
					<td><?php echo $cart_number ?></td>
                </tr>
                <?php

                date_default_timezone_set("Asia/Kolkata");
                echo "<tr><th>Date : </th><td>".date('Y-m-d')."</td></tr><br/>";
                echo "<tr><th>Time : </th><td>".date("h-i-sa")."</td></tr><br/>";

                ?>
				
				
            </table>
        <!--</div>
        <div class="invoicecontain">-->

			<table  style="border-width:5px;border-color:black;border-style:solid;">
				
					<tr>
                        <th>Number</th>
						<th>Company</th>
						<th>Price</th>
					</tr>
				   				
					<tr>
                        <td><?php echo $_SESSION["cpu_number"]; ?></td>
						<td><?php echo $_SESSION["c_company"]; ?></td>
						<td><?php echo $_SESSION["c_cost"]; ?></td>
					</tr>
                
                    
                    <tr>
                        <td><?php echo $_SESSION["mobo_number"]; ?></td>
						<td><?php echo $_SESSION["m_company"]; ?></td>
						<td><?php echo $_SESSION["m_cost"]; ?></td>
                    </tr>
               
                    <tr>
                        <td><?php echo $_SESSION["ram_number"]; ?></td>
						<td><?php echo $_SESSION["r_company"]; ?></td>
						<td><?php echo $_SESSION["r_cost"]; ?></td>
                    </tr>
                    
                  
                    <tr>
                        <td><?php echo $_SESSION["selected_gcard"]; ?></td>
						<td><?php echo $_SESSION["g_company"]; ?></td>
						<td><?php echo $_SESSION["g_cost"]; ?></td>
                    </tr>
                   

                    <tr>
                        <td><?php echo $_SESSION["selected_psupply"]; ?></td>
						<td><?php echo $_SESSION["p_company"]; ?></td>
						<td><?php echo $_SESSION["p_cost"]; ?></td>
                    </tr>
                  
                    <tr>
                        <td><?php echo $_SESSION["storage"]; ?></td>
						<td><?php echo $_SESSION["s_company"]; ?></td>
						<td><?php echo $_SESSION["s_cost"]; ?></td>
                    </tr>
                  
                    <tr>
                        <td><?php echo $_SESSION["pc_case"]; ?></td>
						<td><?php echo $_SESSION["pc_company"]; ?></td>
						<td><?php echo $_SESSION["pc_cost"]; ?></td>
					</tr>
            
            <!--</table>


			
			<table  style="margin-left :40%;">-->
				<tr>
					<th>Total</th>
					<td><?php echo $total_cost;?></td>
				</tr>
            </table>
            
       
        
		<aside>
			<h1>Additional Notes</h1>
			<div>
				<p>All Prices are Inclusive of taxes.</p>
			</div>
        </aside>

        <button onclick="printinvoice()">Print Invoice</button>

        <a href="../index.php">Home</a>
        
        </div>


        <script>
            function printinvoice()
            {
                window.print();
            }

            </script>
	</body>
</html>



