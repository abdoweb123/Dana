@section('title')
    <x-pageTitle current="{{ __('dash.orders') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.orders') }}" active />
    </x-pageTitle>
@endsection

<div>
    @if (auth('admin')->user()->hasPermissionTo('edit orders setting'))
        <button wire:click='autoApproveTogle' class="btn btn-dark">Order approveing: {{ setting('order_auto') == 'true' ? 'Auto' : 'Manual' }}</button>
    @endif
    <x-table :pagination="$orders" :columns="['name', 'phone', 'net_total', 'currancy', 'source', 'is_paid', 'sent_status', 'created_at']" searchable="name, email, phone">
        @forelse ($orders as $order)
            <tr Role="row" class="odd">
                <td>{{ $orders->firstItem() + $loop->index }}</td>
                <td>{{ $order->name }}</td>
                <td>{{ $order->phone }}</td>
                <td>{{ $order->net_total }}</td>
                <td>{{ $order->currancy_code }}</td>
                <td>{{ $order->payment_method['name_'.lang()] }}</td>
                <td>
                    @if ($order->is_paid)
                        <span class="bg-info-400 px-4 py-1 rounded-2 shadow-sm text-bold text-sm">{{ __('dash.paid') }}</span>
                    @endif
                </td>
                <td>
                    @if ($order->is_sent)
                        <span class="bg-info-400 px-4 py-1 rounded-2 shadow-sm text-bold text-sm">{{ __('dash.is_sent') }}</span>
                    @else
                        @if (auth('admin')->user()->hasPermissionTo('edit orders'))
                            <button wire:click='sendSerials({{ $order->id }})' class="btn btn-dark">{{ __('dash.send') }}</button>
                        @endif
                    @endif
                </td>
                <td>
                    <span class="bg-primary-300 px-1 rounded">{{ \Carbon\Carbon::parse($order->created_at)->format('Y-m-d') }}</span>
                    <span class="bg-primary-200 px-1 rounded">{{ \Carbon\Carbon::parse($order->created_at)->format('h:i A') }}</span>
                </td>
                <td>
                    <a wire:click="openShowModal({{ $order->id }})" type="button" data-bs-toggle="modal" data-bs-target="#showModal">
                        <i class="text-info lni lni-eye mr-10"></i>
                    </a>
                    <a wire:click="openDeleteModal({{ $order->id }})" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
                        <i class="text-danger lni lni-trash-can"></i>
                    </a>
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
                @if ($orderToShow)
                    <tbody>
                        <x-showitem name="{{ __('dash.created_at') }}">
                            <x-fulldate :date="$orderToShow->created_at"></x-fulldate>
                        </x-showitem>
                        <x-showitem name="{{ __('dash.name') }}">{{ $orderToShow->name}}</x-showitem>
                        <x-showitem name="{{ __('dash.phone') }}">{{ $orderToShow->phone}}</x-showitem>
                        @if($orderToShow->payment_method_id != 1 && $orderToShow->transaction_id !=null)
                        <x-showitem name="{{ __('dash.transaction_number') }}">{{ $orderToShow->transaction?->transaction_number}}</x-showitem>
                        @endif
                        <x-showitem name="{{ __('dash.total_before_discount') }}">{{ $orderToShow->promo_code_discount + $orderToShow->sub_total }}</x-showitem>
                        <x-showitem name="{{ __('dash.total_discount') }}">{{ $orderToShow->promo_code_discount }}</x-showitem>
                        <x-showitem name="{{ __('dash.sub_total') }}">{{ $orderToShow->sub_total }}</x-showitem>
                        <x-showitem name="{{ __('dash.tax') }}">{{ $orderToShow->vat_cost }}</x-showitem>
                        <x-showitem name="{{ __('dash.net_total') }}">{{ $orderToShow->net_total }}</x-showitem>
                        <x-showitem name="{{ __('dash.is_paid') }}">
                            @if ($orderToShow->is_paid == 1)
                                <span class="bg-info-400 px-4 py-1 rounded-2 shadow-sm text-bold text-sm">{{ __('dash.paid') }}</span>
                            @else
                                <span class="bg-info-400 px-4 py-1 rounded-2 shadow-sm text-bold text-sm btn-dark">{{ __('dash.not_paid') }}</span>
                            @endif
                        </x-showitem>
                        <x-showitem name="{{ __('dash.details') }}">
                            @foreach ($orderToShow->order_details as $detail)
                                <ul class="px-4 text-{{ lang('ar') ? 'end' : 'start' }}">
                                    <li><strong>{{ __('dash.title') }} :</strong> {{ $detail['card_title_'.lang()] }}</li>
                                    <li><strong>{{ __('dash.price') }} :</strong>{{ amount_format($detail['price']) }}</li>
                                    <li><strong>{{ __('dash.discount') }} :</strong>{{ amount_format($detail['discount']) }}</li>
                                    <li><strong>{{ __('dash.quantity') }} :</strong>{{ $detail['quantity'] }}</li>
                                    <li><strong>{{ __('dash.serials') }} :</strong>@json($detail['serials'])</li>
                                </ul>
                                @if (!$loop->last)
                                <hr>
                                @endif
                            @endforeach
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
