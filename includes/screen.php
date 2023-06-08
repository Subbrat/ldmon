<!DOCTYPE html>
<html>

<head>
    <title>Dynamic PHP Site</title>
    <style>
    /* Add your CSS styles here */
    /* ... */
    </style>
</head>

<body>
    <?php
    // Get all files in the current directory
    $files = glob('*');

    // Filter out directories and non-PHP files
    $pages = array_filter($files, function ($file) {
        return is_file($file) && pathinfo($file, PATHINFO_EXTENSION) == 'php';
    });
    ?>

    <div>
        <select id="pageSelect" onchange="updateIframes()">
            <?php foreach ($pages as $page) : ?>
            <option value="<?php echo $page; ?>"><?php echo $page; ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div class="iframes-container">
        <iframe id="iframe1" style="width: 1344px; height: 800px" src="<?php echo $pages[0]; ?>"
            allow="autoplay"></iframe>
        <iframe id="iframe2" style="width: 360px; height: 800px" src="<?php echo $pages[0]; ?>"
            allow="autoplay"></iframe>
    </div>

    <script>
    function updateIframes() {
        var pageSelect = document.getElementById('pageSelect');
        var selectedPage = pageSelect.value;

        var iframe1 = document.getElementById('iframe1');
        var iframe2 = document.getElementById('iframe2');

        iframe1.src = selectedPage;
        iframe2.src = selectedPage;
    }
    </script>
</body>

</html>