<html>

<head>

<style type="text/css">
.content{
width:1250px;
background-color:white;
text-align:center;
padding-left:0px;
margin-left:0px;
}
body{
background-color:green;
}
	
</style>
</head>
<body>       
	                <p>
					 
                         * <a href="show_record1.php">Search by date</a><br />
					    * <a href="show_record2.php">Search by date,from,to</a><br />
                         * <a href="show_record3.php">Search by date and time</a><br />

                    </p>		
<form action="show_record1.php" method="GET">
Search By Date: <input type="text" name="date"/>

<input type="submit" value="search"/>
</form>
</body>
</html>
<?php
include "connect.php";
if(isset($_GET['date']))
{
$date=$_GET['date'];
$result = mysql_query("SELECT*FROM record Where adding_date='$date'");

echo "<table class='content' border='1'>
<tr>
<th>coach</th>
<th>Sold seat</th>
<th>From</th>
<th>To</th>
<th>Date</th>
<th>Time</th>
</tr>";

while($row = mysql_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['coach'] . "</td>";
  echo "<td>" . $row['seat'] . "</td>";
  echo "<td>" . $row['b_source'] . "</td>";
   echo "<td>" . $row['b_dest'] . "</td>";
  echo "<td>" . $row['adding_date'] . "</td>";
  echo "<td>" . $row['adding_time'] . "</td>";
  echo "</tr>";
  }
echo "</table>";

}

?>
