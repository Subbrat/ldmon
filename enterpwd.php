<?php
session_start();
if (isset($_SESSION['verified'])) {
    header("Location: ./sudo/");
    exit;
}
if (!isset($_SESSION['email']) || time() >= $_SESSION['expires']) {
    session_unset(); // Clear all session variables
    session_destroy(); // Destroy the session
    header("Location: login");
    exit;
}
if (isset($_POST['submitpwd'])) {
    $password = $_POST['password'];
    $email = $_SESSION['email'];
    $connection = mysqli_connect('localhost', 'root', 'Admin@1234', 'ldmon');
    if (!$connection) {
        die("Database connection failed: " . mysqli_connect_error());
    }
    $query = "SELECT * FROM admins WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($connection, $query);
    if (mysqli_num_rows($result) > 0) {
        $_SESSION['verified'] = true;
        $_SESSION['expires'] = time() + 60; // Refresh session expiration to 1 minute
        $_SESSION['last_activity'] = time(); // Set the last activity time
        header("Location: ./sudo/");
        exit;
    } else {
        $_SESSION['show_warning'] = true;
    }
    mysqli_close($connection);
}
?>
<!DOCTYPE html>
<html lang="en">
<?php include('./class/com.php'); ?>

<head>
    <style>
        .text-danger {
            color: #dc3545;
            font-size: 0.9rem;
            margin-top: 10px;
        }
    </style>
</head>

<body class="">
    <main class="container my-5 py-5">
        <div class="text-center">
            <img width="100px" src="./assets/icloud.png" />
            <h3 class="fw-normal"><?php echo $_SESSION['email']; ?> </h3>
        </div>
        <form class="mx-auto col-10 col-md-6 col-lg-4 my-4 mb-5" method="POST">
            <div class="input-group mb-3">
                <input type="password" autofocus class="form-control" name="password" placeholder="Password" aria-label="Password" aria-describedby="button-addon2" required>
                <button class="btn btn-outline-secondary border-none border-opacity-50" type="submit" name="submitpwd" id="button-addon2">
                    <i class="bi bi-arrow-right-circle"></i>
                </button>
            </div>
            <?php if (isset($_SESSION['show_warning']) && $_SESSION['show_warning']) { ?>
                <p class="text-danger">Invalid password. Please try again.</p>
                <script>
                    // Remove the warning message after 3 seconds
                    setTimeout(function() {
                        document.querySelector('.text-danger').remove();
                    }, 3000);
                </script>
            <?php
                unset($_SESSION['show_warning']);
            } ?>
        </form>
        <div class="d-flex justify-content-center my-3">
            <div class="text-center">
                <hr class="my-2">
                <div class="col-12">
                    <a href="#" class="text-decoration-none">
                        Forgot Password ?
                        <i class="bi bi-arrow-up-right small"></i> </a>
                    |<a href="login" class="text-decoration-none">
                        reset user
                        <i class="bi bi-arrow-up-right small"></i>
                    </a>
                </div>
            </div>
        </div>
    </main>
</body>

</html>