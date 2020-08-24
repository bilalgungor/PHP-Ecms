@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title" style="background-color: #3c8dbc "><b>User Düzenle</b></h3>
            </div>
            <div class="box-body">
                <form action="{{route('user.update',$users->id)}}" method="post" enctype="multipart/form-data">
                    @csrf
                    @method('put')
                    @isset($users->user_file)
                    <div class="form-group">
                        <label>Resim Önizleme</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/users/{{$users->user_file}}" alt="">
                                </div>
                            </div>
                        </div>
                        @endisset

                   <div class="form-group">
                           <label>Resim Seç</label>
                           <div class="row">
                               <div class="col-xs-12">
                                   <input class="form-control" name="user_file" type="file">
                               </div>
                           </div>
                       </div>

                   <div class="form-group">
                       <label>Ad Soyad</label>
                       <div class="row">
                           <div class="col-xs-12">
                               <input class="form-control"  type="text" name="name" value="{{$users->name}}">
                           </div>
                       </div>
                   </div>

                       <div class="form-group">
                           <label>Kullanıcı Adı(Email)</label>
                           <div class="row">
                               <div class="col-xs-12">
                                   <input class="form-control"  type="email" name="user_slug" value="{{$users->email}}">
                               </div>
                           </div>
                       </div>

                    <div class="form-group">
                        <label>Şifre</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control"  type="password" name="password">
                                <small>Şifreyi değiştirmek istemiyorsanız boş bırakın...</small>
                            </div>
                        </div>
                    </div>

                       <div class="form-group">
                           <label>Durum</label>
                           <div class="row">
                               <div class="col-xs-12">
                                  <select name="user_status" class="form-control">
                                      <option {{$users->user_status=="1" ? "selected=''" : ""}} value="1">Aktif</option>
                                      <option {{$users->user_status=="0" ? "selected=''" : ""}} value="0">Pasif</option>
                                  </select>
                               </div>
                           </div>
                       </div>


                   <input type="hidden" name="old_file" value="{{$users['user_file']}}">


                        <div align="right" class="box-footer">
                            <button type="submit" class="btn btn-success">Düzenle</button>
                        </div>
                </form>
              </div>
            </div>
        </div>
    </section>

@endsection
@section('css')@endsection
@section('js')@endsection
