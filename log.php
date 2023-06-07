<?php
include_once('./class/conn.php');
// Assuming you have already established a database connection

// Fetch the log entries from the floor_log table
$query = "SELECT * FROM floor_log";
$result = mysqli_query($connection, $query);

// Check if there are any log entries
if (mysqli_num_rows($result) > 0) {
    // Display the log entries
    while ($row = mysqli_fetch_assoc($result)) {
        echo "Log ID: " . $row['id'] . "<br>";
        echo "Operation: " . $row['operation'] . "<br>";
        echo "Table Name: " . $row['table_name'] . "<br>";
        echo "Row ID: " . $row['row_id'] . "<br>";
        echo "Old Data: " . $row['old_data'] . "<br>";
        echo "New Data: " . $row['new_data'] . "<br>";
        echo "Change Time: " . $row['change_time'] . "<br>";
        echo "<br>";
    }
} else {
    echo "No log entries found.";
}

// Close the database connection
mysqli_close($connection);
