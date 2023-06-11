<?php
session_start();

// Check if the session exists and is not expired
if (isset($_SESSION['name']) && time() < $_SESSION['expires']) {
    // Check for inactivity duration
    $inactiveDuration = 60; // Set the desired inactivity duration in seconds (1 minute in this case)
    $lastActivity = isset($_SESSION['last_activity']) ? $_SESSION['last_activity'] : 0;
    if (time() - $lastActivity > $inactiveDuration) {
        // Inactivity duration exceeded, destroy the session and navigate to login.php
        session_unset();
        session_destroy();
        header("Location: login");
        exit;
    }
    $_SESSION['last_activity'] = time(); // Update the last activity time
    // Session exists and is not expired, navigate to page.php
    header("Location: ./pages/");
} else {
    // Session does not exist or is expired, navigate to login.php
    header("Location: login");
}
exit;
