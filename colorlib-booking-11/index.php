<?php

include '../function.php';

if(isset($_POST['check'])){
	echo ' <script>
    document.location.href="../datamobil.php";
    </script>';
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
	<div class="container-fluida">

		<a class="btn btn-primary" style="position: absolute;
    left: 10px;
	top:10px;
    z-index: 1;" href="../index.php" >back</a>

		<div id="booking" class="section">
			<div class="section-center">
				<div class="container">
					<div class="row">
					<div class="booking-form">

						<form action="../datamobil.php" method="post">
							<div class="row no-margin">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Destination</span>
										<input class="form-control" name="destination" type="text" placeholder="Country, ZIP, city...">
									</div>
								</div>
								<div class="col-md-6">
									<div class="row no-margin">
										<div class="col-md-5">
											<div class="form-group">
												<span class="form-label">Check In</span>
												<input name="checkin" class="form-control" type="date" required>
											</div>
										</div>
										<div class="col-md-5">
											<div class="form-group">
												<span class="form-label">Check out</span>
												<input class="form-control" type="date" name="checkout" required>
											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<span class="form-label">Guests</span>
												<select class="form-control" name="guests">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
													<option>6</option>
													<option>7</option>
													<option>8</option>
												</select>
												<span class="select-arrow"></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-btn">
										<button name="check" class="submit-btn">Check availability</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>