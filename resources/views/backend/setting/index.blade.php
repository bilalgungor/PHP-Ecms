@extends('backend.layout')
@section('content')
    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Ayarlar</h3>
            </div>
            <div class="box-body">
                <table class="table table-striped table-dark">
                    <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Açıklama</th>
                        <th scope="col">İçerik</th>
                        <th scope="col">Anahtar Değer</th>
                        <th scope="col">Tür</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody id="sortable">
                    @foreach($data['adminSettings'] as $settings)
                    <tr id="item-{{$settings['id']}}">
                        <td>{{$settings['id']}}</td>
                        <td class="sortable">{{$settings['settings_description']}}</td>
                        <td>@if($settings['settings_type']!='file')
                                {{$settings['settings_value']}}
                                @endif

                            @if($settings['settings_type']=='file')
                                <img width="30x" height="30px" src="/images/settings/{{$settings['settings_value']}}" alt="">
                            @endif
                        </td>
                        <td>{{$settings['settings_key']}}</td>
                        <td>{{$settings['settings_type']}}</td>
                        <td><a href="{{route('setting.Edit',['id'=>$settings])}}"><i class="fa fa-pencil-square-o"></i></a></td>
                        <td>
                        @if($settings->settings_delete)
                                <a href="javascript:void(0)"><i id="@php echo $settings->id @endphp" class="fa fa-trash-o"></i></a>
                            @endif
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
                    url: "{{route('setting.Sortable')}}",
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
            location.href="/admin/setting/delete/" + destroy_id;
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
