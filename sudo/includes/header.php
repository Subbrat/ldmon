<head>
    <link rel="stylesheet" href="./../../../class/css/s6css">
    <style>
        #topnav {
            background-color: rgba(22, 22, 23, 0.8);
            color: white;
            padding: 0px 13px
        }
    </style>
</head>

<body>
    <div class="s-bar s-top s-large" id="topnav" style="z-index:4">
        <button class="s-bar-item s-button s-hide-large s-hover-none" onclick="w3_open();"><i class="fa fa-bars s-transparent"></i></button>
        <span class="s-bar-item s-left">LDEMON</span>
        <span class="s-bar-item s-right"><a href="logout.php">Logout</a></span>
    </div>
    <div class="s-overlay s-hide-large s-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
    <div class="s-main" style="margin-left:300px;margin-top:39px;">
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
</body>

</html>