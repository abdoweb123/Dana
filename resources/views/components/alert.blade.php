@if(session('error'))
    <div class="fw-semibold px-5 py-3 rounded-3" style="background: #ffcdcd; z-index: 111; position: fixed;bottom: 37px;">
        {{ session('error') }}
    </div>
@endif
@if(session('success'))
    <div class="fw-semibold px-5 py-3 rounded-3" style="background: #c5fec5; z-index: 111; position: fixed;bottom: 37px;">
        {{ session('success') }}
    </div>
@endif
@if ($errors->any())
    <div class="alert" style="background: #ffcdcd">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
