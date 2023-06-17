<?php
include('./../class/conn.php');

$query = "SELECT * FROM floor ORDER BY ID DESC";
$result = mysqli_query($connection, $query);
?>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
</head>

<body>
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