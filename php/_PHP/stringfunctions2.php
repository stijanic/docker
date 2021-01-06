<html>
    <p>
    <?php
    // Print out the position of a letter that is in
    // your own name
        $result = strpos("Srdjan", "a");
        print $result;
    ?>
    </p>
    <p>
    <?php
    // Check for a false value of a letter that is not
    // in your own name and print out an error message
        if (strpos("Srdjan","h") === false) {
            print "Sorry, no 'h' in 'Srdjan'";
        }
    ?>
    </p>
</html>