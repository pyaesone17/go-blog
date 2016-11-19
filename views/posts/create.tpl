
    <div class="container" style="padding-top: 100px">
        <div class="col-lg-8 col-lg-offset-2">
            <div class="panel panel-default">
                <div class="panel-body">
                        <h4>Create Post</h4>
                        <form action="/abcde/posts" method="POST" class="form-horizontal" role="form">

                            <div class="form-group">
                                <div class="col-sm-12">
                                    <input type="text" name="title" placeholder="Enter title" class="form-control" />
                                </div>
                            </div>                

                            <div class="form-group">
                                <div class="col-sm-12">
                                    <textarea name="content" placeholder="Enter Text" class="form-control" style="min-height: 300px ;display: none"></textarea>
                                    <div id="content"></div>
                                </div>
                            </div>        

                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                 </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#content').summernote({
            height: 300, 
            minHeight: 300, 
            toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontstyle',['fontname']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert',['picture','video']],
                ['mesc',['codeview','fullscreen']]
            ]
        }); 


        $('form button[type="submit"]').click(function(e){
            e.preventDefault();
            var markupStr = $('#content').summernote('code');
            $("textarea[name='content']").val(markupStr);
            $(this).closest('form').submit();
        });
    </script>
