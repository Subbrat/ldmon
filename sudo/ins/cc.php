<?php
include('./../class/conn.php');
$query = "SELECT * FROM floor ORDER BY ID DESC";
$result = mysqli_query($connection, $query);
?>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
    <style>
    body {
        background-color: #f2f2f2;
        padding: 20px;
    }

    .container {
        background-color: #fff;
        border-radius: 5px;
        padding: 20px;
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="table-responsive">
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
                        </tr>';
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
    <script>
    $(document).ready(function() {
        $('#employee_data').DataTable();
    });
    </script>
</body>

</html>