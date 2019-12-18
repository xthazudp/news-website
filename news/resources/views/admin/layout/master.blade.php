<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>

<!-- top.blade.php here -->
@include('admin.layout.top')

</head>
<body>


    <!-- Left Panel -->
        <!-- navigation.blade.php here -->
        @include('admin.layout.navigation')
        <!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <!-- header.blade.php here -->
        @include('admin.layout.header')
        <!-- /header -->
        <!-- Header-->
        <!-- dashboard.blade.php here -->
        @yield('content')
        <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <!-- bottom.blade.php -->
    @include('admin.layout.bottom')

</body>
</html>
