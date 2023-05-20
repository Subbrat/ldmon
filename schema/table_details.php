<?php
require_once('./../class/conn.php');
// Check if the table name is provided in the URL
if (isset($_GET['table'])) {
    $tableName = $_GET['table'];
    echo "<h2>Columns in Table: $tableName</h2>";
    // Retrieve columns for the specified table
    $columnsQuery = "SHOW COLUMNS FROM $tableName";
    $columnsResult = mysqli_query($connection, $columnsQuery);
    if ($columnsResult) {
        echo "<ul>";
        while ($columnRow = mysqli_fetch_assoc($columnsResult)) {
            $columnName = $columnRow['Field'];
            echo "<li>$columnName</li>";
        }
        echo "</ul>";
        mysqli_free_result($columnsResult);
    } else {
        echo "Failed to fetch columns for table: $tableName";
    }
} else {
    header("Location: ./all_table.php");
}
// Close the database connection
mysqli_close($connection);
