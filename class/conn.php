<?php
$servername = "localhost";
$username = "root";
$password = "Admin@123";
$dbname = "ldmon";

$connection = mysqli_connect($servername, $username, $password, $dbname);

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}