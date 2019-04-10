@extends('layouts.app')
@section('content')
<div id="app">
    @if(auth()->check())
    <show-ann-user id="{!!$id!!}" :usernow="{{ Auth::user() }}"></show-ann-user>
    @else
    <show-ann-guest id="{!!$id!!}"></show-ann-guest>
    @endif
</div>
@endsection