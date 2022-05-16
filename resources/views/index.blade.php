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
            <div class="text-center">
                

                <button type="button" class="btn btn-demo" data-toggle="modal" data-target="#myModal2">
                    Modal
                </button>
            </div>

            <!-- Modal -->
            
            <!-- Modal -->
            <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" style="padding:0px; margin:0px;" aria-label="Close"><img src="{{asset('admin')}}/img/Group 207.png" alt=""></button>
                            <h4 class="modal-title" id="myModalLabel2">絞り込み</h4>
                        </div>
                        <hr>

                        <div class="modal-body">
                            <div class="contract_status d-flex flex-column">
                                <div class="contract_status_title mt-2">契約状態</div>
                                <div class="form-check  mt-2">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        全て
                                    </label>
                                </div>
                                <div class="d-flex justify-content-between  mt-2">
                                    <div class="form-check  mt-2">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            契約中
                                        </label>
                                    </div>
                                    <div class="form-check  mt-2">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            契約破棄
                                        </label>
                                    </div>
                                    <div class="form-check  mt-2">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            契約終了
                                        </label>
                                    </div>
                                    
                                </div>
                               
                            </div>
                            <div class="key_search mt-2">
                                <div class="key_search_title mt-3">キーワード検索</div>
                                <button class="key_but mt-2">shou_morimoto</button>
                            </div>
                            <div class="sort mt-3">
                                <div class="title mt-2">並び替え</div>
                                <div class="d-flex  mt-2">
                                    <div class="form-check mr-4">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            日付順 (古い順)
                                        </label>
                                    </div>
                                    <div class="form-check ">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            日付順 (新しい順)
                                        </label>
                                    </div>
                                </div>
                                <div class="d-flex  mt-2">
                                    <div class="form-check mr-4">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            価格順 (安い順)
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            価格順 (高い順)
                                        </label>
                                    </div>
                                </div>
                                <div class="d-flex  mt-2">
                                    <div class="form-check mr-4">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            契約順 (古い順)
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            契約順 (新しい順)
                                        </label>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="contract_period mt-3">
                                <div class="title mt-3">契約期間</div>
                                <div class="d-flex mt-3">
                                    <div ><input type="text" class="periord_start" placeholder="2023/12/21"></div>
                                    <div class="d-flex justify-content-center align-items-center" style="width:40px">~</div>
                                    <div ><input type="text" class="periord_end" placeholder="2024/12/21"></div>
                                </div>
                            </div>
                            <div class="price_search mt-3">
                                <div class="title mt-3">価格</div>
                                <div class="d-flex mt-3">
                                    <div ><input type="text" class="periord_start" placeholder="0.1ETH"></div>
                                    <div class="d-flex justify-content-center align-items-center" style="width:40px">~</div>
                                    <div ><input type="text" class="periord_end" placeholder="1ETH"></div>
                                </div>

                            </div>
                            <div class="search_sub_but mt-5">
                                <div class="d-flex">
                                     <button type="button" class="btn search_clear btn-light mr-2">クリア</button>
                                     <button type="button" class="btn search_submit btn-dark">検索</button>

                                </div>

                            </div>
                        </div>

                    </div><!-- modal-content -->
                </div><!-- modal-dialog -->
            </div><!-- modal -->
           <!-- container -->
        </div>
        

    </div>
   
@endsection

@section('script')

@endsection
