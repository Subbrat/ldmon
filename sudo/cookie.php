<?php
// Clear PHPSESSID cookie
if (isset($_COOKIE['PHPSESSID'])) {
    setcookie('PHPSESSID', '', time() - 3600, '/');
}

// Redirect to login page
header('Location: /ldmon/sudo/login.php');
exit();