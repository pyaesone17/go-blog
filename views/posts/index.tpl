<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/">Home</a></li>
    <li class="breadcrumb-item">Posts </li>
</ol>
<div class="container-fluid">
    <div class="card" style="margin-top: 20px">
        <div class="card-header">
            Posts Table <a href="posts/create" class="small-link pull-right"><i class="icon-plus"></i></a>
        </div>
        <div class="card-block">
            {{ if .status }}
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Title!</strong> Alert body ...
            </div>
            {{ end }}
            <div class="col-lg-12">        
                <table class="table table-hover">
                  <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Content</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {{range $key, $post := .posts}}
                        <tr>
                            <th scope="row">{{ $key }}</th>
                            <td>{{ $post.Title }} </td>
                            <td>{{ $post.Content }}</td>
                            <td>
                                <a href="/backend/posts/{{ $post.Id }}/edit" class="btn btn-secondary"> Edit </a>
                                <form style="display: inline-block" action="/backend/posts/{{ $post.Id }}" method="POST" >
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
       

