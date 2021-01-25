 <html>
@extends('layouts.app')
@section('sadrzaj')
<head>
<link rel="stylesheet" href="{{asset('css/pocetna.css')}}">
</head>
<body id="body2">
@guest
</br>
<a class="btn btn-primary" href="{{ URL::previous() }}">Vrati se
nazad!</a>
<hr>
<div class="card">

 <div class="card-header">
 <h1>{{$jednaobjava->title}}</h1>
 </div>
<div class="card-body">
 <p class="card-text">{{$jednaobjava->body}}</p>
</div>
<hr>
<small>Datum unosa: {{$jednaobjava->created_at}}</small>
</div>
</br>
@else

</br>
<a class="btn btn-dark" href="{{ URL::previous() }}">Vrati se
nazad!</a>
<hr>
<div class="card">
 <div class="card-header">
 <h1>{{$jednaobjava->title}}</h1>
 </div>
<div class="card-body">
 <p class="card-text">{{$jednaobjava->body}}</p>
</div>
<hr>
<small>Datum unosa: {{$jednaobjava->created_at}}</small>
</div>
</br>
{!!Form::open(['action'=>['PostsController@destroy',$jednaobjava->id],
'method'=>'POST'])!!}
{{Form::hidden('_method', 'DELETE')}}
{{Form::submit('Obrisi lek!', ['class' => 'btn btn-danger'])}}
{!!Form::close()!!}
@endguest
</body>
@endsection
</html>