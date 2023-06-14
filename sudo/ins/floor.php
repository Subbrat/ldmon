<?php
// session_start();
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
        $floorName = "";
        $location = "";
        $errorMessage = "";
    }
}
?>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <style>
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
<?php
$query = "SELECT * FROM floor ORDER BY ID DESC";
$result = mysqli_query($connection, $query);
?>

<body>
    <div class="s-border s-red" id="">
        <div class="card">
            <div class="card-body">
                <form method="POST">
                    <label class=" catlabel">floor</label><br>
                    <label for="floorName">Floor Name:</label>
                    <input type="text" name="floorName" value="<?php echo $floorName; ?>" autocomplete="off" required>
                    <label for="location">Location:</label>
                    <input type="text" name="location" value="<?php echo $location; ?>" autocomplete="off">
                    <button type="submit" class="s-btn s-round-large button">Add Floor</button>
                </form>
                <?php if (!empty($errorMessage)) : ?>
                <div class="alert alert-danger mt-3"><?php echo $errorMessage; ?></div>
                <?php endif; ?>
                <div class="table-responsive mt-4">
                    <table id="employee_data" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Sl. No.</th>
                                <th>Floor</th>
                                <th>Location</th>
                            </tr>
                        </thead>
                        <tbody>
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
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
    <script>
    $(document).ready(function() {
        $('#employee_data').DataTable();
    });
    </script>
</body>

</html>