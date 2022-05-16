@extends('layouts.master')

@section('content')
    
    <div class="container ">
        <div class="cooperation_service">
           連携サービス
        </div>
        <div class="d-flex justify-content-center avarta_group">
            <div class="detail_avarta"><img src="{{asset('admin')}}/img/detail_avarta.png" alt=""></div>
            <div class="d-flex">
                <div class="d-flex flex-column">
                    <div class="details_top_title d-flex">
                        <div class="details_top_title"><span> Artist：shou_morimoto</span></div>  
                        <div class="details_top_title">Dad：morimoto</div>  
                    </div>
                    <div class="details_title mt-2">Jade VIP Access Pass</div>
                    <div class="details_des mt-2">契約期間</div>
                    <div class="details_duration mt-2">2021.04.12 ~ 2021.05.12</div>
                    <div class="mt-3">
                        <select class="details_option" name="" id="">
                            <option value="">詳細</option>
                        </select>
                    </div>
                </div>
                <div class="d-flex flex-column">
                    <div class="details_right"><button  class="details_but">契約中</button></div>
                    <div class="details_but_des mt-2">契約を破棄する</div>
                </div>
            </div>
            
        </div>
    </div>
@endsection

@section('script')

@endsection
