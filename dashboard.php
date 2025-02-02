<?php
    session_start();
    include("authentication/connection.php");



?>

<html lang  = "en">
    <head>
        <title> Dashboard </title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.2.1/datatables.min.css" rel="stylesheet">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.datatables.net/v/bs5/jq-3.7.0/dt-2.2.1/datatables.min.js"></script>



    </head>
    <body class = bg-body-secondary>

        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="javascript:void(0)"> Dashboard </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mynavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="attendees.php"> Attendees </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0)"> Admins </a>
                        </li>

                    </ul>
        <!--            <form class="d-flex">-->
        <!--                <input class="form-control me-2" type="text" placeholder="Search">-->
        <!--                <button class="btn btn-primary" type="button">Search</button>-->
        <!--            </form>-->
                </div>
            </div>
        </nav>



        <div class= "container">
            <div class = "row justify-content-center">
                <div class = "col-lg-12 bg-light rounded my-2 py-2">
                    <div style="padding-bottom: 30px">
                        <h1 class = "text fw-bold text-center text-dark pt-2"> Upcoming Events </h1>

                        <!--                ALERT MESSAGE-->
                        <?php if(isset($_SESSION["response"])) { ?>
                            <div class="alert alert-<?=$_SESSION["response_type"]?> alert-dismissible text-center">
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                <?php echo $_SESSION["response"];?>
                            </div>
                        <?php } unset($_SESSION["response"])?>


                        <a href="add.php"> <button class="btn btn-primary" style= "float: right"> Add a New Event </button> </a>
                    </div>
                    <hr>
                    <table class = "table table-bordered table-striped table-hover">
                        <thead>
                        <tr>
                            <th> ID </th>
                            <th> Event Name </th>
                            <th> Event Venue </th>
                            <th> Event Type </th>
                            <th> Date </th>
                            <th> Time </th>
                            <th> Chief Guest </th>
                            <th> Event Details </th>
                            <th> Edit </th>
                            <th> Delete </th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $mysqli = connection();
                        $sql = "SELECT * FROM events_information";
                        //$result = $mysqli->query($sql);
                        $stmt = $mysqli->prepare($sql);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        while($row = $result->fetch_assoc()) {
                            ?>
                            <tr>
                                <td> <?php echo $row["id"] ?> </td>
                                <td> <?php echo $row["event_name"] ?> </td>
                                <td> <?php echo $row["event_venue"] ?> </td>
                                <td> <?php echo $row["event_type"] ?> </td>
                                <td> <?php echo $row["date"] ?> </td>
                                <td> <?php echo $row["time"] ?> </td>
                                <td> <?php echo $row["chief_guest"] ?> </td>
                                <td> <a href="#?details= <?=$row["id"];?>" class="btn btn-secondary"> Details </a> </td>
                                <td> <a href="edit.php?id= <?=$row["id"];?> " class="btn btn-success"> Edit </a> </td>
                                <td> <a href="delete.php?delete= <?=$row["id"];?>" class="btn btn-danger" onclick="return confirm('Do you want to delete this record');"> Delete </a> </td>



                            </tr>

                        <?php } ?>

                        </tbody>

                    </table>

                </div>
            </div>
        <div>

        <!--    JQuery IS INTRODUCED HERE-->
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
