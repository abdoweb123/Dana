@extends('admin.layout')

@section('title')
    <x-pageTitle current="{{ __('dash.permissions') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.admins') }} ({{ $admin->name }})" route="{{ route('dashboard.admins') }}" />
        <x-breadcrumb title="{{ __('dash.permissions') }}" active />
    </x-pageTitle>
@endsection


@section('content')

    <div class="card w-75 mx-auto">
        <button type="button" class="btn btn-primary w-auto d-block" id="checkAll">Check All</button>
        <form action="{{ route('dashboard.permissions_post', $admin->id)}}" method="post">
            @csrf
            <div class="card-body row mt-10">
                @foreach ($permissions as $permission)
                    <label class="mb-2 col-12 col-md-6">
                        <input type="checkbox"{{ $admin->permissions->contains($permission->id) ? 'checked' : '' }} name="permissions[]" value="{{ $permission->id }}">
                        {{ $permission['title_'.lang()] }}
                    </label>
                    <br>
                @endforeach
            </div>
            <button  type="submit" class="btn btn-dark m-2 px-5">{{ __('dash.submit') }}</button>
        </form>
    </div>

@endsection
@section('js')
<script>
        $("#checkAll").click(function(){
            $('input[name="permissions[]"]').prop('checked', true);
        });
</script>

@endsection
