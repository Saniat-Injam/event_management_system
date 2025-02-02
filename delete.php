<?php

    session_start();
    include "authentication/connection.php";
    $mysqli = connection();
    $message = " ";

    if(isset($_GET["delete"])) {
        $id = $_GET["delete"];
        $sql = "DELETE FROM events_information WHERE id = ?";
        $stmt = $mysqli->prepare($sql);
        $stmt->bind_param("i", $id);
        $stmt->execute();

        header("location: dashboard.php");
        $_SESSION["response"] = "Successfully Deleted Data from Database";
        $_SESSION["response_type"] = "danger";

    }
?>