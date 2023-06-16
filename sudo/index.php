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
                    min-height: 100%;
                }

                @media (min-width:993px) {
                    #main {
                        margin-left: 310px;
                    }
                }

                @media (max-width:993px) {
                    #main {
                        margin-left: 0px;
                    }
                }
            </style>

        <body class="s-grey">
            <?php include('./includes/header.php');
            include('./includes/sidebar.php');
            ?>
            <div id="main" class="s-lightgrey">
                <div style="height:70px;" class="off-white"></div>
                <!--  -->
                <div class="s-green">ss</div>
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