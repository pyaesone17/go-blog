<!--
 * CoreUI - Open Source Bootstrap Admin Template
 * @version v1.0.0-alpha.2
 * @link http://coreui.io
 * Copyright (c) 2016 creativeLabs Łukasz Holeczek
 * @license MIT
 -->
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,jQuery,CSS,HTML,RWD,Dashboard">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>CoreUI - Open Source Bootstrap Admin Template</title>

    <!-- Icons -->
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/simple-line-icons.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/plugins/select2/dist/css/select2.min.css">
    <!-- Main styles for this application -->
    <link href="/static/css/style.css" rel="stylesheet">

    <script src="/static/js/jquery.js"></script>
    <script src="/static/plugins/select2/dist/js/select2.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/plugins/bootstrap-summernote/dist/summernote.js"></script>
</head>

<!-- BODY options, add following classes to body to change options
        1. 'compact-nav'          - Switch sidebar to minified version (width 50px)
        2. 'sidebar-nav'          - Navigation on the left
            2.1. 'sidebar-off-canvas'   - Off-Canvas
                2.1.1 'sidebar-off-canvas-push' - Off-Canvas which move content
                2.1.2 'sidebar-off-canvas-with-shadow'  - Add shadow to body elements
        3. 'fixed-nav'            - Fixed navigation
        4. 'navbar-fixed'         - Fixed navbar
        5. 'footer-fixed'         - Fixed navbar
    -->

<body class="navbar-fixed sidebar-nav fixed-nav">
   
    {{ template "header.tpl" }}

    {{ template "sidebar.tpl" }}

    <!-- Main content -->
    <main class="main">

        {{ .LayoutContent }}
        <!-- /.conainer-fluid -->
    </main>


    <footer class="footer">
        <span class="text-left">
            <a href="http://coreui.io">CoreUI</a> © 2016 creativeLabs.
        </span>
        <span class="float-xs-right">
            Powered by <a href="http://coreui.io">CoreUI</a>
        </span>
    </footer>

    <!-- Bootstrap and necessary plugins -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/tether/dist/js/tether.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/pace/pace.min.js"></script>



    <!-- GenesisUI main scripts -->

    <script src="js/app.js"></script>




    <!-- Plugins and scripts required by this views -->

    <!-- Custom scripts required by this view -->
    <script src="js/views/main.js"></script>

</body>

</html>