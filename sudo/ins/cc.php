<?php
include('./../class/conn.php');
$query = "SELECT * FROM floor ORDER BY ID DESC";
$result = mysqli_query($connection, $query);
?>
<!DOCTYPE html>
<html>

<head>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
</head>

<body>
    <div class="container">
        <br />
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
</body>

</html>
<script>
$(document).ready(function() {
    $('#employee_data').DataTable();
});
</script>