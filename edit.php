<?php
    session_start();
    include "authentication/connection.php";
    $mysqli = connection();

    $id = $_GET['id'];

    // Fetch the existing event information
    $sql = "SELECT * FROM events_information WHERE id = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();

    if (isset($_POST['submit'])) {
        $event_name = $_POST["event_name"];
        $event_venue = $_POST["event_venue"];
        $event_type = $_POST["event_type"];
        $date = $_POST["date"];
        $time = $_POST["time"];
        $chief_guest = $_POST["chief_guest"];

        $update_sql = "UPDATE events_information SET event_name = ?, event_venue = ?, event_type = ?, date = ?, time = ?, chief_guest = ? WHERE id = ?";
        $update_stmt = $mysqli->prepare($update_sql);
        $update_stmt->bind_param("ssssssi", $event_name, $event_venue, $event_type, $date, $time, $chief_guest, $id);

        if ($update_stmt->execute()) {
            $_SESSION["response"] = "Successfully Updated Record into Database";
            $_SESSION["response_type"] = "success";
            header("Location: dashboard.php"); // Redirect to dashboard
            exit();
        } else {
            $_SESSION["response"] = "Update failed: " . $mysqli->error;
            $_SESSION["response_type"] = "danger";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit and Save Information into the Database</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/registration.css">
    </head>

    <body>
<!--    --><?php //if (isset($_SESSION["response"])): ?>
<!--        <div class='alert alert---><?php //= $_SESSION["response_type"]; ?><!--'>-->
<!--            --><?php //= $_SESSION["response"]; ?>
<!--        </div>-->
<!--        --><?php //unset($_SESSION["response"]); ?>
<!--    --><?php //endif; ?>

    <form method="post">
        <div class="container reg">
            <h1>Edit and Save</h1>
            <hr>
            <div>
                <label>Event Name <span>*</span></label>
                <input type="text" name="event_name" value="<?= $row["event_name"]; ?>" required>
            </div>

            <div>
                <label>Venue <span>*</span></label>
                <input type="text" name="event_venue" value="<?= $row["event_venue"]; ?>">
            </div>

            <div>
                <label>Type <span>*</span></label>
                <input type="text" name="event_type" value="<?= $row["event_type"]; ?>" required>
            </div>

            <div>
                <label>Date <span>*</span></label>
                <input type="date" name="date" value="<?= $row["date"]; ?>" required>
            </div>

            <div>
                <label>Time <span>*</span></label>
                <input type="time" name="time" value="<?= $row["time"]; ?>">
            </div>

            <div>
                <label>Chief Guest <span>*</span></label>
                <input type="text" name="chief_guest" value="<?= $row["chief_guest"]; ?>">
            </div>

            <div style="text-align: center; padding: 20px;">
                <input type="submit" name="submit" class="btn btn-success" value="Update">
            </div>

            <div style="text-align: center">
                <p>Go to <a href="pagination.php">Dashboard</a></p>
            </div>
        </div>
    </form>

    </body>
</html>

<script>
    $(document).ready(function () {
        $(".reg").css("color", "#ffCe00");
    });
</script>
