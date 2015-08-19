<?php
session_start();
session_unset();
session_destroy();
ob_start();
header("location:home.php");
ob_end_flush(); 
include 'home.php';
//include 'home.php';
exit();
?>