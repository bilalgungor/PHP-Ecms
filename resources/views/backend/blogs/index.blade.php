@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Blog</h3>
                <div align="right">
                    <a href="{{route('blog.create')}}"><button class="btn btn-success">Ekle</button></a>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped table-dark">
                    <thead>
                    <tr>
                        <th scope="col">Başlık</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody id="sortable">
                    @foreach($data['blog'] as $blogs)
                        <tr id="item-{{$blogs['id']}}">
                            <td class="sortable">{{$blogs['blog_title']}}</td>
                            <td width="5"><a href="{{route('blog.edit',$blogs->id)}}"><i class="fa fa-pencil-square-o"></i></a></td>
                            <td width="5">
                                <a href="javascript:void(0)"><i id="@php echo $blogs->id @endphp" class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <script type="text/javascript">
        $(function(){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $('#sortable').sortable({
                revert: true,
                handle: ".sortable",
                stop: function (event, ui) {
                    var data = $(this).sortable('serialize');
                    $.ajax({
                        type: "POST",
                        data: data,
                        url: "{{route('blog.Sortable')}}",
                        success: function (msg) {
                            //  console.log(msg)
                            if (msg) {
                                alertify.success("İşlem Başarılı")
                            } else {
                                alertify.error("İşlem Başarısız")
                            }
                        }
                    });
                }
            });
            $('#sortable').disableSelection();
        });

        $(".fa-trash-o").click(function () {
            destroy_id=$(this).attr('id');

            alertify.confirm('Silmek İstiyor musunuz?','Bu işlem geri alınamaz',
                function ()
                {
                    $.ajax({
                        type:"DELETE",
                        url:"blog/"+destroy_id,
                        success: function (msg) {
                            if(msg)
                            {
                                $("#item-"+destroy_id).remove();
                                alertify.success('Başarıyla Silindi')
                            }
                            else
                            {
                                alertify.error('Silme işlemi iptal edildi')
                            }
                        }
                    });
                },
                function ()
                {
                    alertify.error('Silme işlemi iptal edildi')
                }
            )
        });
    </script>

@endsection
@section('css')@endsection
@section('js')@endsection
