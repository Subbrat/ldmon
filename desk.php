<!DOCTYPE html>
<html>

<head>
    <title>Desk</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/subbrat/el@main/css/s6css.css" />
    <link rel="stylesheet" href="./../el/css/s6css.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/subbrat/el@main/css/ga.css" />
    <style>
    a {
        text-decoration: none;
    }

    .query-bar {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }

    .query-bar input {
        width: 900px;
        padding: 5px;
        font-size: 35px;
    }
    </style>
    <script>
    function OpenURL() {
        var query = document.getElementById('queryInput').value;
        if (query.includes('.com')) {
            window.location.href = "https://" + query;
        } else {
            window.location.href = "https://www.google.com/search?q=" + query;
        }
    }

    function handleKeyPress(event) {
        if (event.keyCode === 13) {
            OpenURL();
        }
    }
    </script>
</head>

<body class="s-grey">
    <div class="query-bar">
        <input type="text" id="queryInput" placeholder="" autofocus onkeypress="handleKeyPress(event)">
    </div>
    <p align="center"> <img
            src="https://github-readme-activity-graph.cyclic.app/graph?username=Subbrat&height=400&hide_title=true&bg_color=black&color=000&area=true&area_color=f00&radius=16">
    </p>
    <div class="s-content">
        <button class="s-green s-btn s-round-xxlarge"> <a href="https://github.com">GitHub</a></button>
        <button class="s-green s-btn s-round-xxlarge"> <a href="https://chat.openai.com">GPT</a></button>
        <button class="s-green s-btn s-round-xxlarge"> <a
                href="https://drive.google.com/drive/folders/16stFtUl3M01JLXLo3mk5wcCMcO2Fd5fO?usp=sharing_eip_se_dm&ts=6459f7a1">iLab
                Drive</a></button>
    </div>
</body>

</html>