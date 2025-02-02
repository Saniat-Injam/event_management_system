<?php
    session_start();
    include "authentication/connection.php";
    $mysqli = connection();
    $message = "";

    $MAX_CAPACITY = 100;

    if (isset($_POST["submit"])) {

        $result = $mysqli->query("SELECT COUNT(*) as total FROM attendees_information");
        $row = $result->fetch_assoc();
        $current_count = $row['total'];

        if ($current_count >= $MAX_CAPACITY) {
            header("location: attendees_registration.php");
            $_SESSION["response"] = "Capacity full";
            $_SESSION["response_type"] = "danger";
        } else {
            // Process registration if within limit
            $first_name = $_POST["first_name"];
            $last_name = $_POST["last_name"];
            $student_id = $_POST["student_id"];
            $student_email = $_POST["student_email"];
            $mobile_number = $_POST["mobile_number"] ? $_POST["mobile_number"] : '';
            $department = $_POST["department"];
            $semester = $_POST["semester"];

            $sql = "INSERT INTO attendees_information(first_name, last_name, student_id, student_email, mobile_number, department, semester) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $stmt = $mysqli->prepare($sql);
            $stmt->bind_param("sssssss", $first_name, $last_name, $student_id, $student_email, $mobile_number, $department, $semester);
            $stmt->execute();

            header("location: congratulations.php");
            exit();
        }
    }
 ?>


<html lang="">
<head>
    <title> Registration Form </title>

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
<form method="post" action="attendees_registration.php" enctype="multipart/form-data">
    <div class = "container reg">
        <h1> Registration Form </h1>
        <hr>
        <!--                ALERT MESSAGE-->
        <?php if(isset($_SESSION["response"])) { ?>
            <div class="alert alert-<?=$_SESSION["response_type"]?> alert-dismissible text-center">
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                <?php echo $_SESSION["response"];?>
            </div>
        <?php } unset($_SESSION["response"])?>



        <div>
            <label> First Name <span> * </span> </label>
            <input type="text" name="first_name"  placeholder= "Enter your first name" required>
        </div>

        <div>
            <label> Last Name </label>
            <input type="text" name="last_name" placeholder= "Enter your last name">
        </div>

        <!--                <div>-->
        <!--                    <label>User name <span> * </span> </label>-->
        <!--                    <input  type="text" name="user_name" placeholder= "Enter your username" onchange="checkUsername(this.value); checkUser(this.value)" required>-->
        <!--                    <small id="checktext"> </small>-->
        <!--                    <small id="checkuser"> </small>-->
        <!--                </div>-->

        <div>
            <label> Student ID <span> * </span> </label>
            <input  type="text" name="student_id"  placeholder= "Enter your student id" required>
        </div>

        <div>
            <label> Email <span> * </span> </label>
            <input type="text" name="student_email" placeholder= "Enter your email" required>
        </div>

        <div>
            <label> Mobile Number </label>
            <input type="text" name="mobile_number" placeholder= "Enter your mobile number">
        </div>

        <div>
            <label> Department </label>
            <input type="text" name="department" placeholder= "Enter your department">
        </div>

        <div>
            <label> Semester </label>
            <input type="text" name="semester" placeholder= "Enter your semester">
        </div>


        <div style="text-align: center">
            <p> <span> *** </span> By creating an account you agree to our Terms & Privacy </p>
        </div>

        <div style="text-align: center; padding: 20px;">

            <input type="submit" name="submit"  class= "btn btn-success" value= "Register">
            <!--<button name="submit" type="submit" > Register </button>-->
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
