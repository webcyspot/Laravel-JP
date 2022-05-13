<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
    <link rel="icon" sizes="48x48" href="{{App\Models\File::find(App\Models\Option::where('key','=','favicon')->first()->value)->getMedia()->first()->getUrl('thumb')}}" type="image/x-icon" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>{{ __('main.Register') }}</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <link rel="stylesheet" href="{{asset('admin')}}/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="{{asset('admin')}}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('admin')}}/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="{{asset('admin')}}/dist/css/multform.css">

</head>


<body class="hold-transition register-page  login-section">
<div class="register-logo">
        <a href="{{url('/')}}"><img src="{{asset('admin')}}/img/login_logo.png" alt=""></a>
</div>
    <div class="register-box">
    
      <div class="row">
          <div class="col-md-12 col-md-offset-3">
              <div class="title"><p>Sign Up</p></div>
              <div id="msform">
                  <!-- progressbar -->
                  <ul id="progressbar">
                      <li class="active"></li>
                      <li></li>
                  </ul>
                  <div class="d-flex justify-content-center">
                    <div>連携方法</div>
                    <div></div>
                  </div>
                  <div class="d-flex justify-content-center">
                    <div>登録方法</div>
                    <div></div>
                  </div>

                  
                  <!-- fieldsets -->
                  <fieldset>
                      <div class="d-flex justify-content-center mt-5">
                        <span>あなたの役職はなんですか？</span>
                      </div>
                      <div class="d-flex justify-content-center mt-5">
                        <span>※ 役職はあとで変更できます。</span>
                      </div>
                      <div class="d-flex justify-content-center article">
                        <div class="Dad d-flex justify-content-center flex-column next" id="Dad"><div>Dad</div><div>作品の販売活動を
    行う方はこちら</div></div>
                        <div class="Artist d-flex justify-content-center flex-column next" id="Artist"><div>Artist</div><div>作品をアップロード
    する方はこちら</div></div>
                      </div>
                  </fieldset>
            
                  <fieldset>
                  <div class="card-body register-card-body">
                      @if ($errors->any()) <div class="alert alert-danger">{{$errors->first()}}</div> @endif
                      <form action="{{route('register')}}" method="post">@csrf
                        <input type="hidden" name="role" id="user_role" value="user">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" placeholder="{{ __('main.Name') }}" name="name" required>
                          <div class="input-group-append">
                            <div class="input-group-text">
                              <span class="fas fa-user"></span>
                            </div>
                          </div>
                        </div>
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
                        <div class="input-group mb-3">
                          <input type="password" class="form-control" placeholder="{{ __('main.Retype password') }}" name="password" required>
                          <div class="input-group-append">
                            <div class="input-group-text">
                              <span class="fas fa-lock"></span>
                            </div>
                          </div>
                        </div>
                      <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                      <input type="submit" name="submit" class="submit action-button" value="Submit"/>
                      </form>
                    </div>
                      
                  </fieldset>
                </div>
            
              <!-- /.link to designify.me code snippets -->
          </div>
      </div>
      <!-- /.MultiStep Form -->
        

      
        <!-- /.form-box -->
     
    </div>
    <script src="{{asset('admin')}}/plugins/jquery/jquery.min.js"></script>
    <script src="{{asset('admin')}}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('admin')}}/dist/js/adminlte.min.js"></script>
    <script src="{{asset('admin')}}/dist/js/multform.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
</body>
</html>
