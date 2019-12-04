<?php 
require 'function.php';
$user = 1 ;

$data= query("SELECT * FROM detailtransaksi a,mobil b
WHERE a.idbarang = b.id");

$data2= query("SELECT * FROM detailtransaksi2 a,tourguide b
WHERE a.idbarang = b.IDTG");

$total = 0;

?>

<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <title>Home</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css" rel="stylesheet" />
 <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>
</head>
  
</style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">sewasewi</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="colorlib-booking-11/index2.php">Tour Guide</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="comingsoon.php">Wisata</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="colorlib-booking-11/index.php">Sewa Mobil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="comingsoon.php">Hotel</a>
      </li>
    </ul>
    <?php if($_SESSION['login'] == NULL): ?>
         <a href="login.php" class="btn btn-outline-success my-2 my-sm-2" >Login</a>
    <?php endif;
  if($_SESSION['login'] == 1):?>
    <a href="shopingchart.php" style="margin-right:20px">Cart</a>
  <a href="logout.php" class="btn btn-outline-success my-2 my-sm-2" >Logout</a>
  <?php endif?>
  </div>
</nav>

<div class="container-fluid">
<div class="row pt-3">
    <div class="col-12 h4">Shopping Cart</div>
</div>
<div class="row">
    <div class="col-12">
    <table class="table table-hover">
    <tbody>
    <?php
    $nomor = 1;
    foreach($data as $row) :
      $total=$total+$row['Harga'];
    if($_SESSION['Id']==$row['idtransaksi']):
    ?>
    <tr>
<td class="text-center"><?= $nomor++ ?></td>

    <td class="text-center"><img src="img/<?=$row['Foto']?>"></td>
    <td class="text-center"><?= $row['Nama'] ?></td>
    <td class="text-center"><?= $row['periode_awal'] ?></td>
    <td class="text-center"><?= $row['periode_akhir'] ?></td>
    <td class="text-center"><?= "Rp.".$row['Harga'] ?></td>
    <td class="text-center">
        <form action="" method="get">
            <a href="hpsbrg.php?id=<?= $row['idnota'];?>" class="btn btn-danger"
            role="button" onclick="return confirm('data ingin di hapus?');">Hapus</a>
        </form>
    </td>
</tr>
<?php
endif ;endforeach ?>
 <?php
    foreach($data2 as $row1) :
      $total=$total+$row1['HargaTG'];
    if($_SESSION['Id']==$row1['idtransaksi']):
    ?>
    <tr>
<td class="text-center"><?= $nomor++ ?></td>

    <td class="text-center"><img src="img/<?=$row1['FotoTG']?>"></td>
    <td class="text-center"><?= $row1['NamaTG'] ?></td>
    <td class="text-center"><?= $row1['periode_aw'] ?></td>
    <td class="text-center"><?= $row1['periode_ak'] ?></td>
    <td class="text-center"><?= "Rp.".$row1['HargaTG'] ?></td>
    <td class="text-center">
        <form action="" method="get">
            <a href="hpsbrg.php?id=<?= $row1['idnota'];?>" class="btn btn-danger"
            role="button" onclick="return confirm('data ingin di hapus?');">Hapus</a>
        </form>
    </td>
</tr>
<?php
endif ;endforeach ?>
    </tbody>
  </table>

    </div>
</div>

<div class="row justify-content-end mt-5">
    <div class="col-6 mt-4">total :<?=$total; ?>
<button type="button" class="btn btn-success btn-block mt-4">Success</button></div>

</div>

</div>

  </body>
  
  </html>