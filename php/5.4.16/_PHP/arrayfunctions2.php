<html>
    <p>
	<?php
	// Create an array with several elements in it,
	// then sort it and print the joined elements to the screen
        $the_array = array("One", "tWo", "thRee", "fouR");
        sort($the_array);
        print join(",", $the_array);
	?>
	</p>
	<p>
	<?php
	// Reverse sort your array and print the joined elements to the screen
        $the_array = array("One", "tWo", "thRee", "fouR");
        rsort($the_array);
        print join(",", $the_array);
	?>
	</p>
</html>