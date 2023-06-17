<?php
session_start();
if (isset($_SESSION['verified'])) {
    include('./../../class/conn.php');

    $errorMessage = "";
    $successMessage = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $floorName = $_POST["floorName"];
        $location = $_POST["location"];
        $checkQuery = "SELECT * FROM floor WHERE floor_name = '$floorName'";
        $checkResult = $connection->query($checkQuery);

        if ($checkResult->num_rows > 0) {
            $errorMessage = "Floor already exists.";
        } else {
            $insertQuery = "INSERT INTO floor (floor_name, location) VALUES ('$floorName', ";

            if (!empty($location)) {
                $insertQuery .= "'$location')";
            } else {
                $insertQuery .= "NULL)";
            }

            if ($connection->query($insertQuery) === true) {
                $successMessage = "Floor added successfully.";
            } else {
                $errorMessage = "Error: " . $connection->error;
            }
        }
    } else {
        $errorMessage = "Invalid request.";
    }
} else {
    $errorMessage = "Session not verified.";
}

// Redirect back to the form page with appropriate messages
$_SESSION['errorMessage'] = $errorMessage;
$_SESSION['successMessage'] = $successMessage;
// header("Location: ");
exit;
