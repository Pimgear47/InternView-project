@extends('layouts.app')
@section('content')
<div id="app">
    @if(auth()->check() && auth::user()->admin == "1")
    <list-page-admin></list-page-admin>
    @elses
    <list-page-guest></list-page-guest>
    @endif
</div>
@endsection