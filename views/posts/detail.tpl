    <div class="container" style="padding-top: 100px">
        <div class="col-lg-10 col-lg-offset-1" style="color:black">
            <div class="panel panel-default" style="border: 1px solid #E5E5E5;border-radius: 3px">
                <div class="panel-body" style="min-height: 500px">
                    <h1 class="title" style="margin-top: 0;"> <b><a href="#" style="color: black"> {{ .post.Title }} </a></b> </h1>
                    <h4 class="text-muted">brought to you by Pyae Sone Nyein</h4>
                    <div style="height: 1px;background: #E5E5E5;margin-top: 10px;margin-bottom: 10px"></div>
                    {{ .post.Content | str2html }}
                </div>
            </div>
        </div>
    </div>
