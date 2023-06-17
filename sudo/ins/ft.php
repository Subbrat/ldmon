<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
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

<body>
    <div class="s-border s-red" id="">
        <div class="card">
            <div class="card-body">
                <form method="POST" action="./ins/fts.php">
                    <!-- Update the action attribute -->
                    <label class=" catlabel">floor</label><br>
                    <label for="floorName">Floor Name:</label>
                    <input type="text" name="floorName" autocomplete="off" required>
                    <label for="location">Location:</label>
                    <input type="text" name="location" autocomplete="off">
                    <button type="submit" class="s-btn s-round-large button">Add Floor</button>
                </form>
                <?php if (!empty($errorMessage)) : ?>
                <div class="alert alert-danger mt-3" id="errorMessage"><?php echo $errorMessage; ?></div>
                <script>
                setTimeout(function() {
                    document.getElementById('errorMessage').remove();
                }, 3000);
                </script>
                <?php endif; ?>
                <?php if (!empty($successMessage)) : ?>
                <div class="alert alert-success mt-3" id="successMessage"><?php echo $successMessage; ?></div>
                <script>
                setTimeout(function() {
                    document.getElementById('successMessage').remove();
                }, 3000);
                </script>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>