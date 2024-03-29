<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="icon" sizes="48x48" href="{{App\Models\File::find(App\Models\Option::where('key','=','favicon')->first()->value)->getMedia()->first()->getUrl('thumb')}}" type="image/x-icon" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>HasPanel {{ __('main.Login') }}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="{{asset('admin')}}/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="{{asset('admin')}}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="{{asset('admin')}}/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="{{asset('admin')}}/dist/css/multform.css">
</head>
<body class="hold-transition login-page login-section">
<div class="login-box">
    <div class="register-logo">
      <a href="{{url('/')}}"><img src="{{asset('admin')}}/img/login_logo.png" alt=""></a>
    </div>


    <div class="card-body login-card-body">
      <p class="login-box-msg">{{ __('main.Sign in to start your session') }}</p>
        @if ($errors->any()) <div class="alert alert-danger">{{$errors->first()}}</div> @endif
      <form action="{{route('login.check')}}" method="post">
        @csrf
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="{{ __('main.E-mail') }}" name="email" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="{{ __('main.Password') }}" name="password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <button type="submit" class="btn btn-primary btn-block"><a href="{{route('register.user')}}" class="text-center" style="color:white">{{ __('main.Register') }}</a></button>
          </div>
          <div class="col-6">
            <button type="submit" class="btn btn-primary btn-block">{{ __('main.Sign in') }}</button>
          </div>
        </div>
      </form>

      <!--<div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div>

      <p class="mb-1">
        <a href="#">Şifremi Unuttum</a>
      </p>-->
      
    </div>
</div>
<script src="{{asset('admin')}}/plugins/jquery/jquery.min.js"></script>
<script src="{{asset('admin')}}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="{{asset('admin')}}/dist/js/adminlte.min.js"></script>
<script src="{{asset('admin')}}/dist/js/multform.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

</body>
</html>
