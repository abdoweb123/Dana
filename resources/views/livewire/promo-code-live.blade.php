@section('title')
    <x-pageTitle current="{{ __('dash.promo_codes') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.promo_codes') }}" active />
    </x-pageTitle>
@endsection

<div>
    @if (auth('admin')->user()->hasPermissionTo('add promo codes'))
        <button type="button" class="btn btn-dark my-3 rounded-3" data-bs-toggle="modal"
            data-bs-target="#addModal">
            {{ __('dash.create_new') }}
        </button>
    @endif
    <x-table :pagination="$promos" :columns="['code', 'categories', 'discount', 'from', 'to']" searchable="{{ __('dash.code') }}">
        @forelse ($promos as $promo)
            <tr Role="row" class="odd">
                <td>{{ $promos->firstItem() + $loop->index }}</td>
                <td>
                    <strong>
                        {{ $promo->code }}
                    </strong>
                </td>
                <td>
                    @foreach ($promo->categories as $category)
                        {{ $category['title_'.lang()] }}
                        @if (!$loop->last), @endif
                    @endforeach
                </td>
                <td>{{ $promo->discount }}</td>
                <td>
                    {{ $promo->from }}
                </td>
                <td>
                    {{ $promo->to }}
                </td>
                <td>
                    @if (auth('admin')->user()->hasPermissionTo('edit promo codes'))
                    <a wire:click="openEditModal({{ $promo->id }})" type="button" data-bs-toggle="modal" data-bs-target="#editModal">
                        <i class="text-primary lni lni-pencil mr-10"></i>
                    </a>
                    @endif
                    @if (auth('admin')->user()->hasPermissionTo('delete promo codes'))
                    <a wire:click="openDeleteModal({{ $promo->id }})" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
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
            <x-form.input name="code" label="{{ __('dash.code') }}"></x-form.input>
            <x-form.input name="discount" type="number" label="{{ __('dash.discount') }}"></x-form.input>
            <x-form.input name="from" type="date" label="{{ __('dash.from') }}"></x-form.input>
            <x-form.input name="to" type="date" label="{{ __('dash.to') }}"></x-form.input>
            <x-form.select name="category_id" label="{{ __('dash.categories') }}" :multiple="true">
                @foreach ($categories as $category)
                    <x-form.option value="{{ $category->id }}" name="{{ $category['title_'.lang()] }}"></x-form.option>
                @endforeach
            </x-form.select>

        </div>
    </x-modal>

    {{-- Edit --}}
    <x-modal wireAction="update" id="editModal" title="{{ __('dash.update') }}" type="info">
        <div class="row">
            <x-form.input name="code" label="{{ __('dash.code') }}"></x-form.input>
            <x-form.input name="discount" type="number" label="{{ __('dash.discount') }}"></x-form.input>
            <x-form.input name="from" type="date" label="{{ __('dash.from') }}"></x-form.input>
            <x-form.input name="to" type="date" label="{{ __('dash.to') }}"></x-form.input>
            <x-form.select name="category_id" label="{{ __('dash.categories') }}" :multiple="true">
                @foreach ($categories as $category)
                    <x-form.option value="{{ $category->id }}" name="{{ $category['title_'.lang()] }}" :selected="in_array($category->id, $category_id)"></x-form.option>
                @endforeach
            </x-form.select>
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
