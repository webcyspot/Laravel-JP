@extends('layouts.master')

@section('content')
    
    <div class="container " >
        <div class="d-flex justify-content-center news_top_title ">
        作品アップロード
        </div>
        <div class="d-flex justify-content-center mt-5">
            <form method="post">@csrf    
                <input type="hidden" name="role" id="user_role" value="user">
                <div class="input-group d-flex mb- mt-5">
                    <div class="avarta_image_upload d-flex justify-content-center align-item-center">
                        <div style="position: absolute;"> <img src="{{asset('admin')}}/img/Group 226.png" alt=""></div>
                        <p>タップしてファイルを追加</p>
                    </div>
                    <div class="work_name">
                        <div class="input-group  flex-column">
                            <label class="form-check-label mb-3 work_duration_title" for="flexRadioDefault1">
                            作品名
                            </label>
                        <input type="text" required placeholder="API_Text">
                        </div>
                        <div class="contract_period mt-4">
                            <div class="work_duration_title mt-3">契約期間</div>
                            <div class="d-flex mt-3">
                                <div ><input type="text" class="periord_start" placeholder="2023/12/21"></div>
                                <div class="d-flex justify-content-center align-items-center" style="width:40px">~</div>
                                <div ><input type="text" class="periord_end" placeholder="2024/12/21"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="input-group mt-5  flex-column">
                    <label class="form-check-label mb-2" class="work_duration_title" for="flexRadioDefault1">
                    作品説明
                    </label>
                    <textarea name="" id="" cols="30" rows="5" required></textarea>
                </div>

                <div class="input-group mt-5 flex-column">
                    <label class="form-check-label mb-2" class="work_duration_title" for="flexRadioDefault1">
                    販売金額
                    </label>
                    <input type="text" required>
                </div>

                <div class="d-flex mt-3 ">
                    <input type="button" data-dismiss="modal1" data-toggle="modal" data-target="#myModal" class="work_dark_sub " value="破棄する"/>
                    <input type="submit" name="submit" class="submit work_write_sub" value="Submit"/>
                </div>
            </form>
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                <div class="modal-content">
                
                    <!-- Modal Header -->
                    <div class="modal-header flex-column">
                    <h4 class="modal-title">本当に契約を破棄しますか？</h4>
                    <h4 class="modal-title">※この操作は戻ることができません。</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    
                    
                    
                    <!-- Modal footer -->
                    <div class="d-flex justify-content-center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">いいえ</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">破棄する</button>
                    </div>
                    
                </div>
                </div>
            </div>
           <!-- modal -->
        </div>
    </div>
@endsection

@section('script')

@endsection
