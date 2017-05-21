<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Home</a></li>
    <li class="breadcrumb-item">Tags </li>
</ol>
<div class="container-fluid">
    <div class="card" style="margin-top: 20px">
        <div class="card-header">
            Tags Table <a href="tags/create" class="small-link pull-right"><i class="icon-plus"></i></a>
        </div>
        <div class="card-block">
            {{ if .status }}
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{ .status }}
            </div>
            {{ end }}
            <div class="col-lg-12">        
                <table class="table table-hover">
                  <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {{range $key, $tag := .tags}}
                        <tr>
                            <th scope="row">1</th>
                            <td>{{ $tag.Title }} </td>
                            <td>{{ $tag.Description }}</td>
                            <td>
                                <form style="display: inline-block" action="/tags/{{ $tag.Id }}" method="POST" >
                                    <input type="hidden" name="_method" value="DELETE" />
                                    <button class="btn btn-secondary">delete</button>
                                </form>
                            </td>
                        </tr>
                        {{end}}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
       

