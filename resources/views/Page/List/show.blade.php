@extends('layouts.app')
@section('content')
<div id="app">
    @if(auth()->check())
    <show-org-user id="{!!$id!!}" :usernow="{{ Auth::user() }}"></show-org-user>
    @else
    <show-org-guest id="{!!$id!!}"></show-org-guest>
    @endif
</div>
@endsection