<?php
$setting = App\SmGeneralSettings::find(1);
if(isset($setting->copyright_text)){ $copyright_text = $setting->copyright_text; }else{ $copyright_text = 'Copyright © 2019 All rights reserved'; }
if(isset($setting->logo)) { $logo = $setting->logo; } else{ $logo = 'public/uploads/settings/logo.png'; }

if(isset($setting->favicon)) { $favicon = $setting->favicon; } else{ $favicon = 'public/backEnd/img/favicon.png'; }
 
$login_background = App\SmBackgroundSetting::where([['is_default',1],['title','Login Background']])->first(); 
 
if(empty($login_background)){
    $css = "";
}else{
    if(!empty($login_background->image)){
        $css = "background: url('". url($login_background->image) ."')  no-repeat center;  background-size: cover;";
 
    }else{
        $css = "background:".$login_background->color;
    }
}
$active_style = App\SmStyle::where('is_active', 1)->first();

$ttl_rtl = $setting->ttl_rtl;
?>

<!doctype html>
<html lang="en">

<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
    <link rel="stylesheet" href="{{asset('public/backEnd/login2')}}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('public/backEnd/login2')}}/themify-icons.css">
    <link rel="stylesheet" href="{{asset('public/backEnd/login2')}}/css/style.css">
    <title>IVY School Plus | Login</title>
</head> 
  <body >
     <div class="in_login_part"  style="">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-8 col-lg-5 col-xl-4 col-md-6">
                    <div class="in_login_content">
                        <div style="background-color:white">
                            <img src="{{asset($setting->logo)}}" alt="#">
                        </div>
                        <div class="in_login_page_iner">
                            {{-- <div class="in_login_page_header">
                                <h5>Login Details</h5>
                            </div> --}}
                                <form method="POST" class="loginForm" action="<?php echo e(route('login')); ?>">
                                    <input type="hidden" id="url" value="{{url('/')}}">
                                    <?php  echo csrf_field(); ?>
                                <div class="form-group row">
                                        <div class="col-md-12">
                                                <input type="email" placeholder="Enter Email address" name="email" class="form-control">
                                            </div>
                                </div>
                                <div class="form-group row">
                                        <div class="col-md-12">
                                                <input type="password" placeholder="Enter Password" name="password" class="form-control">
                                        </div>
                                </div>

                                <div class="d-flex justify-content-between">
                                    <div class="in_checkbox">
                                        <div class="boxes">
                                            <input type="checkbox" id="Remember">
                                            <label for="Remember">Remember Me</label>
                                        </div>
                                    </div>
                                    <div class="in_forgot_pass">
                                        <a href="#">Forget Password?</a>
                                    </div>
                                </div>
                                <div class="in_login_button text-center">
                                    <button type="submit" class="in_btn">
                                        <span class="ti-lock"></span>
                                        Login
                                    </button>
                                </div>
                                {{-- 
                                    <div class="create_account text-center">
                                        <p>Don’t have an account? <a href="#">Create Here</a></p>
                                    </div>
                                --}}
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="{{asset('public/backEnd/login2')}}/js/jquery-3.4.1.min.js"></script>
    <script src="{{asset('public/backEnd/login2')}}/js/popper.min.js"></script>
    <script src="{{asset('public/backEnd/login2')}}/js/bootstrap.min.js"></script> 
  </body>
</html>
