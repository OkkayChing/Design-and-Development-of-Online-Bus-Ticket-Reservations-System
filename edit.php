<?php session_start(); ?>
<?php
include"connect.php";

//$edit=$_GET['edit'];
//$coach_no=$_GET['coach_no'];
if(isset($_GET['edit']) && isset($_POST['coach_no']) && isset($_POST['fare']) && isset($_POST['price']) && isset($_POST['b_source'])
&& isset($_POST['b_dest']) && isset($_POST['s_counter']) && isset($_POST['d_counter']) && isset($_POST['departing_time'])&& isset($_POST['arrival_time']))

{
	$edit=$_GET['edit'];
	$coach_no=$_POST['coach_no'];
	$fare=$_POST['fare'];
	$price=$_POST['price'];
	$b_source=$_POST['b_source'];
	$b_dest=$_POST['b_dest'];
	$s_counter=$_POST['s_counter'];
	$d_counter=$_POST['d_counter'];
	$departing_time=$_POST['departing_time'];
	$arrival_time=$_POST['arrival_time'];
	
	$sql= mysql_query("UPDATE bus SET coach_no='$coach_no',fare='$fare',price='$price',b_source='$b_source',b_dest='$b_dest',s_counter='$s_counter',d_counter='$d_counter',departing_time='$departing_time',arrival_time='$arrival_time' WHERE b_id='$edit'");
}
 
?>
<!DOCTYPE html>
<html>

<head>
	<title>Book Your Seat</title>
	<link href="css/bootstrap.css" rel="stylesheet" />
	<link href="css/bootstrap-theme.css" rel="stylesheet" />
	<link href="css/main.css" rel="stylesheet" />
<style type="text/css">
.form{
margin-left:40px;
 border-style:solid;
  border:10px;

}
body{
background-color:green;
}
	
</style>
</head>

<body>

<div class="form">
              <h1>Edit Bus Table</h1>
            <form action="" method='POST' class='form'>
			
				<label>Coach_no</label>
				<input type="text" name="coach_no"/>
				<br/>
				<label>Fare</label>
				<input type="text" name="fare"/>
				<br/>
				<label>Price</label>
				<input type="value" name="price"/>
				<br/>
				<label>B_source</label>
				<input type="text" name="b_source" />
				<br/>
				<label>B_dest</label>
				<input type="text" name="b_dest"/>
				<br/>
				<label>S_counter</label>
				<input type="text" name="s_counter"/>
				<br/>
				<label>D_counter</label>
				<input type="text" name="d_counter"/>
				<br/>
				<label>Departing_time</label>
				<input type="text" name="departing_time"/>
				<br/>
				<label>Arrival_time</label>
				<input type="text" name="arrival_time"/>
				<br/>
				
				
				<input type="submit" class="btn btn-success" value='submit'/>
				
				</form>
				</div>
				
</body>
</html>