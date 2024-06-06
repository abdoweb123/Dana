@props(
    [
        'name',
        'label' => null,
        'multiple' => false,
        'class' => ''
    ]
)

<div {{ $attributes->merge(['class'=>'form-group mb-10 ']) }}>
    <label class="w-100" for="{{ $name }}">{{ $label }}</label>
    <select id="{{ $name }}" wire:model="{{ $name }}" @if($multiple) multiple @endif class="form-control {{ $class }}" >
        <option hidden>--</option>
        {{ $slot }}
    </select>
    @if($errors->has($name))
        <span class="text-danger">{{ $errors->first($name) }}</span>
    @endif
</div>
