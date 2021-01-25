<html>
@extends('layouts.app')
@section('sadrzaj')
<head>
</head>
<body id="body2">
<link rel="stylesheet" href="{{asset('css/pocetna.css')}}">
@if(isset(Auth::user()->email))
<div class="alert alert-success success-block">
    <strog><h1>Dobro dosli {{Auth::user()->name}}, uspesno ste se ulogovali!</h1> <br></strong>
@endif
<style>
    h1
    {
        color:white;
        text-align:center;
    }
   
    }
</style>
</body>
@endsection
</html>