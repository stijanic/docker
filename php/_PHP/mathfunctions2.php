<html>
    <p>
    <?php
    // Use rand() to print a random number to the screen
        print rand();
    ?>
    </p>
    <p>
    <?php
    // Use your knowledge of strlen(), substr(), and rand() to
    // print a random character from your name to the screen.
        $name = "Srdjan";
        print substr($name, rand(1, strlen($name) - 1), 1);
    ?>
    </p>
</html>