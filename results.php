<?php
	$mysqli = new mysqli('localhost', 'root', '', 'chained_select');
	$find = $_GET['find'];
	switch ($find)
	{
		case 'country':
			$query = 'SELECT id, countryName FROM country';
			break;

		case 'states':
			$query = 'SELECT id, stateName FROM states WHERE
			countryId='.$_GET['id'];
			break;
		case 'towns':
			$query = 'SELECT id, townName FROM towns
			WHERE stateId='.$_GET['id'];
			break;

		case 'information':
			$query = 'SELECT id, description FROM towninfo
			WHERE townId='.$_GET['id'] .' LIMIT 1';
			break;
	}
	if ($mysqli->query($query))
	{
		$result = $mysqli->query($query);
		if($find == 'information')
		{
			if($result->num_rows > 0)
			{
				$row = $result->fetch_array();
				echo $row[1];
			}
			else
			{
				echo 'No Information found';
			}
		}
		else
		{
			?>
			<option value="">select</option>
			<?php
			while($row = $result->fetch_array())
			{
				?>
				<option value="<?php echo $row[0]; ?>"><?php echo $row[1]; ?></option>
				<?php
			}
		}
	}
?>