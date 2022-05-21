<?php include('config.php');
if (isset($_GET['id'])) {
	$id = $_GET['id'];
	$select = "SELECT * from todo where id='$id'";
	$results = mysqli_query($db, $select);
	$row = $results->fetch_assoc();
}
?>

<!DOCTYPE html>
<html>

<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<title></title>
</head>

<body>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


	<form action="update.php" method="POST">
		<div class="container mt-5">

			<div class="row">
				<div class="col">
					<h6>Gjerat</h6>
					<div class="input-group mb-3 mt-2">
						<input type="text" class="form-control" placeholder="Shrunai Listën" aria-label="Shrunai Listën" aria-describedby="button-addon2" name="gjerat" value="<?php echo $row['gjerat']; ?>" required="" autofocus="" oninvalid="this.setCustomValidity('Shkruani Itemin');" oninput="this.setCustomValidity('');">
						<button class="btn btn-outline-info " type="submit" id="button-addon2" name="update" style="margin-left: 10px;">Ndrysho</button>
						<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
					</div>
				</div>
			</div>
	</form>
	</div>
</body>

</html>