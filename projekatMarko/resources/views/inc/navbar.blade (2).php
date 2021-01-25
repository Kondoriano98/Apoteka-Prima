<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <a class="navbar-brand" href="#">Apoteka Prima</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
      <a class="nav-link" href="{{url('pocetna')}}">Pocetna</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="{{url('kontakt')}}">Kontakt</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="{{url('onama')}}">O nama</a>
      </li>
   
    </ul>
    <ul class="nav navbar-nav navbar-right">
 
 </ul>
 <ul class="navbar-nav ml-auto">
                
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Prijava</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">Registracija</a>
                                </li>
                            @endif
                        @else
                        <li class="nav-item active">
                                <a class="nav-link" href="{{url('posts/create')}}">Kreiraj</a>
 </li>

                            <li class="nav-item dropdown">

                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                   
                                    <hr>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Odjava') }}
                                    </a>
                                    
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
   
  </div>
</nav>