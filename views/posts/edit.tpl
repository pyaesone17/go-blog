    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item">Posts </li>
        <li class="breadcrumb-item active">Create </li>
    </ol>
    <div class="container-fluid">    
        <div class="card" style="margin-top: 20px">
            <div class="card-header">
                Posts Table
            </div>
            <div class="card-block">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                                <h4>Edit Post</h4>
                                <form action="/backend/posts" method="POST" class="form-horizontal" role="form">

                                    <div class="form-group">
                                        <label for="title">Post Title</label>
                                        <input type="text" name="title" placeholder="Enter title" class="form-control" value="{{ .post.Title }}"/>
                                    </div>                

                                    <div class="form-group">
                                        <label for="content">Post Content</label>
                                        <textarea name="content" placeholder="Enter Text" class="form-control" style="min-height: 300px ;">{{ .post.Content }}</textarea>
                                    </div>        

                                    <div class="form-group">
                                        <label for="tags">Tags</label>
                                        <select class="form-control tag select2" multiple="multiple" name="tag_ids">
                                            {{ range $key, $tag := .tags }}
                                            <option value="{{ $tag.Id }}"
                                            >
                                                {{ $tag.Title }}
                                            </option>
                                            {{ end }}
                                        </select>
                                    </div>   

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
          $('select').select2();
    </script>
