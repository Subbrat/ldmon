<?php
session_start();

if (isset($_SESSION['verified'])) {
    // Session is set, do something
    echo "Session is active. User: " . $_SESSION['email'];
} else {
    // Session is not set, do something else
    echo "Session is not active.";
}
