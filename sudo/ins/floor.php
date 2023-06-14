<?php
//session_start();
if (isset($_SESSION['verified'])) {
    include('./../class/conn.php');
    $floorName = "";
    $location = "";
    $errorMessage = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $floorName = $_POST["floorName"];
        $location = $_POST["location"];

        // Check if the floor name already exists
        $checkQuery = "SELECT * FROM floor WHERE floor_name = '$floorName'";
        $checkResult = $connection->query($checkQuery);

        if ($checkResult->num_rows > 0) {
            $errorMessage = "Floor name already exists. Please enter a unique floor name.";
        } else {
            // Insert the new floor data into the table
            $insertQuery = "INSERT INTO floor (floor_name, location) VALUES ('$floorName', ";

            if (!empty($location)) {
                $insertQuery .= "'$location')";
            } else {
                $insertQuery .= "NULL)";
            }

            if ($connection->query($insertQuery) === true) {
                echo "<p class='success-message'>Floor data added successfully.</p>";
                // Clear form fields after successful submission
                $floorName = "";
                $location = "";
            } else {
                $errorMessage = "Error: " . $connection->error;
            }
        }
    } else {
        // Reset variables when the page is loaded without form submission
        $floorName = "";
        $location = "";
        $errorMessage = "";
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <style>
    .error-message {
        color: red;
        font-weight: bold;
    }

    .success-message {
        color: green;
        font-weight: bold;
    }
    </style>
</head>

<body>
    <form method="POST">
        <label for="floorName">Floor Name:</label>
        <input type="text" name="floorName" value="<?php echo $floorName; ?>" autocomplete="off" required>
        <label for="location">Location:</label>
        <input type="text" name="location" value="<?php echo $location; ?>" autocomplete="off">
        <button type="submit">Add Floor</button>
    </form>
    <?php if (!empty($errorMessage)) : ?>
    <p class="error-message"><?php echo $errorMessage; ?></p>
    <?php endif; ?>
    <script>
    // Clear form fields when the page is refreshed
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }
    </script>
</body>

</html>