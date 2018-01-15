<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CreatePost</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {

$( "#datepicker1" ).datepicker({
  showOtherMonths: true,
  selectOtherMonths: true,
  minDate: 0, maxDate: "+1M +10D"
});
} );
$( function() {

$( "#datepicker2" ).datepicker({
showOtherMonths: true,
selectOtherMonths: true,
minDate: 0, maxDate: "+1M +10D"
});
} );

</script>
</head>
<form class="form-horizontal" method="POST" action="servlet/PostController">
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="inputUsername">Username:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="inputUsername" name="username" placeholder="Username">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="inputDst">Destination:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="inputDst" name="destination" placeholder="Your Destination">
			</div>
	</div>
  <div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="datepicker1">Date:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="datepicker1" name="dateto" placeholder="From">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="datepicker2">Date:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="datepicker2" name="dateto" placeholder="To">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="inputLg">Luggage:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="inputLg" name="email" placeholder="How much free space">
			</div>
	</div>
	<div class="form-group">
		<div class="col-lg-6 col-md-6 col-sm-6">
			<button type="submit" class="btn btn-default btn-lg btn-custom">Post</button>
		</div>
	</div>
	</form>
