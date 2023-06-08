table {
width: 80%;
border-collapse: collapse;
}

th,
td {
text-align: left;
padding: 8px;
}

th {
background-color: #000;
}

tr:nth-child(even) {
background-color: #f9f9f9;
}

tr:hover {
background-color: #e6e6e6;
}

.action-buttons {
display: flex;
justify-content: space-around;
}

.edit-button,
.delete-button {
background-color: #4CAF50;
color: white;
padding: 6px 10px;
border: none;
cursor: pointer;
}

.edit-button:hover,
.delete-button:hover {
background-color: #45a049;
}

<table>
    <thead>
        <tr>
            <th></th>
            <th>slno</th>
            <th>floor</th>
            <th>view room</th>
            <th>view instrument</th>
            <th>edit</th>
            <th>delete</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td>1</td>
            <td>1st Floor</td>
            <td><a href="#">Room 101</a></td>
            <td><a href="#">Instrument 1</a></td>
            <td class="action-buttons">
                <button class="edit-button">Edit</button>
            </td>
            <td class="action-buttons">
                <button class="delete-button">Delete</button>
            </td>
        </tr>
        <!-- Add more rows as needed -->
    </tbody>
</table>