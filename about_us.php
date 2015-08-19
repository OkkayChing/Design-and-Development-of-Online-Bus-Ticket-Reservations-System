<?php
include "connect.php";

$list="";
$msg ="";
$SQL = mysql_query("SELECT * FROM `booking` WHERE `booked`=0");
		while($row = mysql_fetch_array($SQL)){
		$seatID = $row['seat_id'];
		$seat =  $row['seat'];
		$phone_number= $row['phone_number'];
		$gender= $row['gender'];
		$from= $row['from'];
	    $to= $row['to'];
		$price= $row['price'];
		
		$list .= "<option value='$seatID'>$seat</option>";
}

if(isset($_POST['seat']) && isset($_POST['customerInfo']) &&  isset($_POST['phone_number']) && 
isset($_POST['gender']) && isset($_POST['from']) && isset($_POST['to']) && isset($_POST['price'])){
	
	$seatNo = $_POST['seat'];
	$customerInfo = $_POST['customerInfo'];
	$phone_number= $_POST['phone_number'];
    $gender= $_POST['gender'];
    $from= $_POST['from'];
	$to= $_POST['to'];
	$price= $_POST['price'];
	mysql_query("UPDATE `booking` SET `booked`=1,`customerinfo`='$customerInfo',`phone_number`='$phone_number',`gender`='$gender',
	`from`='$from', `to`='$to',`price`='$price' WHERE `seat_id`='$seatNo'");
	header("Location:".$_SERVER['PHP_SELF']);
	
   
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link href="css/bootstrap.css" rel="stylesheet" />
	<link href="css/bootstrap-theme.css" rel="stylesheet" />
	<link href="css/main.css" rel="stylesheet" />
	
	<body onload="javascript:setTimeout("location.reload(true);",5000);">
</head>
<body>
	<?php include 'navbar_fragment.php'; ?>
	
   <center><marquee align="middle" width="60%" behavior="scroll" ><h1 style="font-family:courier">Design and Developement of Online Bus Ticket Resarvation System</marquee></center>
	</h1>
<div class="contenta">	
	<div class="term">
  <img class="t" src="images/about-us.jpg" width="1307" height="380">
	</div>
	
<div class="des">
<br>
<h2>About us</h2>
National Travels hit the road back in the year 2000 with only 4 luxury Hino coaches and since then there was no looking back. Now our esteemed company own 26 vehicles and there are more to come. When you travel with us we want to ensure you're safe, comfortable and you arrive at your destination on time and this is why we have earned your love and respect and this has helped us grow even bigger.

When travelling with us, we want you to know that your safety is our highest priority. We want you to be safe and comfortable so you can sit back, relax and enjoy the journey with some of the exciting facilities on board. No matter whether you are travelling to see friends or family or you are just going to spend your holidays in a much quieter and relaxed atmosphere than the capital, we make sure our journey is as much exciting.

We offer a generous luggage allowance so that you don’t have to worry about being extra light. However, to avoid any kinds of misfortune we suggest you stay with your luggage until it has been on and off the luggage area.
<div class="c">
<img class="thumbnail" src="images/e.gif" width="207" height="80">
<img class="thumbnail" src="images/b.gif" width="207" height="80">
<img class="thumbnail" src="images/c.gif" width="207" height="80">
<img class="thumbnail" src="images/d.png" width="120" height="80">
<img class="thumbnail" src="images/a.jpg" width="150" height="80">
<center> Improving our technological abilities to take the pressure off our customers’ shoulders by introducing the new e-ticketing system. Now buying tickets will be fun.</center>
</div>	
<br>
</div>
<?php include 'footer.php'; ?>
</body>
</html>