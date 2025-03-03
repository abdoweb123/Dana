@section('title')
    <x-pageTitle current="{{ __('dash.payment_methods') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.payment_methods') }}" active />
    </x-pageTitle>
@endsection

<div>
    <x-table  :columns="['title_ar', 'title_en', 'image', 'display']" noAction noCreate>
        @forelse ($methods as $method)
            <tr Role="row" class="odd">
                <td>{{ $loop->index + 1}}</td>
                <td>{{ $method->name_ar }}</td>
                <td>{{ $method->name_en }}</td>
                <td>
                    <img style="width: 50px;height:50px" src="{{ asset($method->image) }}">
                </td>
                <td>
                    @if (auth('admin')->user()->hasPermissionTo('edit payment methods'))
                    <i wire:click='changeDispaly("{{ $method->id }}")' wire:loading.attr='disabled' role="button"
                        style="color: {{ $method->display ? '#51e490' : '#f1365a' }}"
                        class="fa-regular {{ $method->display ? 'fa-circle-check' : 'fa-circle-xmark' }} ">
                    </i>
                    @endif
                </td>
            </tr>
        @empty
        <div class="card my-4 py-4 rounded-full shadow-sm">
            <div class="card-body  text-center">
                <h4>{{ __('dash.nodata') }}</h4>
            </div>
        </div>
        @endforelse
    </x-table>
</div>

@section('js')
<x-closeModal />
@endsection
