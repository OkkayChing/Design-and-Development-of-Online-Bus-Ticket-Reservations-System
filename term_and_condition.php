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
  <img class="t" src="images/terms-conditions.jpg" width="1307" height="380">
	</div>
	
<div class="des">
<br>
<h2>Term and Condition</h2>

National Travels try to ensure the accuracy of the content or information on this website (nationaltravels-bd.com)but cannot be liable for the use you make of its content or information.
National Travels cannot guarantee that the Site will be uninterrupted or error free and will not accept any liability if you cannot use the Site for any reason.
This Site contains links and references to other web sites operated by third parties over which National Travels have no control. So National Travels cannot be responsible for the availability, content, products or services or any other material provided on or available through those web sites.
National Travels will not be responsible for any direct or indirect losses you may suffer as a result of using the Site, or from any information contained on it, or from accessing any other web sites or information through the Site or as a result of not being able to use the Site. This exclusion includes but is not limited to any losses caused by destruction or corruption of data or wasted expenditure, unless, in the case of direct losses only, such losses are caused by the negligence of National Travels.
<br>
<h2>Privacy Statement</h2>
When you use any of the 'Feedback/Contact Us' forms within this website, you will be asked to provide your email address and other personal details. We will only use the information to deal directly with your query or comment and use personal information supplied in accordance with the Data Protection legislation and will not pass personal information on to companies or organizations outside National Travels.
<br>
Any emails or other communications we send will be clearly marked as coming from us.
<br>
<h2>Other Important Policies</h2>
1. Luggage taken on board should be maintained at all times and National Travels will not be liable for any loss or damage of any kind.
<br>
2. Customers` who want to migrate their trip can do so by physically appearing in one of National Travels`s bus counters and present their purchased ticket for another one.
<br>
3. Customers` who want to cancel their entire trip can ask for a full refund if and only if:
<br>
   *The customer cancels his/her trip at least 5 hours prior to the journey.
   <br>
   *The customer cancels the trip the night before, if he/she is travelling early the next morning.
<br>
4. Customers` will have to pay a fine of TK.  10.00 if cancellation is made otherwise.
<br>
5. No bookings or cancellations will be accepted online. Customers` have to do so by physically appearing in any one of National Travels`s bus counters.
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