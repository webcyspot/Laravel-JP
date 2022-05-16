@extends('layouts.master')

@section('content')
    
    <div class="container " style="width:320px">
        <div class="d-flex justify-content-center news_top_title ">
        お問い合わせ
        </div>
        <div class="d-flex justify-content-center mt-5">
            <form method="post">@csrf    
                        <input type="hidden" name="role" id="user_role" value="user">
                        <div class="input-group mb- mt-5 flex-column">
                            <label class="form-check-label mb-3 " for="flexRadioDefault1">
                            お名前 &nbsp <span style="color:red">必須</span>
                            </label>
                          <input type="text" mt-2 required>
                        </div>
                        <div class="input-group mt-5  flex-column">
                            <label class="form-check-label mb-2" for="flexRadioDefault1">
                            メールアドレス &nbsp <span style="color:red">必須</span>
                            </label>
                          <input type="text" required>
                        </div>
                        <div class="input-group mt-5 flex-column">
                            <label class="form-check-label mb-2" for="flexRadioDefault1">
                            お問合せ記入 &nbsp <span style="color:red">必須</span>
                            </label>
                            <textarea name="" id="" cols="30" rows="5" required></textarea>
                        </div>
                        <div class="form-check  mt-2">
                            <input class="form-check-input mt-2" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label " for="flexCheckDefault">
                            プライバシーポリシーに同意します。
                            </label>
                        </div>
                        <div class="d-flex mt-3  justify-content-center ">
                            <input type="submit" name="submit" class="submit inquery_sub" value="Submit"/>
                        </div>
                      </form>
        </div>
    </div>
@endsection

@section('script')

@endsection
