<?php
// session_start();
if (isset($_SESSION['verified'])) {
    include('./../class/conn.php');
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $floorName = $_POST["floorName"];
        $location = $_POST["location"];
        // Check if the floor name already exists
        $checkQuery = "SELECT * FROM floor WHERE floor_name = '$floorName'";
        $checkResult = $connection->query($checkQuery);
        if ($checkResult->num_rows > 0) {
            echo "<p class='error-message'>Floor name already exists. Please enter a unique floor name.</p>";
        } else {
            // Insert the new floor data into the table
            $insertQuery = "INSERT INTO floor (floor_name, location) VALUES ('$floorName', '$location')";
            if ($connection->query($insertQuery) === true) {
                echo "<p class='success-message'>Floor data added successfully.</p>";
            } else {
                echo "<p class='error-message'>Error: " . $connection->error . "</p>";
            }
        }
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
        <input type="text" name="floorName" required>
        <label for="location">Location:</label>
        <input type="text" name="location">
        <button type="submit">Add Floor</button>
    </form>
</body>

</html>