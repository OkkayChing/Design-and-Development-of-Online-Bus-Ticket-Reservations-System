<?php

include "connect.php";
$sql="SELECT customerinfo,phone_number From booking ORDER BY customerinfo";
$result=mysql_query($sql);


while($row = mysql_fetch_array($result))
{
 echo "<hr/>";
echo  "<h4><center>Customer_name:::".$row['customerinfo']."</center></h4> ";

echo  "<h4><center>Phone Number:::".$row['phone_number']."</center></h4> ";
}
?>