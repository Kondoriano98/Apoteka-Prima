<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
       
        
        
        <title>Laravel</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <script src="{{ asset('js/app.js') }}" defer></script>

    </head>
    
    <body>
    <div class="py-5" >
    @include('inc.navbar')
     
</div>

    <div class="container">
    @include('inc.greske') 
    @yield('sadrzaj') </div>
    </body>
    @include('inc.footer')
</html>
