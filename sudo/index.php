<?php
session_start();
if (isset($_SESSION['verified'])) {
    // Session exists, display the HTML table contents
?>
    <!DOCTYPE html>
    <html>
    <?php include('./../class/com.php'); ?>

    <head>
        <link rel="stylesheet" href="./../class/css/s6css.css">
        <link rel="stylesheet" href="./css/base.css">
        <style>
            body {
                padding-top: 10px;
            }
        </style>
    </head>

    <body class="s-grey s-pink">
        <?php include('./includes/header.php'); ?>
        <?php include('./includes/sidebar.php'); ?>
        <div id="main" class="s-red">
            content goes fom here
        </div>
    </body>

    </html>
<?php
} else {
    // Session does not exist, navigate to index page
    $_SESSION = array();
    session_destroy();
    header("Location:./../login");
    exit;
}
?>