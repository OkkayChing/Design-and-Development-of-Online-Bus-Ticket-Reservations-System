<?php session_start(); ?>
<?php
include "connect.php";
$list="";
$msg ="";
$SQL = mysql_query("SELECT * FROM `booking` WHERE `booked`=0");
		while($row = mysql_fetch_array($SQL)){
		$seat =  $row['seat'];
		$coach=$row['coach'];
		$seatID = $row['seat_id'];
		$phone_number= $row['phone_number'];
		$gender= $row['gender'];
		$from= $row['from'];
	    $to= $row['to'];
		$price= $row['price'];
		$list .= "<option value='$seatID'>$seat</option>";
		}
if(isset($_POST['coach']) && isset($_POST['seat']) && isset($_POST['customerInfo']) &&  isset($_POST['phone_number']) && 
    isset($_POST['gender']) && isset($_POST['from']) && isset($_POST['to']) && isset($_POST['price'])){
	$coach = $_POST['coach'];
	$seatNo = $_POST['seat'];
	if($seatNo==1)
	{
	$seatt="A1";
	}
	else if($seatNo==2)
	{
	$seatt="A2";
	}
	else if($seatNo==3)
	{
	$seatt="A3";
	}
	else if($seatNo==4)
	{
	$seatt="A4";
	}
	else if($seatNo==5)
	{
	$seatt="B1";
	}
	else if($seatNo==6)
	{
	$seatt="B2";
	}
	else if($seatNo==7)
	{
	$seatt="B3";
	}
	else if($seatNo==8)
	{
	$seatt="B4";
	}
	else if($seatNo==9)
	{
	$seatt="C1";
	}
	else if($seatNo==10)
	{
	$seatt="C1";
	}
	else if($seatNo==11)
	{
	$seatt="C3";
	}
	else if($seatNo==12)
	{
	$seatt="C4";
	}
	else if($seatNo==13)
	{
	$seatt="D1";
	}
	else if($seatNo==14)
	{
	$seatt="D2";
	}
	else if($seatNo==15)
	{
	$seatt="D3";
	}
	else if($seatNo==16)
	{
	$seatt="D4";
	}
	else if($seatNo==17)
	{
	$seatt="E1";
	}
	else if($seatNo==18)
	{
	$seatt="E2";
	}
	else if($seatNo==19)
	{
	$seatt="E3";
	}
	else if($seatNo==20)
	{
	$seatt="E4";
	}
	
	$customerInfo = $_POST['customerInfo'];
	$phone_number= $_POST['phone_number'];
    $gender= $_POST['gender'];
    $from= $_POST['from'];
	$to= $_POST['to'];
	$price= $_POST['price'];
	mysql_query("UPDATE `booking` SET `booked`=1,`coach`='$coach',`customerinfo`='$customerInfo',`phone_number`='$phone_number',`gender`='$gender',
	`from`='$from', `to`='$to',`price`='$price' WHERE `seat_id`='$seatNo'");
    
	$insertSQL = mysql_query("INSERT INTO`record`(`coach`,`seat`,`b_source`,`b_dest`,`adding_date`,`adding_time`) 
     VALUES ('$coach','$seatt','$from','$to',CURDATE(),CURTIME())");
     header("Location:".$_SERVER['PHP_SELF']);
} 
?>

<?php

global $bus,$price,$s_counter,$d_counter;
if(isset($_POST['selected_bus'])){
$_SESSION['$bus']=$bus=$_POST['selected_bus'];
$query  = "select * from bus where b_id='$bus'";
$res    = mysql_query($query);
while($row = mysql_fetch_array($res))
  {
 $_SESSION['$bus']= $bus = $row['coach_no'];
 $_SESSION['$price']=$price = $row['price'];
 $_SESSION['$s_counter']= $s_counter = $row['s_counter'];
 $_SESSION['$d_counter']= $d_counter = $row['d_counter'];
  }
}
?>
<?php
$url1=$_SERVER['REQUEST_URI'];
header("Refresh: 330; URL=$url1");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Book Your Seat</title>
	<link href="css/bootstrap.css" rel="stylesheet" />
	<link href="css/bootstrap-theme.css" rel="stylesheet" />
	<link href="css/main.css" rel="stylesheet" />
</head>
<body>
	<?php include 'navbar_fragment.php'; ?>
	<center><h1>Book Your Seat</h1></center>
	<div class="container">
	    <div class="infoform">
		<form id="booking" action="book_ticket.php" method='POST' class='form'>
	    <fieldset>
		<label>Coach No:</label>
		<select name="coach">
		<option value="<?php echo $_SESSION['$bus'];?>"><p><?php echo $_SESSION['$bus'];?></p></option>
	    </select>
		<label>Select Seat:</label>
		<select name="seat">
			<?php
				echo $list;
		    ?>
		</select>
		<br/>
		<label>Name:</label>
		<input type="text" name="customerInfo" placeholder="Name" />
		<br/>
		<label>Phone Number:</label>
		<input type="text" name="phone_number" placeholder="Phone Number" />
		<br/><br/>
		<label>Gender:</label>
		<select name="gender">
		<option value="">...</option>
		<option value="Male">Male</option>
		<option value="Female">Female</option>
		</select>
		<br/>
		<label>From:</label>
		<select name="from">
		<option value="<?php echo $_SESSION['$s_counter'];?>"></b><p><?php echo $_SESSION['$s_counter'];?></p></option>
		</select>
		<label>To:</label>
		<select name="to">
		<option value="<?php echo $_SESSION['$d_counter'];?>"><p><?php echo $_SESSION['$d_counter'];?></p></option>
		</select>
		<br/>
		<label>Price:</label>
		<select name="price">
		<option value="<?php echo $_SESSION['$price'];?>"><p><?php echo $_SESSION['$price'];?></p></option>
		</select>
		<br/><br/>
		<button class="btn btn-success" type="submit" value='Book'> BOOK </button>
		<br/><br/> 
		</fieldset>
	    </form>
		</div>
		<div class="space"></div>
		<?php include "seatplan.php" ?>
	</div>
	<?php include "footer.php" ?>
	<?php include 'navbar_fragment.php'; ?>
</body>
</html>