<html>
@extends('layouts.app')
@section('sadrzaj')
<head>
</head>
<link rel="stylesheet" href="{{asset('css/pocetna.css')}}">
 <body id="body2">
<div   class="col-lg-4 offset-lg-4 m3">
    <div class="card-body m-3   text-white" id="karta">
      <h1>Unesi lek</h1>
    </div>
</div>
<link rel="stylesheet" href="{{asset('css/pocetna.css')}}">
 
 
{!! Form::open(['action' => 'PostsController@store', 'method' => 'POST']) !!}
<div class="form-group">
{{Form::label('naslovobjave', 'Naziv')}}
{{Form::text('naslovobjave', ' ', ['class' =>'form-control', 'placeholder' =>'Upisi naslov'])}}
</div>
<div class="form-group">
{{Form::label('telo', 'Upustvo')}}
{{Form::textarea('telo', ' ', ['class' =>'form-control', 'placeholder' =>'Upisi nesto u body'])}}
</div>
{{Form::submit('Potvrdi unos!', ['class'=>'btn btn-dark'])}}
{!! Form::close() !!}
 
</body>
@endsection
</html>