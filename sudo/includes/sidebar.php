<head>
</head>
<nav class="s-sidebar s-card-4 s-collapse s-grey s-animate-left" style="z-index:3;width:300px;" id="mySidebar">
    <br>
    <div class="s-container s-row">
        <div class="s-col s4">
            <img src="./includes/avatar.png" class="s-circle s-margin-right" style="width:50px">
        </div>
        <div class="s-col s8 s-bar">
            <span>Welcome, <strong>$session_user</strong></span><br>
        </div>
    </div>
    <hr>
    <div class="s-container">
        some text
    </div>
    <hr>
    <div class="s-bar-block s-light-grey">
        <a href=" #" class="s-bar-item s-button">Link 1</a>
        <div class="s-dropdown-hover">
            <button class="s-button" onclick="myDropFunc()">
                Dropdown <i class="fa fa-caret-down"></i>
            </button>
            <div class="s-dropdown-content s-bar-block s-white">
                <a href="#" class="s-bar-item s-button">Link</a>
                <a href="#" class="s-bar-item s-button">Link</a>
            </div>
        </div>
        <div class="s-dropdown-hover">
            <button class="s-button" onclick="myDropFunc()">
                Dropdown <i class="fa fa-caret-down"></i>
            </button>
            <div class="s-dropdown-content s-bar-block s-white">
                <a href="#" class="s-bar-item s-button">Link</a>
                <a href="#" class="s-bar-item s-button">Link</a>
            </div>
        </div>
    </div>
    <script>
        var mySidebar = document.getElementById("mySidebar");
        var overlayBg = document.getElementById("myOverlay");

        function w3_open() {
            if (mySidebar.style.display === 'block') {
                mySidebar.style.display = 'none';
                overlayBg.style.display = "none";
            } else {
                mySidebar.style.display = 'block';
                overlayBg.style.display = "block";
            }
        }

        function w3_close() {
            mySidebar.style.display = "none";
            overlayBg.style.display = "none";
        }
    </script>
</nav>
</nav>