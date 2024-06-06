@section('title')
    <x-pageTitle current="{{ __('dash.users') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.users') }}" active />
    </x-pageTitle>
@endsection

<div>
    @if (auth('admin')->user()->hasPermissionTo('add users'))
        <button type="button" class="btn btn-dark my-3 rounded-3" data-bs-toggle="modal"
            data-bs-target="#addModal">
            {{ __('dash.create_new') }}
        </button>
    @endif

    @if (auth('admin')->user()->hasPermissionTo('notify users'))
        <button wire:click='post' class="btn btn-dark">POST</button>
    @endif
    <x-table :pagination="$users" :columns="['name', 'phone', 'email', 'devices', 'created_at']" searchable="name, email, phone">
        @forelse ($users as $user)
            <tr Role="row" class="odd {{ $user->is_blocked ? 'bg-warning-400' : '' }}">
                <td>{{ $users->firstItem() + $loop->index }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->phone }}</td>
                <td>{{ $user->email }}</td>
                <td>{{ $user->tokens_count }}</td>
                <td>
                    <x-fulldate :date="$user->created_at"></x-fulldate>
                </td>
                <td>
                    @if (auth('admin')->user()->hasPermissionTo('block users'))
                    <a wire:click="blockToggle({{ $user->id }})" type="button">
                        <i class="fa-solid fa-shield-halved mx-10"></i>
                    </a>
                    @endif
                    @if (auth('admin')->user()->hasPermissionTo('edit users'))
                    <a wire:click="openEditModal({{ $user->id }})" type="button" data-bs-toggle="modal" data-bs-target="#editModal">
                        <i class="text-primary lni lni-pencil mx-10"></i>
                    </a>
                    @endif
                    @if (auth('admin')->user()->hasPermissionTo('delete users'))
                    <a wire:click="openDeleteModal({{ $user->id }})" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
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
                <x-form.input name="name" label="{{ __('dash.name') }}"></x-form.input>
                <x-form.input name="email" type="email" label="{{ __('dash.email') }}"></x-form.input>
                <x-form.input name="phone" type="phone" label="{{ __('dash.phone') }}"></x-form.input>
                <x-form.input name="password" label="{{ __('dash.password') }}"></x-form.input>
            </div>
        </x-modal>

        {{-- Edit --}}
        <x-modal wireAction="update" id="editModal" title="{{ __('dash.update') }}" type="info">
            <div class="row">
                <x-form.input name="name" label="{{ __('dash.name') }}"></x-form.input>
                <x-form.input name="email" type="email" label="{{ __('dash.email') }}"></x-form.input>
                <x-form.input name="phone" type="phone" label="{{ __('dash.phone') }}"></x-form.input>
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

        {{-- show --}}
        {{-- <x-modal size="modal-lg" id="showModal" title="{{ __('dash.show') }}" type="danger">
            <div class="row">
                <table class="table table-busered">
                    <tbody>
                        <x-showitem name="{{ __('dash.created_at') }}">
                            <x-fulldate :date="$created_at"></x-fulldate>
                        </x-showitem>
                        <x-showitem name="{{ __('dash.name') }}">{{ $name }}</x-showitem>
                        <x-showitem name="{{ __('dash.email') }}">{{ $email }}</x-showitem>
                        <x-showitem name="{{ __('dash.message') }}">{{ $message }}</x-showitem>
                    </tbody>
                </table>
            </div>
        </x-modal> --}}

</div>

@section('js')
<x-closeModal />
@endsection
