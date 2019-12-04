<?php 
session_start();
// koneksi ke mysql
$conn = mysqli_connect("localhost","root","","sewa_sewi2");

// mengambil satu-satu query di masukan ke array
function query($query){
  global $conn;
  $result = mysqli_query($conn,$query);
  $rows=[];
  // echo mysqli_fetch_assoc($result);
  // var_dump( mysqli_fetch_assoc($result));
  // die;
  while($row = mysqli_fetch_assoc($result)){
    $rows[]=$row;
  }
  return $rows;
}

// fungsi tambah data
function tambah($id,$paw,$pak){
  global $conn;

  $apa = $_SESSION['Id'];
  
  $query="INSERT INTO detailtransaksi(idbarang,idtransaksi,periode_awal,periode_akhir) value ('$id','$apa','$paw','$pak')";
  
  mysqli_query($conn,$query);

  return mysqli_affected_rows($conn);
}

function tambah2($id,$paw,$pak){
  global $conn;

  $apa = $_SESSION['Id'];
  
  $query="INSERT INTO detailtransaksi2(idbarang,idtransaksi,periode_aw,periode_ak) value ('$id','$apa','$paw','$pak')";
  
  mysqli_query($conn,$query);

  return mysqli_affected_rows($conn);
}


// fungsi hapus data
function hapus($id){
  global $conn;
  mysqli_query($conn,"DELETE FROM detailtransaksi WHERE idnota = '$id'");
  // die;

  return mysqli_affected_rows($conn);
}

// fungsi hapus data
function hapus2($id){
  global $conn;
  mysqli_query($conn,"DELETE FROM detailtransaksi2 WHERE idnota = '$id'");
  // die;

  return mysqli_affected_rows($conn);
}
