@extends('layouts.master')

@section('content')
    
    <div class="container ">
        <div class="d-flex justify-content-center news_top_title">
            お知らせ
        </div>
        <div class="d-flex">
            <div class="d-flex flex-column">
                <div class="details_top_title d-flex">
                    <div class="details_top_title"><span> 2021.12.31</span></div>  
                </div>
                <div class="details_title mt-4">契約内容の変更依頼</div>
                <div class="details_des mt-3">
                    お世話になっております。Dadの森本です。契約を確認したところ、比率が9:1になっていたので 7:3に修正の方お願いいたします。
                </div>
                <div class="d-flex flex-column mt-4">
                    <div class=""><button  class="btn search_submit btn-dark">編集ページへ</button></div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')

@endsection
