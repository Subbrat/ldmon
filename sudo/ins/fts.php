    <?php
    session_start();
    if (isset($_SESSION['verified'])) {
        include('./../../class/conn.php');

        $errorMessage = "";
        $successMessage = "";

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $floorName = trim($_POST["floorName"]);
            $location = trim($_POST["location"]);

            if (empty($floorName) || empty($location)) {
                $errorMessage = "Floor Name and Location are required.";
            } else {
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
            }
        } else {
            $errorMessage = "Invalid request.";
        }

        // Prepare the response
        $response = array(
            'errorMessage' => $errorMessage,
            'successMessage' => $successMessage
        );

        echo json_encode($response);
    } else {
        $errorMessage = "Session not verified.";
        echo $errorMessage;
    }
