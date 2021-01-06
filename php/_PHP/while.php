<!DOCTYPE html>
<html>
    <head>
		<title>A loop of your own</title>
        <link type='text/css' rel='stylesheet' href='style2.css'/>
	</head>
	<body>
    <?php
	//Add while loop below
    	$loops = 5;
    	while ($loops > 0):
    		//Echo your message that the loop is running below
    		echo "<p>The loop is running.</p>";
    		$loops--;
    	endwhile;
    	echo "<p>And now it's done.</p>";
    ?>
    </body>
</html>