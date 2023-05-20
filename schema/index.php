<?php
// Get the current directory
$directory = __DIR__;

// Get all PHP files in the directory
$phpFiles = glob($directory . '/*.php');

// Loop through each PHP file
foreach ($phpFiles as $file) {
    // Get the file name without the directory path and .php extension
    $fileName = basename($file, '.php');

    // Exclude index.php from the list and files with "0" in their names
    if ($fileName !== 'index' && strpos($fileName, '0') === false) {
        // Get the page title from the PHP file itself
        $pageTitle = '';
        ob_start();
        include $file;
        $content = ob_get_clean();

        // Extract the page title from the PHP file's content
        preg_match('/<title>(.*?)<\/title>/is', $content, $matches);
        if (isset($matches[1])) {
            $pageTitle = $matches[1];
        }

        // Display the hyperlink with the page title or filename
        echo '<h1 style="text-align:left; margin-left: 35%;">' . '<a style="text-decoration:none;" href="' . $fileName . '.php" target="_blank">' . ($pageTitle ? $pageTitle : $fileName) . '</a></h1>';
    }
}
