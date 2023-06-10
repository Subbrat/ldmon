<?php
session_start();

if (isset($_SESSION['verified'])) {
    // Session exists, display the HTML table contents
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Page Title</title>
        <link href="styles.css" rel="stylesheet">
    </head>

    <body>
        <h1>Welcome to the Page</h1>
        <table>
            <thead>
                <tr>
                    <th>Column 1</th>
                    <th>Column 2</th>
                    <th>Column 3</th>
                </tr>
            </thead>
        </table>
        <a href="logout.php">Logout</a>
    </body>

    </html>
<?php
} else {
    // Session does not exist, navigate to index page
    $_SESSION = array();
    session_destroy();
    header("Location:./../login");
    exit;
}
?>