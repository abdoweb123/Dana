@section('title')
    <x-pageTitle current="{{ __('dash.cards') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ $category->parent['title_'.lang()] ?? '' .' ('. $category['title_'.lang()] .')' }}" route="{{ route('dashboard.categories') }}" />
        <x-breadcrumb title="{{ __('dash.cards') }}" active />
    </x-pageTitle>
@endsection

@section('style')
    <style>
        @media (min-width: 576px) {
            .modal-dialog {
                max-width: 900px;
                margin: 1.75rem auto;
            }
        }
    </style>
@stop

<div>

    <div class="card-styles">
        <p>{{ __('dash.parent_categories') }}</p>
        @foreach ($parents_categories_to_filter as $parent)
            <button wire:click='getSubsToFilter({{ $parent->id }})'
                class="{{ $parent_category_to_filter_id == $parent->id ? 'bg-danger-500 border-1 border-dark text-bold ' : 'bg-danger-300' }} btn m-1 p-1 rounded"
            >{{ $parent['title_'.lang()] }}</button>
        @endforeach
        <br>
        @if (count($subs_categories_to_filter) > 0)
        <p>{{ __('dash.subs_categories') }}</p>
            @foreach ($subs_categories_to_filter as $sub)
                <button wire:click='defineCategoryToFilter({{ $sub->id }})'
                    class="{{ $sub_category_id == $sub->id ? 'bg-danger-500 border-1 border-dark  text-bold' : 'bg-danger-300' }}  btn m-1 p-1 rounded"
                    >{{ $sub['title_'.lang()] }}</button>
            @endforeach
        @endif
        <hr>
        <p>{{ __('dash.groups') }}
            @if ($group_id)
                <i role="button" wire:click='clearGroupId' class="fa-circle-xmark fa-regular float-end text-bold"></i>
            @endif
        </p>
        @foreach ($groups as $group)
            <button wire:click='defineGroupToFilter({{ $group->id }})'
                class="{{ $group_id == $group->id ? 'bg-danger-500 border-1 border-dark  text-bold' : 'bg-danger-300' }}  btn m-1 p-1 rounded"
                >{{ $group['title_'.lang()] }}</button>
        @endforeach

    </div>
    <br>
    @if (auth('admin')->user()->hasPermissionTo('add cards'))
        <button type="button" class="btn btn-dark my-3 rounded-3" data-bs-toggle="modal"
            data-bs-target="#addModal">
            {{ __('dash.create_new') }}
        </button>

        <form action="{{ route('dashboard.import.cards') }}" method="POST" enctype="multipart/form-data" class="mx-5 d-inline-block">
            @csrf
            <input type="file" name="file" accept=".xls, .xlsx" required>
            <button type="submit" class="btn btn-dark my-3 rounded-3">@lang('dash.import')</button>
        </form>

        <form action="{{ route('dashboard.download.excel') }}" method="POST">
            @csrf
            <input type="hidden" name="path" value="{{asset('excel/cards.xlsx')}}">
            <button class="btn btn-light" type="submit">@lang('dash.Example_Excel')</button>
        </form>
    @endif
    <x-table :pagination="$cards" searchable="{{ __('dash.title') }}" :columns="['image', 'title_ar', 'title_en', 'price', 'quantity']">
        @forelse ($cards as $card)
            <tr Role="row" class="odd">
                <td>{{ $cards->firstItem() + $loop->index }}</td>
                <td>
                    <img class="rounded border" style="width: 100px; height: 100px;"
                    src="{{ asset($card->image) }}" alt="">
                </td>
                <td>{{ $card->title_ar }}</td>
                <td>{{ $card->title_en }}</td>
                <td>
                    @if($card->discount > 0)
                    <span class="mx-2" style="color: #ffb0b0;text-decoration: line-through;">{{ $card->price }}</span>
                    <span>{{ $card->price - $card->discount }}</span>
                    @else
                    <span >{{ $card->price }}</span>
                    @endif
                </td>
                <td>
                    @if (auth('admin')->user()->hasPermissionTo('show serials'))
                    <a href="{{ route('dashboard.serials', $card->id) }}" target="_blank" class="btn btn-dark">{{ __('dash.serials') }} (<span style="color: #51e490">{{ $card->available_serials_count }}</span> / {{ $card->serials_count }})</a>
                    @endif
                </td>
                <td>
                    <a wire:click="openShowModal({{ $card->id }})" type="button" data-bs-toggle="modal" data-bs-target="#showModal">
                        <i class="text-info lni lni-eye mr-10"></i>
                    </a>
                    @if (auth('admin')->user()->hasPermissionTo('edit cards'))
                    <a wire:click="openEditModal({{ $card->id }})" card="button" data-bs-toggle="modal" data-bs-target="#editModal">
                        <i class="text-primary lni lni-pencil mr-10"></i>
                    </a>
                    @endif
                    @if (auth('admin')->user()->hasPermissionTo('delete cards'))
                    <a wire:click="openDeleteModal({{ $card->id }})" card="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
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
    <x-modal type="success" wireAction="store" id="addModal" title="{{ __('dash.add') }}" card="primary">
        <div class="row">
            <x-form.select name="parent_category_to_filter_id" class="col-12 col-md-6" label="{{ __('dash.parent_categories') }}">
                @foreach ($parents_categories_to_filter as $parent)
                    <x-form.option value="{{ $parent->id }}" name="{{ $parent['title_'.lang()] }}"></x-form.option>
                @endforeach
            </x-form.select>
            <x-form.select name="sub_category_id" class="col-12 col-md-6" label="{{ __('dash.subs_categories') }}">
                @foreach ($subs_categories_to_filter as $sub)
                    <x-form.option value="{{ $sub->id }}" name="{{ $sub['title_'.lang()] }}"></x-form.option>
                @endforeach
            </x-form.select>
            <x-form.input name="title_ar" class="col-12 col-md-6" label="{{ __('dash.title_ar') }}"></x-form.input>
            <x-form.input name="title_en" class="col-12 col-md-6" label="{{ __('dash.title_en') }}"></x-form.input>
            <x-form.input type="number" class="col-12 col-md-6"  name="price" label="{{ __('dash.price') }}"></x-form.input>
            <x-form.input type="number" class="col-12 col-md-6" name="discount" label="{{ __('dash.discount') }}"></x-form.input>
            <x-form.inputImage name="image" class="col-6" label="{{ __('dash.image') }}"></x-form.inputImage>
            <div class="col-6">
                @if ($image ?? false)
                    <div class="image-container float-start">
                        <p>{{ __('dash.waiting_for_upload') }}</p>
                        <img class="rounded" style="width: 100px; height: 100px;" src="{{ $image->temporaryUrl() }}">
                    </div>
                @endif
            </div>
            <div class="form-group mb-10">
                <label class="w-100" for="groups">{{ __('dash.groups') }}</label>
                <select id="groups" wire:model="groups_ids" multiple class="form-control">
                    <option hidden>--</option>
                    @foreach ($groups as $group)
                        <option value="{{ $group->id }}">{{ $group['title_'.lang()] }}</option>
                    @endforeach
                </select>
                @if($errors->has('groups_ids'))
                    <span class="text-danger">{{ $errors->first('groups_ids') }}</span>
                @endif
            </div>

        </div>
    </x-modal>

    {{-- Edit --}}
    <x-modal type="success" wireAction="update" id="editModal" title="{{ __('dash.update') }}" card="info">
        <div class="row">
            <x-form.input name="title_ar" label="{{ __('dash.title_ar') }}"></x-form.input>
            <x-form.input name="title_en" label="{{ __('dash.title_en') }}"></x-form.input>
            <x-form.input type="number" class="col-12 col-md-6" name="price" label="{{ __('dash.price') }}"></x-form.input>
            <x-form.input type="number" class="col-12 col-md-6" name="discount" label="{{ __('dash.discount') }}"></x-form.input>
            <x-form.inputImage name="image" class="col-6" label="{{ __('dash.image') }}"></x-form.inputImage>
            <div class="col-6">
                @if ($image)
                    <div class="image-container float-start">
                        <p>{{ __('dash.waiting_for_upload') }}</p>
                        <img class="rounded" style="width: 100px; height: 100px;" src="{{ $image->temporaryUrl() }}">
                    </div>
                @elseif ($old_image)
                    <div class="image-container float-start">
                        <p>{{ __('dash.existing') }}</p>
                        <img class="rounded" style="width: 100px; height: 100px;" src="{{ asset($old_image) }}">
                    </div>
                @endif
            </div>
            <div class="form-group mb-10">
                <label class="w-100" for="groups">{{ __('dash.groups') }}</label>
                <select id="groups" wire:model="groups_ids" multiple class="form-control">
                    <option hidden>--</option>
                    @foreach ($groups as $group)
                        <option value="{{ $group->id }}">{{ $group['title_'.lang()] }}</option>
                    @endforeach
                </select>
                @if($errors->has('groups_ids'))
                    <span class="text-danger">{{ $errors->first('groups_ids') }}</span>
                @endif
            </div>

        </div>
    </x-modal>

    {{-- Delete --}}
    <x-modal  wireAction="delete" id="deleteModal" title="{{ __('dash.delete') }}" type="danger">
        <div class="row">
            <x-alert type="warning" type="warning">
                <h3>{{ __('dash.alert_delete_confirm') }}</h3>
            </x-alert>
        </div>
    </x-modal>

    {{-- show --}}
    <x-modal size="modal-lg" id="showModal" title="{{ __('dash.show') }}" type="danger">
        <div class="row">
            <table class="table table-bordered">
                @if ($show_card)
                <tbody>
                    <x-showitem name="{{ __('dash.created_at') }}">
                        <x-fulldate :date="$show_card->created_at"></x-fulldate>
                    </x-showitem>
                    <x-showitem name="{{ __('dash.category') }}">{{ $show_card->category['title_'.lang()] }}</x-showitem>
                    <x-showitem name="{{ __('dash.title_ar') }}">{{ $show_card->title_ar }}</x-showitem>
                    <x-showitem name="{{ __('dash.title_en') }}">{{ $show_card->title_en }}</x-showitem>
                    <x-showitem name="{{ __('dash.price') }}">
                        @if($show_card->discount > 0)
                        <span class="mx-2" style="color: #ffb0b0;text-decoration: line-through;">{{ $show_card->price }}</span>
                        <span>{{ $show_card->price - $show_card->discount }}</span>
                        @else
                        <span >{{ $show_card->price }}</span>
                        @endif
                    </x-showitem>
                    <x-showitem name="{{ __('dash.exist_in') }}">
                        @foreach ($show_card->groups as $group)
                            <span class="bg-danger-300 m-1 p-1 rounded text-bold">{{ $group['title_'.lang()] }}</span>
                        @endforeach
                    </x-showitem>
                    <x-showitem name="{{ __('dash.image') }}">
                        <img class="rounded border" style="width: 100px; height: 100px;"
                        src="{{ asset($show_card->image) }}" alt="">
                    </x-showitem>
                </tbody>
                @endif
            </table>
        </div>
    </x-modal>

</div>

@section('js')
<x-closeModal />
@endsection
