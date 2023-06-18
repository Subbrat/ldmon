<?php
session_start();
if (isset($_SESSION['verified'])) {
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
        <!-- <div style="height:70px;" clasxls=""></div> -->
        <!--  -->
        <?php include('./ins/ft.php'); ?>
        <? //php include('./ins/readonlytable.php');
            ?>
    </div>
    <?php include('./includes/footer.php'); ?>
    <script>
    $(document).ready(function() {
        $('form').submit(function(e) {
            e.preventDefault();
            var form = $(this);
            var url = form.attr('action');
            var formData = form.serialize();
            $.ajax({
                type: 'POST',
                url: url,
                data: formData,
                dataType: 'json',
                success: function(response) {
                    if (response.errorMessage) {
                        $('#errorMessage').text(response.errorMessage);
                        $('#errorMessage').show();
                        setTimeout(function() {
                            $('#errorMessage').fadeOut();
                        }, 2500);
                    } else {
                        $('#successMessage').text(response.successMessage);
                        $('#successMessage').show();
                        setTimeout(function() {
                            $('#successMessage').fadeOut();
                        }, 2500);
                    }
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