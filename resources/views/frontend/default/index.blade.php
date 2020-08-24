@extends('frontend.layout')
@section('title',"Anasayfa Başlık")
@section('content')
<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            @php($count=0)
            @foreach($data['slider'] as $slider)
            <div class="carousel-item @if($count++==0) active @endif" style="background-image: url('images/sliders/{{$slider->slider_file}}')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>{{$slider->slider_title}}</h3>
                </div>
            </div>
                @endforeach
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">
    <!-- Blog Section -->
    <h2>Blog</h2>

    <div class="row">
        @foreach($data['blog'] as $blog)
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="{{route('blog.Detail',$blog->blog_slug)}}"><img class="card-img-top" src="images/blogs/{{$blog->blog_file}}" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">{{$blog->blog_title}}</a>
                    </h4>
                    <p class="card-text">{!! substr($blog->blog_content,0,140 )!!}</p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <!-- /.row -->

    <!-- Features Section -->
    <div class="row">
        <div class="col-lg-6">
            <h2>{{$baslik}}</h2>
            <p>{!! $detay !!}</p>
        </div>
        <div class="col-lg-6">
            <img class="img-fluid rounded" src="http://placehold.it/700x450" alt="">
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Call to Action Section -->
    <div class="row mb-4">
        <div class="col-md-8">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
        </div>
        <div class="col-md-4">
            <a class="btn btn-lg btn-secondary btn-block" href="#">Call to Action</a>
        </div>
    </div>

</div>
<!-- /.container -->
@endsection
@section('css') @endsection
@section('js') @endsection
