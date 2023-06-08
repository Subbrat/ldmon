<!DOCTYPE html>
<html>

<head>
    <title>Debugging Environment</title>
    <style>
    body {
        font-family: Arial, sans-serif;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
    }

    h1 {
        margin-top: 0;
    }

    .debug-info {
        background-color: #f5f5f5;
        padding: 10px;
        margin-top: 20px;
    }
    </style>
</head>

<body>
    <div class="container">
        <h1>Debugging Environment</h1>

        <h2>Debugging Information</h2>
        <div class="debug-info">
            <h3>Request Parameters</h3>
            <?php
            // Display request parameters
            echo '<pre>';
            print_r($_REQUEST);
            echo '</pre>';
            ?>

            <h3>Database Queries</h3>
            <?php
            // Perform database queries and display results
            // Replace with your actual database queries
            $host = 'localhost';
            $username = 'root';
            $password = 'Admin@1234';
            $database = 'ldmon';

            // Connect to the database
            $conn = mysqli_connect($host, $username, $password, $database);

            // Check connection
            if (!$conn) {
                die('Database connection failed: ' . mysqli_connect_error());
            }

            // Perform a sample query
            $query = 'SELECT * FROM floor';
            $result = mysqli_query($conn, $query);

            // Display query results
            echo '<pre>';
            print_r(mysqli_fetch_all($result, MYSQLI_ASSOC));
            echo '</pre>';

            // Close the database connection
            mysqli_close($conn);
            ?>

            <h3>Logged Messages</h3>
            <?php
            // Display logged messages
            // Replace with your logging mechanism
            $logFile = 'debug.log';

            if (file_exists($logFile)) {
                echo '<pre>';
                echo file_get_contents($logFile);
                echo '</pre>';
            } else {
                echo 'No logged messages.';
            }
            ?>
        </div>
    </div>
</body>

</html>