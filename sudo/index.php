<?php
session_start();

// Check if the session exists
if (isset($_SESSION['name'])) {
    // Session exists, navigate to page.php
    header("Location: ./pages");
} else {
    // Session does not exist, navigate to login.php
    header("Location: login");
}
exit;