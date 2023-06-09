<?php
session_start();
if (isset($_SESSION['verified'])) {
    header("Location: ./pages");
    exit;
}
if (!isset($_SESSION['email'])) {
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
        header("Location: ./pages");
        exit;
    } else {
        $_SESSION['show_warning'] = true;
    }
    mysqli_close($connection);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
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
            <img width="100px" src="./icloud.png" />
            <h3 class="fw-normal"><?php echo $_SESSION['email']; ?> </h3>
        </div>
        <form class="mx-auto col-10 col-md-6 col-lg-4 my-4 mb-5" method="POST">
            <div class="input-group mb-3">
                <input type="password" autofocus class="form-control" name="password" placeholder="Password"
                    aria-label="Password" aria-describedby="button-addon2" required>
                <button class="btn btn-outline-secondary border-none border-opacity-50" type="submit" name="submitpwd"
                    id="button-addon2">
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
                    |<a href="./login.php" class="text-decoration-none">
                        reset user
                        <i class="bi bi-arrow-up-right small"></i>
                    </a>
                </div>
            </div>
        </div>
    </main>
</body>

</html>