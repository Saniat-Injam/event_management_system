<?php
    include "authentication/connection.php";
    $mysqli = connection();
?>

<html lang  = "en">
    <head>
        <title> Dashboard Using JQuery Datatables</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.2.1/datatables.min.css" rel="stylesheet">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.2.1/datatables.min.js"></script>
    </head>

    <body class= "bg-secondary">
        <div class= "container">
            <div class = "row justify-content-center">
                <div class = "col-lg-14 bg-light rounded my-2 py-2">
                    <div class="my-4" style="padding-bottom: 30px">
                        <h1 class = "text fw-bold text-center text-dark pt-2"> Attendees Information </h1>
                        <a href="csv_export.php"> <button class="btn btn-success" style= "float: right"> Export data </button> </a>
                    </div>
                    <hr>

                    <table class = "table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th> ID </th>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th> Student ID </th>
                                <th> Student Email </th>
                                <th> Mobile Number </th>
                                <th> Department </th>
                                <th> Semester </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $sql = "SELECT * FROM attendees_information";
                                $result = $mysqli->query($sql);
                                while($row = $result->fetch_assoc()) {
                                    ?>
                                    <tr>
                                        <td> <?php echo $row["id"] ?> </td>
                                        <td> <?php echo $row["first_name"] ?> </td>
                                        <td> <?php echo $row["last_name"] ?> </td>
                                        <td> <?php echo $row["student_id"] ?> </td>
                                        <td> <?php echo $row["student_email"] ?> </td>
                                        <td> <?php echo $row["mobile_number"] ?> </td>
                                        <td> <?php echo $row["department"] ?> </td>
                                        <td> <?php echo $row["semester"] ?> </td>

                                    </tr>
                                <?php } ?>

                        </tbody>

                    </table>

                </div>
            </div>
        </div>

        <!--    JQuery IS INTRODUCED HERE FOR PAGINATION-->
        <script type= "text/javascript">
            $(document).ready(function () {
                $("table").DataTable({
                    // searching: false,
                    // ordering: false,
                    // paging: false
                });
            })

        </script>

    </body>
</html>
