<?php
include 'connect.php';
 
//=============Starting Registration Script==========
 
$userName    =    mysql_real_escape_string($_POST['txtUser']);
 
$password    =    mysql_real_escape_string($_POST['txtPassword']);
 
//=============To Encrypt Password===================
$password    =    md5($password);
//============New Variable of Password is Now with an Encrypted Value========
 
if(isset($_POST['btnRegister'])) //===When I will Set the Button to 1 or Press Button to register
{
$query    =    "insert into users(u_name,u_pass)values('$userName','$password')";
$res    =    mysql_query($query);
header('location:login.php');
}
 
?>