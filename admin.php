<?php
include "connect.php";

$result = mysql_query("SELECT*FROM bus"); 
$product_list="";

while($row = mysql_fetch_array($result))
  {
  $b_id= $row['b_id'];
  $coach_no= $row['coach_no'];
  $fare = $row['fare'];
  $price = $row['price'];
  $b_source = $row['b_source'];
  $b_dest = $row['b_dest'];
  $s_counter = $row['s_counter'];
    $d_counter = $row['d_counter'];
  $departing_time = $row['departing_time'];
  $arrival_time = $row['arrival_time'];

    
   $product_list .= "<table class='content' width='99%' border='1'>
                     <tr >
					 <td width='60' align='center'>$coach_no</td>
                      <td width='60' align='center'> $fare</td>
					  <td width='60' align='center'>$price</td>
					  <td width='60' align='center'>$b_source</td>
					  <td width='60' align='center'>$b_dest</td>
					  <td width='60' align='center'>$s_counter</td>
					  <td width='60' align='center'>$d_counter</td>
					  <td width='60' align='center'>$departing_time</td>
					   <td width='60' align='center'>$arrival_time</td>
                      <td width='60' align='center'><a href='delete.php?seat=$b_id'>Delete</a></td>
					  <td width='60' align='center'><a href='edit.php?edit=$b_id'>Edit</a></td>
                      </tr>
                    </table>";    
  }
 ?>
<?php
//product number
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
            
            <center><p class='prcTxt'>Total Price: &nbsp;<span class='prcTxtValue'><?php echo $productPrice; ?>TK</span></p></center>
     </div> 
	<div class="footer1">
	
<p>@Copyright all right resarved</p>
</div>	
  </body>         			
</html>		