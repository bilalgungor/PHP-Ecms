@extends('frontend.layout')
@section('title',"Anasayfa Başlık")
@section('content')
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Contact
            <small>Subheading</small>
        </h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Anasayfa</a>
            </li>
            <li class="breadcrumb-item active">İletişim</li>
        </ol>

        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="row">
                <div class="col-lg-8 mb-4">
                    <h3>İletişime Formu</h3>
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                           <p>{{session('success')}}</p>
                        </div>
                    @endif
                    @if($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{$error}}</li>
                                    @endforeach
                            </ul>
                        </div>
                    @endif
                    <form method="post">
                        @csrf
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Ad Soyad:</label>
                                <input type="text" class="form-control" name="name" required="">
                                <p class="help-block"></p>
                            </div>
                        </div>

                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" required="">
                                <div class="help-block"></div></div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Telefon</label>
                                <input type="text" class="form-control" name="phone" required="">
                                <div class="help-block"></div></div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Mesaj</label>
                                <textarea rows="10" cols="100" class="form-control" name="message" required="" ></textarea>
                                <div class="help-block"></div></div>
                        </div>
                        <div id="success"></div>
                        <!-- For success/fail messages -->
                        <button type="submit" class="btn btn-primary" id="sendMessageButton">Gönder</button>
                    </form>
                </div>

            </div>
            <!-- Contact Details Column -->
            <div class="col-lg-4 mb-4">
                <h3>Mekan</h3>
                <p>
                   {!! $adres !!}
                    <br>{{$ilce}}/{{$il}}
                    <br>
                </p>
                <p>
                    <abbr title="Phone">GSM</abbr>: {{$phono_gsm}}
                    <br>
                    <abbr title="Phone">Sabit</abbr>: {{$phone_sabit}}
                </p>
                <p>
                    <abbr title="Email">Email</abbr>:
                    <a href="mailto:name@example.com">{{$mail}}
                    </a>
                </p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->

        <!-- /.row -->

    </div>
@endsection
@section('css') @endsection
@section('js') @endsection
