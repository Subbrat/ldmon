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
                $response = array(
                    'redirect' => 'index.php',
                    'successMessage' => $successMessage
                );
                echo json_encode($response);
                exit();
            } else {
                $errorMessage = "Error: " . $connection->error;
            }
        }
    } else {
        $errorMessage = "Invalid request.";
    }

    // Generate the updated content to return
    ob_start();
    include('./../ins/ft.php');
    $updatedContent = ob_get_clean();

    // Prepare the response
    $response = array(
        'errorMessage' => $errorMessage,
        'successMessage' => $successMessage,
        'content' => $updatedContent
    );

    echo json_encode($response);
} else {
    $errorMessage = "Session not verified.";
    echo $errorMessage;
}
