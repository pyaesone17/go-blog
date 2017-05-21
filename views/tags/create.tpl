    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item">Tags </li>
        <li class="breadcrumb-item active">Create </li>
    </ol>
    <div class="container-fluid">    
        <div class="card" style="margin-top: 20px">
            <div class="card-header">
                Tags Table
            </div>
            <div class="card-block">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                                <h4>Create Tag</h4>
                                <form action="/tags" method="POST" class="form-horizontal" role="form">

                                    <div class="form-group">
                                        <label for="title">Tag Title</label>
                                        <input type="text" name="title" placeholder="Enter title" class="form-control" />
                                    </div>                

                                    <div class="form-group">
                                        <label for="content">Tag Content</label>
                                        <textarea name="description" placeholder="Enter Text" class="form-control" style="min-height: 300px ;"></textarea>
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
        // $('#content').summernote({
        //     height: 300, 
        //     minHeight: 300, 
        //     toolbar: [
        //         ['style', ['bold', 'italic', 'underline', 'clear']],
        //         ['font', ['strikethrough', 'superscript', 'subscript']],
        //         ['fontstyle',['fontname']],
        //         ['fontsize', ['fontsize']],
        //         ['color', ['color']],
        //         ['para', ['ul', 'ol', 'paragraph']],
        //         ['height', ['height']],
        //         ['insert',['picture','video']],
        //         ['mesc',['codeview','fullscreen']]
        //     ]
        // }); 


        // $('form button[type="submit"]').click(function(e){
        //     e.preventDefault();
        //     var markupStr = $('#content').summernote('code');
        //     $("textarea[name='content']").val(markupStr);
        //     $(this).closest('form').submit();
        // });
    </script>
