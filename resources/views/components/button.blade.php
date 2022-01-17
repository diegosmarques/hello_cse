<button {{ $attributes->merge(['type' => 'submit', 'class' => 'btn btn-primary col-6']) }}>
    {{ $slot }}
</button>
