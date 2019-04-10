@extends('layouts.app')
@section('content')
<div id="app">
    @if(auth()->check() && auth::user()->admin == "1")
    <list-announcement-admin></list-announcement-admin>
    @else
    <list-announcement-guest></list-announcement-guest>
    @endif
</div>
@endsection