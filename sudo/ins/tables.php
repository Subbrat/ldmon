<head>
    <style>
    .s_table {
        width: 70%;
    }

    /* Custom Table Styles */
    .custom-table {
        border-collapse: collapse;
        width: 70%;
    }

    .custom-table th,
    .custom-table td {
        border: 1px solid #ddd;
        padding: 1px;
        text-align: left;
    }

    .custom-table th {
        background-color: #4287f5;
        color: #fff;
    }

    .custom-table-striped tbody tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .custom-btn {
        padding: 1px 3px;
        text-decoration: none;
    }

    .custom-checkbox {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    </style>
</head>

<body>
    <div class="container">
        <h2>Floor Details</h2>
        <table class="s-table-all">
            <tr>
                <th>slno</th>
                <th>floor</th>
                <th>location</th>
                <th>view rooms</th>
                <th>view all instrument</th>
                <th>edit</th>
                <th>delete</th>
            </tr>
            <?php
            // Fetch all floor details from the table
            include('./../class/conn.php');
            $query = "SELECT * FROM floor";
            $result = $connection->query($query);

            if ($result->num_rows > 0) {
                $count = 1;
                while ($row = $result->fetch_assoc()) {
                    $floorId = $row['id'];
                    $floorName = $row['floor_name'];
                    $location = $row['location'];
            ?>
            <tr>
                <td><?php echo $count; ?></td>
                <td><?php echo $floorName; ?></td>
                <td><?php echo $location; ?></td>
                <td><button class="custom-btn">View Rooms</button></td>
                <td><button class="custom-btn">View All Instruments</button></td>
                <td><button class="custom-btn">Edit</button></td>
                <td><button class="custom-btn">Delete</button></td>
            </tr>
            <?php
                    $count++;
                }
            } else {
                ?>
            <tr>
                <td colspan="7">No floor data found.</td>
            </tr>
            <?php
            }
            ?>
        </table>
    </div>
</body>