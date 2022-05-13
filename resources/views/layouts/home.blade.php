<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('seo_title')</title>
    <meta name="description" CONTENT="@yield('seo_description')">
</head>

<body class="@yield('class')">


    @include('layouts.menu')


    <div class="all" style="margin-top: 90px">
        @yield('content')
    </div>


</body>

</html>
