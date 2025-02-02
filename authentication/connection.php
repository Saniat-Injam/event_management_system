<?php
    function connection(){
        $dbHostname= "localhost";
        $dbUsername= "root";
        $password= "";
        $dbname= "event_management_system";

        return $mysqli = new mysqli($dbHostname, $dbUsername, $password, $dbname);

    }

    //function closeConnection($mysqli){
    //    $mysqli->close();
    //}
//?>