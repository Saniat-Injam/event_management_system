<?php
    session_start();
    include "authentication/connection.php";
    $mysqli = connection();
    $message = " ";

    //isset(): This function checks if a variable is set (i.e., it exists in memory) and is not null.
    if(isset($_POST["submit"])) {
        $event_name = $_POST["event_name"];
        $event_venue = $_POST["event_venue"];
        $event_type = $_POST["event_type"];
        $date = $_POST["date"];
        $time = $_POST["time"];
        $chief_guest = $_POST["chief_guest"];

//        $sql = "INSERT INTO participants_information(first_name, last_name, user_name, student_id, student_email, mobile_number, department, semester, password, confirm_password) VALUES('$first_name', '$last_name', '$user_name', '$student_id', '$student_email', '$mobile_number', '$department', '$semester', '$password', '$confirm_password')";
//        if ($mysqli->query($sql) === true) {
//           header("location: login.php");
//        }else {
//            $message = "Data could not be inserted";
//        }

        $sql = "INSERT INTO events_information(event_name, event_venue, event_type, date, time, chief_guest) VALUES(?, ?, ?, ?, ?, ?)";
        $stmt = $mysqli->prepare($sql);
        $stmt->bind_param("ssssss", $event_name, $event_venue, $event_type, $date, $time, $chief_guest);
        $stmt->execute();

        header("location: dashboard.php");
        $_SESSION["response"] = "Successfully Inserted Data into Database";
        $_SESSION["response_type"] = "success";



    }
?>


<html lang="">
    <head>
        <title> Event Registration </title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link type="text/css" rel="stylesheet" href="css/style.css">

        <link type="text/css" rel="stylesheet" href="css/registration.css">


    </head>

    <body>


    <!--        REGISTRATION FORM IS INTRODUCED HERE-->
    <form method="post" action="add.php" enctype="multipart/form-data">
        <div class = "container reg">
            <h1> Event Registration </h1>
            <hr>
            <div>
                <label> Event Name <span> * </span> </label>
                <input type="text" name="event_name"  placeholder= "Enter event name" required>
            </div>

            <div>
                <label> Event Venue </label>
                <input type="text" name="event_venue" placeholder= "Enter event venue" required>
            </div>

            <div>
                <label> Event Type </label>
                <input type="text" name="event_type" placeholder= "Enter event venue" required>
            </div>

            <div>
                <label> Date </label>
                <input type="date" name="date" placeholder= "Enter event venue" required>
            </div>

            <div>
                <label> Time </label>
                <input type="time" name="time" placeholder= "Enter event venue" required>
            </div>

            <div>
                <label> Chief Guest </label>
                <input type="text" name="chief_guest" placeholder= "Enter event venue" required>
            </div>

            <div style="text-align: center; padding: 20px;">

                <input type="submit" name="submit"  class= "btn btn-success" value= "ADD">
                <!--<button name="submit" type="submit" > Register </button>-->
            </div>

            <div style="text-align: center">
                <p> Already have an account? <a href="login.php"> Sign in </a> </p>
            </div>

        </div>


    </form>

    </body>
    <script type="text/javascript" src="js/script.js"> </script>
</html>

<script>
    // window.onload = function () {
    //     document.getElementsByClassName("reg")[0].style.color = "#ffCe00"
    // };

    $(document).ready(function () {
        //document.getElementsByClassName("reg")[0].style.color = "#ffCe00"
        $(".reg").css("color", "#ffCe00")

    })
</script>