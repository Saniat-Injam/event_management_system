<?php
    include "authentication/connection.php";
    $mysqli = connection();
    $message = " ";

    //isset(): This function checks if a variable is set (i.e., it exists in memory) and is not null.
    if(isset($_POST["submit"])) {
        $name = $_POST["name"];
        $user_name = $_POST["user_name"];
        $email = $_POST["email"];
        $mobile_number = $_POST["mobile_number"] ? $_POST["mobile_number"] : '';
        $password = $_POST["password"];
        $confirm_password = $_POST["confirm_password"];

        // PASSWORD'S VALUE AND TYPE ARE CHECKED HERE
        if($password === $confirm_password) {
            $password = password_hash($password, PASSWORD_DEFAULT);
            $confirm_password = password_hash($confirm_password, PASSWORD_DEFAULT);
            /*
            $sql = "INSERT INTO participants_information(first_name, last_name, user_name, student_id, student_email, mobile_number, department, semester, password, confirm_password) VALUES('$first_name', '$last_name', '$user_name', '$student_id', '$student_email', '$mobile_number', '$department', '$semester', '$password', '$confirm_password')";
           if ($mysqli->query($sql) === true) {
               header("location: login.php");
           }else {
               $message = "Data could not be inserted";
           }
           */
            $sql = "INSERT INTO users_information(name, user_name, email, mobile_number, password, confirm_password) VALUES(?, ?, ?, ?, ?, ?)";
            $stmt = $mysqli->prepare($sql);
            $stmt->bind_param("ssssss", $name, $user_name, $email, $mobile_number, $password, $confirm_password);
            $stmt->execute();
            header("location: login.php");


        }else {
            $message = "password didn't match";

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
        <?php
        if( $message != " ") {
            echo "<div class='alert alert-success'> $message </div>";
        }
        ?>

        <!--        REGISTRATION FORM IS INTRODUCED HERE-->
        <form method="post" action="users_registration.php" enctype="multipart/form-data">
            <div class = "container reg">
                <h1> Registration Form </h1>
                <hr>
                <div>
                    <label> Your Name <span> * </span> </label>
                    <input type="text" name="name"  placeholder= "Enter your first name" required>
                </div>

                <div>
                    <label>User name <span> * </span> </label>
                    <input  type="text" name="user_name" placeholder= "Enter your username" onchange="checkUsername(this.value); checkUser(this.value)" required>
                    <small id="checktext"> </small>
                    <small id="checkuser"> </small>
                </div>


                <div>
                    <label> Email <span> * </span> </label>
                    <input type="text" name="email" placeholder= "Enter your email" required>
                </div>

                <div>
                    <label> Mobile Number </label>
                    <input type="text" name="mobile_number" placeholder= "Enter your mobile number">
                </div>



                <div>
                    <label> Password <span> * </span> </label>
                    <input type="password" name="password" placeholder="Enter your password" required>
                </div>

                <div>
                    <label>Confirm password <span> * </span> </label>
                    <input type="password" name="confirm_password" placeholder= "Confirm your password" required>
                </div>

                <div style="text-align: center">
                    <p> <span> *** </span> By creating an account you agree to our Terms & Privacy </p>
                </div>

                <div style="text-align: center; padding: 20px;">

                    <input type="submit" name="submit"  class= "btn btn-success" value= "Register">
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