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
        padding: 3px;
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
        padding: 3px 6px;
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
    <div id="" class="s-grey s-card-4">
        <table class="s-table-all s-card-4 s_table custom-table custom-table-striped">
            <tr>
                <th>slno</th>
                <th>select</th>
                <th>floor</th>
                <th>view room</th>
                <th>view all instrument</th>
                <th>edit</th>
                <th>delete</th>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>1</td>
                <td class="custom-checkbox"><input class="" type="checkbox"></td>
                <td>Smith</td>
                <td>Smith</td>
                <td><button class="custom-btn">Button</button></td>
                <td><button class="custom-btn">Button</button></td>
                <td><button class="custom-btn">Button</button></td>
            </tr>
            <tr>
                <td>1</td>
                <td class="custom-checkbox"><input class="" type="checkbox"></td>
                <td>Smith</td>
                <td>Smith</td>
                <td><button class="custom-btn">Button</button></td>
                <td><button class="custom-btn">Button</button></td>
                <td><button class="custom-btn">Button</button></td>
            </tr>
        </table>
    </div>
</body>