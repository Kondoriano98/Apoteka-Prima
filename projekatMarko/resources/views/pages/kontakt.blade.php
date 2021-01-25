<html>
@extends('layouts.app')
@section('sadrzaj')
<head>
<link rel="stylesheet" href="{{asset('css/pocetna.css')}}">
</head> 
 <body>
<div class="container-fluid"> 
<div class="row">
  <div   class="col-lg-4 offset-lg-4 m3">
    <div class="card-body m-3   text-white" id="karta">
      <h1 id="kontakt">Kontakt</h1>
    </div>
</div>

  </div>
 
</div>
  <div class="card mb-3   text-white"    >
      <div class="card-body">
<form>
  <div class="form-row mt-3">
    <div class="col-lg-4 offset-1">
        <label style="font-size: 20px;" >Ime</label>
      <input type="text"   class="form-control   text-dark"   placeholder="marko" required="">
    </div>
    <div class="col-lg-4 offset-1">
        <label  style="font-size: 20px;"  class="text-white">Email</label>
      <input type="text" class="form-control  text-dark"      placeholder="primer@...com" required="">
    </div>
  </div>
 <div class="form-group m-3">
  <label for="comment"   style="font-size: 20px;">Poruka:</label>
  <textarea    class="text-dark form-control" rows="12" id="comment" required="">...</textarea>
</div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
      <label class="form-check-label text-white" for="invalidCheck3">
        Potvrda uslova koriscenja
      </label>
      <div class="invalid-feedback text-white">
       <strong>Morate potvrditi uslove koriscenja pre nastavka!</strong>
      </div>
    </div>
  </div>
  <button class="btn btn-dark" type="submit">Potvrdi</button>
   <button class="btn btn-dark" type="reset">Resetuj</button>
   
      </div>
      <iframe style="margin-left:350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1000.6778936370392!2d20.462598071924052!3d44.81454598312932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a7ab1e973d089%3A0x30eb53584e2a2838!2sPRIMA%20APOTEKA!5e0!3m2!1sen!2srs!4v1583590858012!5m2!1sen!2srs" width="400" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    </div>
</form>
<body>
@endsection
</html>