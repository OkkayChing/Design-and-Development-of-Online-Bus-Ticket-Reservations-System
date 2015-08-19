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
  <img class="t" src="images/contact-us.jpg" width="1307" height="380">
	</div>
	
<div class="des">
<br>
<h2>Contact us</h2>
<p>
SL No 	Counter’s Name 	Mobile No.<br>
1. 	Kansat 	01755-583941<br>
2. 	Sibgonj 	01755-583942<br>
3. 	Rani Hati 	01755-583943<br>
4. 	Ghora Stand 	01755-583944<br>
5. 	Chapai- Nowabgonj 	01730-073268<br>
6. 	Lala Para 	01755-583945<br>
7. 	Baroghoriya 	01755-583946<br>
8. 	Godagari 	01755-583947<br>
9. 	Rajabari 	01755-583948<br>
10. 	Kasiadanga 	01755-583949<br>
11. 	Charkuta 	01755-583950<br>
12. 	Rajshahi 	01713-228283<br>
13. 	Natore 	01713-228284<br>
14. 	Life Care 	01755-583952<br>
15. 	Laxmipur 	01755-583953<br>
16. 	City Bypass 	01755-583954<br>
17. 	Kajla 	01755-583955<br>
18. 	Binodpur 	01755-583956<br>
19. 	Katakhali - 1 	01755-583957<br>
20. 	Katakhali - 2 	01755-583958<br>
21. 	Baneshwar 	01755-583959<br>
22. 	Puthia 	01755-583960<br>
23. 	Bonpara 	01755-583962<br>
24. 	Baraigram 	01755-583963<br>
25. 	Naya Bazar 	01755-583964<br>
26. 	Kachi Kata 	01755-583965<br>
27. 	Kallyanpur 	01713-228286<br>
28. 	Mohona (Technical) 	01713-228287<br>
29. 	Kalabagan 	01713-228285<br>
30. 	Gabtoli <br>	 
31. 	Chondra 	01755-583966<br>
32. 	Bypile 	01755-583967<br>
33. 	Savar 	01755-583969<br>
34. 	Abdullahpur 	01755-583970<br>
35. 	Uttara 	01755-583971<br>
36. 	Norda 	01755-583972
</p>
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