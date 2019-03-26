@extends('layouts.app')
@section('content')
<div class="row justify-content-center">
    <div class="container col-md-10 col-sm-9 col-lg-10">
        <div class="card border-0 shadow pt-2 pl-5 pr-5 pb-3">
            <div class="card-body row">
                <div class="col-md-6">
                    <h2>Login</h2><br>
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group row">
                            <label for="email"
                                class="col-md-3 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
                            <div class="col-md-7">
                                <input id="email" type="email"
                                    class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email"
                                    value="{{ old('email') }}" required autofocus>
                                @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password"
                                class="col-md-3 col-form-label text-md-right">{{ __('Password') }}</label>
                            <div class="col-md-7">
                                <input id="password" type="password"
                                    class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                    name="password" required>
                                @if ($errors->has('password'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-4 offset-md-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                        {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-3">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>
                                @if (Route::has('password.request'))
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                                @endif
                                <a class="btn btn-link" href="{{ route('register') }}">
                                    {{ __('Register?') }}
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <img src="{{ asset('images/page_login/decor1.png') }}"
                        style="height: 100%; width: 100%; object-fit: contain;">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection