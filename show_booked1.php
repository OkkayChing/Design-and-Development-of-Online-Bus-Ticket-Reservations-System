<?php session_start(); ?>
<?php
include "connect.php";
$result = mysql_query("SELECT*FROM booking WHERE booked=1");
$product_list="";
while($row = mysql_fetch_array($result))
  {
   $Coach= $row['coach'];
   $Name= $row['customerinfo'];
   $Seat = $row['seat'];
   $Gender = $row['gender'];
   $From = $row['from'];
   $To = $row['to'];
   $Price = $row['price'];

    
   $product_list .= "<table class='content' width='99%' border='2'>
                     <tr >
					 <td width='60' align='center'>$Coach</td>
					   <td width='60' align='center'>$Name</td>
                      <td width='60' align='center'>$Seat</td>
					  <td width='60' align='center'>$Gender</td>
					  <td width='60' align='center'>$From</td>
					  <td width='60' align='center'>$To</td>
					  <td width='60' align='center'>$Price</td>
                      <td width='60' align='center'><a href='update.php?seat=$Seat'>Cancel  </a></td>
                      </tr>
                  </table>";    
  }
?>
<?php
$productPriceSQL = mysql_query("SELECT SUM(`price`) FROM `booking`");
$productPrice = mysql_result($productPriceSQL,0);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Show Booking Seat</title>
	<link href="css/bootstrap.css" rel="stylesheet" />
	<link href="css/bootstrap-theme.css" rel="stylesheet" />
	<link href="css/table.css" rel="stylesheet" />
	
	<body onload="javascript:setTimeout("location.reload(true);",5000);">
</head>
<body>
	 <?php include 'navbar_fragment.php'; ?>
     <table class='content' width='99%' border='2'>
        <tr class='contentMainTableHeadRow'>
	    <th width='60' align='center'>Coach no.</th>
        <th width='60' align='center'>Name</th>
        <th width='60' align='center'>Seat</th>
	    <th width='60' align='center'>Gender</th>
        <th width='60' align='center'>From</th>
	    <th width='60' align='center'>To</th>
		<th width='60' align='center'>Price</th>
        <th width='60' align='center'>Cancel</th>
        </tr>
     <?php echo $product_list; ?>
     </table>
     <div class='purchaseTxt'>
	    <center><p class='prcTxt'>Total Price: &nbsp;<span class='prcTxtValue'><?php echo $productPrice;?> $</span></p></center>
	 </div> 
	 <div class='purchaseTxt5'>
	 <center><P>BUY NOW</P></center>
            <center><p><a href="https://www.paypal.com/cgi-bin/webscr?amount_1=<?php echo $productPrice;?>&business=Okkayching45%40gmail.com&cmd=_cart&invoice=1&item_name_1=<?php echo 'Total Price'; ?>&item_number_1=3&return=http%3A%2F%2Flocalhost%3A3000%2F&upload=1"><img class='buy' src='images/paypal.jpg' width="107" height="50" ></a></p></center>
			<center><p><a href="BIKASH.PHP"><img class='buy' src='images/a.jpg' width="107" height="50"></p></center>
     </div>
	 <div class="footer1">
<p>@Copyright all right resarved</p>
</div>	
  </body>         			
</html>		