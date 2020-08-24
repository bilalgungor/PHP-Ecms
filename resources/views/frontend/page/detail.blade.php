@extends('frontend.layout')
@section('title',"Anasayfa Başlık")
@section('content')
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">{{$page->page_title}}
        </h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active">Blog Home 2</li>
        </ol>

        <div class="row">

            <!-- Post Content Column -->
            <div class="col-lg-8">

                <!-- Preview Image -->
                <img class="img-fluid rounded" src="/images/pages/{{$page->page_file}}" alt="">

                <hr>

                <!-- Date/Time -->
                <p>Yayınlanma Tarihi {{$page->created_at->format('d-m-y h:i')}}</p>

                <hr>

                <!-- Post Content -->

                <p>{!! $page->page_content !!}</p>

                <hr>
            </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Search Widget -->
                <div class="card mb-4">
                    <h5 class="card-header">Search</h5>
                    <div class="card-body">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
                        </div>
                    </div>
                </div>


                <!-- Side Widget -->
                <div class="card my-4">
                    <h5 class="card-header">Diğer Bloglar</h5>
                    <div class="card-body">
                        <ul class="list-group">
                            @foreach($pageList as $list)
                            <li class="list-group-item">
                               <a href="{{route('page.Detail',$list->page_slug)}}">{{$list->page_title}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>

            </div>

        </div>
        <!-- /.row -->

    </div>
@endsection
@section('css') @endsection
@section('js') @endsection
