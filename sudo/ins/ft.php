<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/subbrat/el@main/css/s6css.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/subbrat/el@main/css/ga.css" />
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

    label {
        color: #000;
    }

    /* Added styles for error and success messages */
    .alert {
        display: none;
        margin-top: 10px;
    }

    .alert-danger {
        color: red;
    }

    .alert-success {
        color: green;
    }

    #floorf {
        height: 200px;
    }
    </style>
</head>
<div class="s-border s-red">
    <div class="card" id="floorf">
        <div class="card-body">
            <form id="addFloorForm" method="POST" action="./ins/fts.php">
                <label class=" catlabel">floor</label><br>
                <label for="floorName s-green">Floor Name:</label>
                <input type="text" name="floorName" autocomplete="off" required>
                <label for="location">Location:</label>
                <input type="text" name="location" autocomplete="off">
                <button type="submit" class="s-btn s-round-large button">Add Floor</button>
            </form>
            <div class="alert alert-danger" id="errorMessage"></div>
            <div class="alert alert-success" id="successMessage"></div>
        </div>
    </div>
</div>