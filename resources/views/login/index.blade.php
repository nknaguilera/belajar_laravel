@extends('layouts.main')

@section('container')
<div class="row justify-content-center">
  <div class="col-md-4">    
    
    @if(session()->has('success'))
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>           
    @endif

    <main class="form-signin w-100 m-auto">
      {{-- <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> --}}
      <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>     
        <form action="/login" method="post">
          @csrf
          <div class="form-floating">
            <input type="email" name="email" class="form-control @error(email) is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required>
            <label for="email">Email address</label>
          </div>
          <div class="form-floating">
            <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
            <label for="password">Password</label>
          </div>
      
          {{-- <div class="form-check text-start my-3">
            <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
              Remember me
            </label>
          </div> --}}

          <button class="btn btn-primary w-100 py-2" type="submit">Login</button>
          {{-- <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p> --}}
        </form>
        <small class="d-block text-center mt-3">Not registered? <a href="/register">Register Now!</a></small>
      </main>
  </div>
</div>

@endsection