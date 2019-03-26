@extends('layouts.app')
@section('content')
<div id="app">
    @if(auth()->check() && Auth::user()->admin == "1")
    <list-page-admin></list-page-admin>
    @else
    <list-page-guest></list-page-guest>
    @endif
</div>
@endsection