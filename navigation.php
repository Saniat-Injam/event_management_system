<?php
    session_start();
    $name= $_SESSION['name'];
    $user_name= $_SESSION['user_name'];
?>


<html lang="">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=10" >

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/navigation.css">
        <title> Navigation Bar </title>
    </head>


    <body class="bg-secondary">

<!--    INTRODUCING NAVBAR HERE-->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="navbar-inverse">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

<!--            DEFINING A UNORDERED LIST FOR NAVBAR-->
            <ul class="nav navbar-nav" style="color: white;">
                <li><a class="active" href="dashboard.php"> All Events </a></li>
                <li><a href="attendees.php"> Attendees </a></li>
                <li><a href="#"> admins </a></li>


<!--                LOGOUT BUTTON IN THE NAVBAR-->
                <li style="float: right;">
                    <a href="logout.php" style="padding: 0 20px 0 0;"> <button class="btn btn-danger navbar-btn pull-right">Logout</button></a>
                </li>

<!--                USING SESSION VARIABLE HERE -->
                <li class="pull-right"><a href="#">Logged in as <b class="user"><?php echo $name; ?></b></a></li>

            </ul>
        </div>
    </nav>
    </body>
</html>