<?php
    require_once("authentication/connection.php");
    $mysqli = connection();

    // Set headers to force download
    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename="attendees.csv"');

    // Open output stream
    $output = fopen('php://output', 'w');

    // CSV Data Header
    fputcsv($output, ["Serial No", "First Name", "Last Name", "Student ID", "Student Email", "Mobile Number", "Department", "Semester"]);


    $stmt = $mysqli->prepare("SELECT first_name, last_name, student_id, student_email, mobile_number, department, semester FROM attendees_information ORDER BY first_name ASC");

    if ($stmt) {
        $stmt->execute();
        $stmt->bind_result($first_name, $last_name, $student_id, $student_email, $mobile_number, $department, $semester);

        $i = 1;
        while ($stmt->fetch()) {
            fputcsv($output, [$i++, $first_name, $last_name, $student_id, $student_email, $mobile_number, $department, $semester]);
        }
        $stmt->close();
    } else {
        die("An error occurred. Error: " . $mysqli->error);
    }

    fclose($output);
    exit();
?>
