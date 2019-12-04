<?php
require 'function.php';

$id=$_GET["id"];

if(hapus2($id)>0){
    echo ' <script>
    document.location.href="shopingchart.php";
    </script>';
  }
else{
  echo "gak bisa";
}