<?php
    include "authentication/connection.php";
    $mysqli = connection();

    $username = $_POST["user_name"];
    print_r($username);

?>