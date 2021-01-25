
@extends('layouts.app')
@section('sadrzaj')
 
<link rel="stylesheet" href="{{asset('css/pocetna.css')}}">
<div   class="col-lg-4 offset-lg-4 m3">
    <div class="card-body m-3   text-white" id="karta">
      <h1 id="kontakt">Nasi lekovi</h1>
    </div>
</div>
@if(count($postovi)>0)
 @foreach($postovi as $nasipostovi)
 <div class="card p-4">
 <h3><a href="posts/{{$nasipostovi->id}}">{{$nasipostovi->title}}</a></h3>

 <small>Datum unosa: {{$nasipostovi->created_at}}</small>
 </div>
 </br>
 @endforeach
 {{$postovi->links()}}
 @else
 <p>
 No Posts found
 </p>
 @endif 


@endsection
</html>