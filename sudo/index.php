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

    <body class="s-grey">
        <?php include('./includes/header.php');
            include('./includes/sidebar.php');
            ?>
        <div id="main" class="s-lgrey">
            <div style="height:70px;" class=""></div>
            <!--  -->
            <?php include('./ins/readtable.php');
                ?>
            <!--  -->
        </div>
        <?php include('./includes/footer.php'); ?>
    </body>

    </html>
    <?php
    } else {
        $_SESSION = array();
        session_destroy();
        header("Location:./../login");
        exit;
    }
    ?>