<html>
  <head>
    <title>I am the King of Arrays!</title>
  </head>
  <body>
    <p>
      <?php
      // On the line below, create your own associative array:
		$myArray = array(array(1, 2, 3), array('one', 'two', 'three'), 'end');

      // On the line below, output one of the values to the page:
		echo $myArray[2];

      // On the line below, loop through the array and output
      // *all* of the values to the page:
		for ($index = 0; $index < count($myArray); $index++) {
			echo $myArray[1][$index];
		}
      ?>
    </p>
  </body>
</html>