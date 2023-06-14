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

<head>
    <?php
    $query = "SELECT * FROM floor ORDER BY ID DESC";
    $result = mysqli_query($connection, $query);
    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
    <style>
    .error-message {
        color: red;
        font-weight: bold;
    }

    .success-message {
        color: green;
        font-weight: bold;
    }

    input[type=text] {
        width: 350px;
        padding: 4px 7px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 1px solid red;
        background-color: grey;
    }

    input[type=text]:focus {
        border: 1px solid #fff;
        outline: 1px solid green;
        background-color: lightgrey;
    }

    .button {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 4px 7px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: auto;
        cursor: pointer;
    }

    .catlabel {
        border-bottom: 2px solid green;
        width: 69px;
        font-size: x-large;
    }
    </style>
</head>

<body>
    <div class="s-margin s-padding s-border">
        <form method="POST">
            <label class=" catlabel">floor</label><br>
            <label for="floorName">Floor Name:</label>
            <input type="text" name="floorName" value="<?php echo $floorName; ?>" autocomplete="off" required>
            <label for="location">Location:</label>
            <input type="text" name="location" value="<?php echo $location; ?>" autocomplete="off">
            <button type="submit" class="s-btn s-round-large button">Add Floor</button>
        </form>
        <div id="" class="">
            <div class="container">
                <div class="table-responsive">
                    <table id="employee_data" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>slno</th>
                                <th>floor</th>
                                <th>location</th>
                        </thead>
                        <?php
                        while ($row = mysqli_fetch_array($result)) {
                            echo '
 <tr>
<td>' . $row["id"] . '</td>
<td>' . $row["floor_name"] . '</td>
<td>' . $row["location"] . '</td>
 </tr>
 ';
                        }
                        ?>
                    </table>
                </div>
            </div>
            <script>
            $(document).ready(function() {
                $('#employee_data').DataTable();
            });
            </script>
        </div>
    </div>
    <?php if (!empty($errorMessage)) : ?>
    <p class="error-message"><?php echo $errorMessage; ?></p>
    <?php endif; ?>
    <script>
    // Clear form fields when the page is refreshed
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }
    </script>