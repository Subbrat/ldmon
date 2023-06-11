<?php
session_start();

// Check if the session exists and is not expired
if (isset($_SESSION['name']) && time() < $_SESSION['expires']) {
    // Session exists and is not expired, navigate to page.php
    header("Location: ./pages/");
} else {
    // Session does not exist or is expired, navigate to login.php
    header("Location: login");
}
exit;
