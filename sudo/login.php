<?php
session_start();
if (isset($_SESSION['email'])) {
    header("Location: ./pages/");
    exit;
}
if (isset($_POST['submitusnm'])) {
    $email = $_POST['email'];
    include('./../class/conn.php');
    $query = "SELECT * FROM admins WHERE email = '$email'";
    $result = mysqli_query($connection, $query);
    if (mysqli_num_rows($result) > 0) {
        $_SESSION['email'] = $email;
        header("Location: enterpwd");
        exit;
    } else {
        // Set a session variable to indicate the existence of the warning
        $_SESSION['show_warning'] = true;
    }
    mysqli_close($connection);
} else {
    // Clear the session variables related to email and warning when page is refreshed
    unset($_SESSION['email']);
    unset($_SESSION['show_warning']);
}
?>
<!DOCTYPE html>
<?php include('./../class/com.php'); ?>

<body class="">
    <main class="container my-5 py-5">
        <div class="text-center">
            <img width="100px" src="./assets/icloud.png" />
            <h3 class="fw-normal">
                Enter Email
                <!-- Add the warning message placeholder here -->
            </h3>
        </div>
        <form class="mx-auto col-10 col-md-6 col-lg-4 my-4 mb-5" method="POST">
            <div class="input-group mb-3">
                <input autofocus type="email" class="form-control" name="email" placeholder="Email" aria-label="Email" aria-describedby="button-addon2" required value="<?php echo isset($_SESSION['email']) ? $_SESSION['email'] : ''; ?>">
                <button class="btn btn-outline-secondary border-none border-opacity-50" type="submit" name="submitusnm" id="button-addon2">
                    <i class="bi bi-arrow-right-circle"></i>
                </button>
            </div>
            <?php if (isset($_SESSION['show_warning']) && $_SESSION['show_warning']) { ?>
                <h6 class="text-danger">Invalid eMail id</h6>
                <script>
                    // Remove the warning message after 3 seconds
                    setTimeout(function() {
                        document.querySelector('.text-danger').remove();
                    }, 3000);
                </script>
            <?php
                // Reset the session variable
                $_SESSION['show_warning'] = false;
            } ?>
        </form>
        <div class="d-flex justify-content-center my-3">
            <div class="text-center">
                <hr class="my-2">
            </div>
        </div>
    </main>
</body>

</html>