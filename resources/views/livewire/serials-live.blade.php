@section('title')
    <x-pageTitle current="{{ __('dash.serials') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ $card['title_'.lang()] ?? '' }}" route="{{ route('dashboard.category_cards', $card->category_id) }}" />
        <x-breadcrumb title="{{ __('dash.serials') }}" active />
    </x-pageTitle>
@endsection

<div>
    @if (auth('admin')->user()->hasPermissionTo('add serials'))
        <button type="button" class="btn btn-dark my-3 rounded-3" data-bs-toggle="modal"
            data-bs-target="#addModal">
            {{ __('dash.create_new') }}
        </button>
    @endif

        <form action="{{ route('dashboard.import.serials') }}" method="POST" enctype="multipart/form-data" class="mx-5 d-inline-block">
            @csrf
            <input type="hidden" name="card_id" value="{{$card->id}}">
            <input type="file" name="file" accept=".xls, .xlsx" required>
            <button type="submit" class="btn btn-dark my-3 rounded-3">@lang('dash.import')</button>
        </form>


        <form action="{{ route('dashboard.download.excel') }}" method="POST">
            @csrf
            <input type="hidden" name="path" value="{{asset('excel/serials.xlsx')}}">
            <button class="btn btn-light" type="submit">@lang('dash.Example_Excel')</button>
        </form>

    <x-table :pagination="$serials" :columns="['key', 'sold']" searchable="{{ __('dash.key') }}">
        @forelse ($serials as $serial)
            <tr Role="row" class="odd">
                <td>{{ $loop->index + 1}}</td>
                <td>{{ $serial->key }}</td>
                <td>
                    @if ($serial->user)
                    <i style="color: #51e490" class="fa-regular fa-circle-check"></i>
                    {{ $serial->user->name }}
                    @endif
                </td>
                <td>
                    @if (auth('admin')->user()->hasPermissionTo('edit serials'))
                    <a wire:click="openEditModal({{ $serial->id }})" type="button" data-bs-toggle="modal" data-bs-target="#editModal">
                        <i class="text-primary lni lni-pencil mr-10"></i>
                    </a>
                    @endif
                    @if (auth('admin')->user()->hasPermissionTo('delete serials'))
                    <a wire:click="openDeleteModal({{ $serial->id }})" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
                        <i class="text-danger lni lni-trash-can"></i>
                    </a>
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

    {{-- Add --}}
    <x-modal wireAction="store" id="addModal" title="{{ __('dash.add') }}" type="primary">
        <div class="row">
            <x-form.input name="key" label="{{ __('dash.key') }}"></x-form.input>
        </div>
    </x-modal>

    {{-- Edit --}}
    <x-modal wireAction="update" id="editModal" title="{{ __('dash.update') }}" type="info">
        <div class="row">
            <x-form.input name="key" label="{{ __('dash.key') }}"></x-form.input>
        </div>
    </x-modal>

    {{-- Delete --}}
    <x-modal wireAction="delete" id="deleteModal" title="{{ __('dash.delete') }}" type="danger">
        <div class="row">
            <x-alert type="warning">
                <h3>{{ __('dash.alert_delete_confirm') }}</h3>
            </x-alert>
        </div>
    </x-modal>
</div>

@section('js')
<x-closeModal />
@endsection
