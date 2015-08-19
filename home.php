<?php
session_start();
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
   <center><marquee align="middle" width="60%" behavior="scroll" ><h1 style="font-family:courier">Buy tickets anytime from anywhere.We provide dependable customer services.Enjoy nice journey. </marquee></center>
	</h1>
	
<div class="contenta">	
	<div class="slide">
    <?php include 'slide1.php';?>
	</div>
	
<div class="des">
<div class="a">
<h4>Why buy tickets from us?</h4><br>
<ol type="i">
 <li>Buy tickets sitting at home</li>
 <li>Pay by credit card, mobile banking or Cash</li>
 <li>Get tickets delivered to your doorstep</li>
 <li>Buy tickets anytime from anywhere</li>
 <li>Enjoy a dependable customer service</li>
</ol> 
</div>
<div class="b">
<h4>"Welcome To National Travels"</h4><br>
<p>Hello there, and Welcome to National Travels! For the first time in the history of National Travels our customers will enjoy the luxury of purchasing tickets online. We, the management team of National Travels, are always keen to improve our customer service and we work really hard to fulfill all their needs to the best of our ability. Now we are stepping ahead with time and technology and improving our technological abilities to take the pressure off our customers’ shoulders by introducing the new e-ticketing system. Now buying tickets will be fun, easy and economical.
Here you’ll find all the information you need – timetables, fares, boarding point, a guideline for purchasing tickets online and terms and conditions. Use National Travels coaches to get to the busiest and most happening city of Bangladesh called Dhaka and to the city of Education and Silk called Rajshahi. Our coaches also provide regular service to Sirajgonj, Natore, Nawabganj, Bonpara etc.</p>
</div>	


<br>
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
