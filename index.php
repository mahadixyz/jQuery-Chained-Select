<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>

	<!-- CSS -->
	<link rel="stylesheet" href="asset/css/bootstrap.min.css">
	<link rel="stylesheet" href="asset/css/style.css">

	<!-- JavaScript -->
	<script type="text/javascript" src="asset/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="asset/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function()
		{
			defaultSelect();
			function defaultSelect()
			{
				var url = 'results.php?find=country';
				var target = 'countryList'
				$.get(
					url,
					{ },
					function(data)
					{
						$('#'+target).html(data);
					}
				)
			}

			$('#countryList').on('change', function()
			{
				var url, target;
				var selectedValue = $(this).val();
				if(selectedValue == '') return;
				url = 'results.php?find=states&id='+ selectedValue;
				target = 'stateList';

				$.get(
					url,
					{ },
					function(data)
					{
						$('#'+target).html(data);
					}
				)
			});


			$('#stateList').on('change', function()
			{
				var url, target;
				var selectedValue = $(this).val();
				if(selectedValue == '') return;
				url = 'results.php?find=towns&id='+ selectedValue;
				target = 'townList';
					
				$.get(
					url,
					{ },
					function(data)
					{
						$('#'+target).html(data);
					}
				)
			});


			$('#townList').on('change', function()
			{
				var url, target;
				var selectedValue = $(this).val();
				if(selectedValue == '') return;
				url = 'results.php?find=information&id='+ selectedValue;
				target = 'information';
					
				$.get(
					url,
					{ },
					function(data)
					{
						$('#'+target).html(data);
					}
				)
			});				

		});
	</script>
</head>
<body>

	<div class="container overflow-hidden">

		<div class="row mt-3 g-3">				

			<div class="col-4">
				<div class="border p-4">
					<strong>Country</strong>
					<select class="form-control rounded-0" id="countryList">
						<option value="">select</option>
					</select>
				</div>
			</div>	

			<div class="col-4">
				<div class="border p-4">
					<strong>State</strong>
					<select class="form-control rounded-0" id="stateList">
						<option value="">select</option>
					</select>
				</div>
			</div>	

			<div class="col-4">
				<div class="border p-4">
					<strong>City</strong>
					<select class="form-control rounded-0" id="townList">
						<option value="">select</option>
					</select>
				</div>
			</div>

			<div class="col-8 mx-auto">
				<div class="border p-4">
					<h2 class="fs-4 text-success">Information</h2>
					<p id="information">
						Select a city yo view it's information.
					</p>
				</div>
			</div>

		</div>

	</div>
	
</body>
</html>
