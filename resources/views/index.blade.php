@extends('layouts.master')

@section('content')
    
    <div class="container ">
        <div class="cooperation_service">
           連携サービス
        </div>
        <div class="d-flex justify-content-center avarta_group">
            <div class="avarta"><img src="{{asset('admin')}}/img/Mask group.png" alt=""></div>
            <div class="d-flex flex-column">
                <div class="des_title">jou_muramoto</div>
                <div class="des_head mt-2">取締役 /designer / イラストレーター / webマーケティング /取締役 / designer</div>
                <div class="description mt-2">この文章はタイトルです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーこの文章はタイトルです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミー</div>
                <div class="d-flex justify-content-center mt-3"><button class="des_but">編集</button></div>
            </div>
        </div>
        <div class="mt-5">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>作品</th>
                        <th>作品名</th>
                        <th>配当</th>
                        <th>契約期間</th>
                        <th>販売価格</th>
                        <th>Dad</th>
                        <th>契約ステータス</th>
                    </tr>
                </thead>
                <tbody>
                        <tr>
                            <td><img src="{{asset('admin')}}/img/avarta1.png" alt=""></td>
                            <td>Jade VIP Access Pass</td>
                            <td>000001</td>
                            <td>2021.01.21</td>
                            <td>0.000001</td>
                            <td>Sunyata_VOID</td>
                            <td>契約中</td>
                        </tr>
                        <tr>
                            <td><img src="{{asset('admin')}}/img/avarta1.png" alt=""></td>
                            <td>Jade VIP Access Pass</td>
                            <td>000001</td>
                            <td>2021.01.21</td>
                            <td>0.000001</td>
                            <td>Sunyata_VOID</td>
                            <td>契約中</td>
                        </tr>
                        <tr>
                            <td><img src="{{asset('admin')}}/img/avarta1.png" alt=""></td>
                            <td>Jade VIP Access Pass</td>
                            <td>000001</td>
                            <td>2021.01.21</td>
                            <td>0.000001</td>
                            <td>Sunyata_VOID</td>
                            <td>契約中</td>
                        </tr>
                        <tr>
                            <td><img src="{{asset('admin')}}/img/avarta1.png" alt=""></td>
                            <td>Jade VIP Access Pass</td>
                            <td>000001</td>
                            <td>2021.01.21</td>
                            <td>0.000001</td>
                            <td>Sunyata_VOID</td>
                            <td>契約中</td>
                        </tr>
                        <tr>
                            <td><img src="{{asset('admin')}}/img/avarta1.png" alt=""></td>
                            <td>Jade VIP Access Pass</td>
                            <td>000001</td>
                            <td>2021.01.21</td>
                            <td>0.000001</td>
                            <td>Sunyata_VOID</td>
                            <td>契約中</td>
                        </tr>
                        <tr>
                            <td><img src="{{asset('admin')}}/img/avarta1.png" alt=""></td>
                            <td>Jade VIP Access Pass</td>
                            <td>000001</td>
                            <td>2021.01.21</td>
                            <td>0.000001</td>
                            <td>Sunyata_VOID</td>
                            <td>契約中</td>
                        </tr>
                </tbody>
            </table>
        </div>
        

    </div>
@endsection

@section('script')

@endsection
