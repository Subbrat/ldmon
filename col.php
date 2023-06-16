<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Color Palette Template</title>
    <style>
        /* CSS styles using the color palette */
        .color-card {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 200px;
            height: 200px;
            margin: 10px;
            text-align: center;
            font-weight: bold;
            font-family: Arial, sans-serif;
            border-radius: 5px;
        }

        .dark-blue {
            background-color: #1D3557;
            color: #F1FAEE;
        }

        .off-white {
            background-color: #F1FAEE;
            color: #1D3557;
        }

        .light-blue {
            background-color: #A8DADC;
        }

        /* Additional styling for demonstration */
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #F1FAEE;
        }
    </style>
</head>

<body>
    <div class="color-card dark-blue">
        <p>Header/Footer</p>
        <p>#1D3557</p>
        <p>#F1FAEE</p>
    </div>

    <div class="color-card off-white">
        <p>Navigation Menu</p>
        <p>#F1FAEE</p>
        <p>#1D3557</p>
    </div>

    <div class="color-card light-blue">
        <p>Main Content Area</p>
        <p>#A8DADC</p>
        <p>#1D3557</p>
    </div>

    <div class="color-card off-white">
        <p>Sidebar/Widgets</p>
        <p>#F1FAEE</p>
        <p>#1D3557</p>
    </div>

    <div class="color-card light-blue">
        <p>Call-to-Action Button</p>
        <p>#A8DADC</p>
        <p>#F1FAEE</p>
    </div>

    <div class="color-card dark-blue">
        <p>Overlay or Modal Window</p>
        <p>#1D3557</p>
        <p>#F1FAEE</p>
    </div>
</body>

</html>