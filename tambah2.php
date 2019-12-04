<?php
require 'function.php';

$id=$_GET["id"];
$paw=$_GET["paw"];
$pak=$_GET["pak"];

if($_SESSION['login']==NULL){
  echo ' <script>
    document.location.href="login.php";
    </script>';
}
elseif(tambah2($id,$paw,$pak)>0){
    echo ' <script>
    document.location.href="shopingchart.php";
    </script>';
  }
else{
  echo "gak bisa";
}