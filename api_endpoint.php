<?php
    include "authentication/connection.php";
    $mysqli = connection();

    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET");

    if ($mysqli->connect_error) {
        die(json_encode(["error" => "Database connection failed"]));
    }

    $sql = "SELECT id, event_name, event_venue, event_type, date, time, chief_guest FROM events_information";
    $result = $mysqli->query($sql);

    $events = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $events[] = $row;
        }
    }

    echo json_encode(["status" => "success", "events" => $events]);

    $mysqli->close();
?>
