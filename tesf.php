<!DOCTYPE html>
<html>

<head>
    <title>Tables in Database</title>
</head>

<body>
    <?php
    require_once('./class/conn.php');

    // Fetch all tables in the database
    $tablesQuery = "SHOW TABLES";
    $tablesResult = mysqli_query($connection, $tablesQuery);
    if ($tablesResult) {
        echo "<h2>Tables in the Database</h2>";
        echo "<ul>";
        while ($tableRow = mysqli_fetch_row($tablesResult)) {
            $tableName = $tableRow[0];
            echo "<li>$tableName</li>";
        }
        echo "</ul>";
        mysqli_free_result($tablesResult);
    } else {
        echo "Failed to fetch tables from the database";
    }
    // Close the database connection
    mysqli_close($connection);
    ?>
</body>

</html>