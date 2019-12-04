<?php
require 'function.php';
// Start session nya
$_SESSION['login'] = NULL;
$_SESSION['Id'] = NULL;
header("location: index.php"); // Redirect ke halaman index.php
?>