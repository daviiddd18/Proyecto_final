@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                @include('includes.message')
                @foreach ($images as $image)
                    @include('includes.image', ['image' => $image])
                @endforeach
                <div class="clearfix">
                    {{ $images->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
