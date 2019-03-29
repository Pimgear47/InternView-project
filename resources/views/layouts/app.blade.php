<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>InternView</title>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/index.css') }}" rel="stylesheet">

</head>

<body>
    <?php
    $page = basename($_SERVER['PHP_SELF']);
    ?>
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top mb-4 shadow ">
        <div class="container">
            <a class="navbar-brand" href="/">
                <img src="{{ asset('images/All_element/Group-120.png') }}" height="18%" width="18%">THE
                INTERNVIEW
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li
                        <?php if($page == 'index.php'){ echo ' class="nav-item active"';} else{echo ' class="nav-item "';}?>>
                        <a class="nav-link" href="/">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li
                        <?php if($page == 'listorgs'){ echo ' class="nav-item active"';} else{echo ' class="nav-item "';}?>>
                        <a class="nav-link" href="/listorgs">List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Annoucement</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        @if (Route::has('login'))
                        <div class="top-right links">
                            @auth
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                    @else
                    <a class="nav-link" href="{{ route('login') }}">Login</a>
                    @endauth
            </div>
            @endif
            </li>
            </ul>
        </div>
    </nav>
    @yield('content')
    </div>
</body>
<script src="{{ asset('js/app.js') }}" defer></script>

</html>