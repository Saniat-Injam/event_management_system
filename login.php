<?php
    session_start();
    $_SESSION["name"] = " ";
    $_SESSION["user_name"] = " ";

    include "authentication/connection.php";
    $conn = connection();
    $message = " ";
    if(isset($_POST['submit'])){
        $user_name = $_POST['user_name'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM users_information WHERE user_name = '$user_name'";
        $result = mysqli_fetch_assoc($conn->query($sql));

        if($result && password_verify($password, $result["password"])){
            $user = $result;
            $_SESSION["name"] = $user["name"];
            $_SESSION["user_name"] = $user["user_name"];

            header('location: dashboard.php');
        } else {
            $message = "Wrong Username or Password";
        }
    }
?>


<html lang="en">
    <head>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <title> Login Form </title>
    </head>



    <body>
        <div class="logo"> </div>

        <!--LOGIN FORM INTRODUCING HERE-->
        <form method="POST">
            <div class="box bg-img">
                <div class="content">
                    <h2>Log<span> In</span></h2>


                    <div class="forms">

                        <!--ERROR MESSAGE PRINTING-->
                        <p style="color: red; padding: 20px;"> <?php if($message != '') echo $message;?> </p>

                        <!--USERNAME INPUT FIElD-->
                        <div class="user-input">
                            <input name="user_name" type="text" class="login-input" placeholder="Username" id="name" required>
                            <i class="fas fa-user"></i>
                        </div>

                        <!--USER PASSWORD INPUT FIELD-->
                        <div class="pass-input">
                            <input name="password" type="password" class="login-input" placeholder="Password" id="my-password" required>
                            <span class="eye" onclick="myFunction()">
                                      <i id="hide-1" class="fas fa-eye-slash"></i>
                                      <i id="hide-2" class="fas fa-eye"></i>
                            </span>
                        </div>
                    </div>

                    <!--SIGN IN BUTTON FIELD-->
                    <button name="submit" type="submit" class="login-btn"> Sign In </button>

                    <!--IF NOT A USER THEN COMPLETE THE REGISTRATION CRITERIA-->
                    <p class="new-account">Not a user? <a href="users_registration.php"> Sign Up now! </a> </p>
                    <br>

                    <!--FORGOT PASSWORD-->
                    <p class="f-pass"> <a href="#">forgot password?</a> </p>

                </div>
            </div>
        </form>
        <script src="https://kit.fontawesome.com/c0078485ae.js" crossorigin="anonymous"></script>
    </body>
</html>

<script>
    function myFunction() {
        var x = document.getElementById("my-password");
        var y = document.getElementById("hide-1");
        var z = document.getElementById("hide-2");

        if (x.type === "password") {
            x.type = "text";
            y.style.display = "block";
            z.style.display = "none";
        } else {
            x.type = "password";
            y.style.display = "none";
            z.style.display = "block";
        }
    }

</script>