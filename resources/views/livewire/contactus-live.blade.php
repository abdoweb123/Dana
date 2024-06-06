@section('title')
    <x-pageTitle current="{{ __('dash.contactus') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.contactus') }}" active />
    </x-pageTitle>
@endsection

<div>
    <x-table :pagination="$contacts" :columns="['name', 'email', 'created_at', 'response']" searchable="{{ __('dash.name') }}, {{ __('dash.email') }}" noCreate>
        @forelse ($contacts as $contact)
            <tr Role="row" class="odd">
                <td>{{ $contacts->firstItem() + $loop->index }}</td>
                <td>{{ $contact->name }}</td>
                <td>{{ $contact->email }}</td>
                <td>
                    <x-fulldate :date="$contact->created_at"></x-fulldate>
                </td>
                <td class="d-flex">
                    @if ($contact->response === null)
                        @if (auth('admin')->user()->hasPermissionTo('response on contact messages'))
                            <button wire:click='responsed({{ $contact->id }}, "answerd")' class="btn btn-dark btn-sm mx-1">{{ __('dash.answerd') }}</button>
                            <button wire:click='responsed({{ $contact->id }}, "solved")' class="btn btn-dark btn-sm mx-1">{{ __('dash.solved') }}</button>
                        @endif
                    @elseif($contact->response === 'answerd')
                        <span class="bg-success-300 mx-auto px-3 rounded text-bold">{{ __('dash.answerd') }}</span>
                    @elseif($contact->response === 'solved')
                        <span class="bg-success-300 mx-auto px-3 rounded text-bold">{{ __('dash.solved') }}</span>
                    @endif
                </td>
                <td>
                    <a wire:click="openShowModal({{ $contact->id }})" type="button" data-bs-toggle="modal" data-bs-target="#showModal">
                        <i class="text-info lni lni-eye mr-10"></i>
                    </a>
                    @if (auth('admin')->user()->hasPermissionTo('delete contact messages'))
                        <a wire:click="openDeleteModal({{ $contact->id }})" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
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


    {{-- Delete --}}
    <x-modal wireAction="delete" id="deleteModal" title="{{ __('dash.delete') }}" type="danger">
        <div class="row">
            <x-alert type="warning">
                <h3>{{ __('dash.alert_delete_confirm') }}</h3>
            </x-alert>
        </div>
    </x-modal>

        {{-- show --}}
        <x-modal size="modal-lg" id="showModal" title="{{ __('dash.show') }}" type="danger">
            <div class="row">
                <table class="table table-bordered">
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
        </x-modal>
    
</div>

@section('js')
<x-closeModal />
@endsection
