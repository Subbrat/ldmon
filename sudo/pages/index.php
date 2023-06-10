<?php
session_start();
if (isset($_SESSION['verified'])) {
    // Session exists, display the HTML table contents
?>
    <!DOCTYPE html>
    <html>
    <?php include('./../../class/com.php'); ?>

    <body class="s-grey">
        <?php include('./includes/header.php'); ?>
        <?php include('./includes/sidebar.php'); ?>
        <?php include('./tables.php'); ?>
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