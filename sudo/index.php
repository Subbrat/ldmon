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
        <link rel="stylesheet" href="./class/css/s6css.css">
        <link rel="stylesheet" href="./css/base.css">
        <style>
            body {
                padding-top: 10px;
            }
        </style>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>

    <body class="s-grey">
        <?php include('./includes/header.php');
        include('./includes/sidebar.php'); ?>
        <div id="main" class="s-light-grey">
            <!--  -->
            <div style="height:70px;" class=""></div>
            <!--  -->
            <?php include('./ins/ft.php'); ?>
            <? //php include('./ins/readonlytable.php'); 
            ?>
        </div>
        <?php include('./includes/footer.php'); ?>
        <script>
            $(document).ready(function() {
                $('form').submit(function(e) {
                    e.preventDefault(); // Prevent form submission
                    var form = $(this);
                    var url = form.attr('action');
                    var formData = form.serialize();

                    $.ajax({
                        type: 'POST',
                        url: url,
                        data: formData,
                        success: function(response) {
                            // Update the content dynamically
                            $('#main').html(response);
                        },
                        error: function(xhr, status, error) {
                            console.log(xhr.responseText);
                        }
                    });
                });
            });
        </script>
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