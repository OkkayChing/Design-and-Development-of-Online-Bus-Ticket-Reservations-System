<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Home</title>
<link rel="stylesheet" type="text/css" media="all" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/back.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/jsDatePick_ltr.min.css" />

  


<!--<script type="text/javascript">

	window.onload = function(){

		new JsDatePick({

			useMode:2,

			target:"datePick",
			
			yearsRange:[2011,2012],
			
			limitToToday:true,			

			dateFormat:"%d-%M-%Y"

			
		});
		
		new JsDatePick({

			useMode:2,

			target:"datePick1",
			
			yearsRange:[2011,2012],
			
			limitToToday:true,			

			dateFormat:"%d-%M-%Y"

			

		});

	};

</script>
<script language="JavaScript" type="text/javascript">
function validateForm()
{
var ab=document.forms["booking"]["datePick"].value;
if (ab==null || ab=="")
  {
  alert("enter date");
  return false;
  }
  
 
var co=document.forms["booking"]["src"].value;

var sp=document.forms["booking"]["dest"].value;
if (sp==co)
  {
  alert("Invalid source and destination");
  return false;
  }
  

}
</script>-->



	<!-- Homepage Specific Elements -->
	
<!--script -->

</head>

<body>
<div class="back">
	
<?php include 'navbar_fragment.php'; ?>
<?php include 'slide1.php'; ?>


<div class="container-fluid">


          <div class="row-fluid">
          <!--fullwidth row-->
          <div class="span12">
          <div class="well">
		  
          <center><h2>Home</h2></center>
		  
<hr />
<?php if(isset($_SESSION['user'])) { ?>

<br />
<form id="booking" method="post" action="show_trains.php" onSubmit="return validateForm()">
<div class="span3"><p>From: 
<?php if(isset($_SESSION['trip']) && $_SESSION['trip']!='one') { ?>
<select name="dest">
<option value="<?php echo $_SESSION['dest'];?>"><?php echo $_SESSION['dest'];?></option>
</select>
	<?
}
else
{ ?>

<select name="src">
<option value="Dhaka">Dhaka</option>
<option value="Chittagong">Chittagong</option>
<option value="CoxBazar">CoxBazar</option>
<option value="Sylhet">Sylhet</option>
</select>
<? } ?>
</p></div>
<div class="span3">
<p>To: 
<?php
if(isset($_SESSION['trip']) && $_SESSION['trip']!='one') { ?>
<select name="dest">
<option value="<?php echo $_SESSION['src'];?>"><?php echo $_SESSION['src'];?></option>
</select>
	<?
}
else
{ ?>
<select name="dest">
<option value="Dhaka">Dhaka</option>
<option value="Chittagong">Chittagong</option>
<option value="CoxBazar">CoxBazar</option>
<option value="Sylhet">Sylhet</option>
</select>
<? } ?>
</p></div>
<div class="span3">
<p>Date:
<input type="text" id="datePick" name="datePick" /></p>
</div>
<div class="span3">
<p>Trip: 
<?php
if(isset($_SESSION['trip']) && $_SESSION['trip']!='one') {
	echo $_SESSION['trip'];
}
else
{ ?>
<select name="trip">
<option value="one">One-way</option>
<option value="one">Round</option>
</select><? } ?></p></div>
<br />
<button type="submit" name="btnSearch" id="btnSearch" class="btn btn-primary">Search</button>
</form>
<?php }
else
{
echo "Please login before you can continue!";
echo '<br><a href="login.php">Login</a>';
}
?>
</div>
 </div><!--/span-->
            
            
            
          </div><!--/row-fluid-->
          
        
      </div><!--/container-->
 </div>
</body>
</html>