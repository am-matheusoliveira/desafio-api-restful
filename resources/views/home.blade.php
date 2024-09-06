@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">

                <!-- OPÇÕES DO SISTEMA  -->
                <div class="card-header">
                    <strong>{{ __('Menu do sistema') }}</strong> 
                    <br>
                    <p class="h3">{{ __('Escolha uma opção para navegar pelo sistema!') }}</p>
                </div>
                
            </div>
        </div>
    </div>
</div>
@endsection
