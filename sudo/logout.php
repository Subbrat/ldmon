<?php
session_start();
// Retrieve the email from the session
$email = $_SESSION['email'];
// Retrieve the current time
$logoutTime = date('Y-m-d H:i:s');
// Update the logout time in the accesslog table
$connection = mysqli_connect('localhost', 'root', 'Admin@1234', 'ldmon');
if (!$connection) {
    die("Database connection failed: " . mysqli_connect_error());
}
$updateLogoutQuery = "UPDATE accesslog SET logout_time = '$logoutTime' WHERE user_id = '$email' AND logout_time IS NULL";
mysqli_query($connection, $updateLogoutQuery);
mysqli_close($connection);
// Unset all of the session variables
$_SESSION = array();
// Destroy the session
session_destroy();
// Redirect to the index page or any other page you desire
header("Location: ./index");
exit;