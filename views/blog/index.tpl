<!DOCTYPE html>
<html>
<head>
    <title>Go Lang</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">    
    <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
</head>
<body style="background: #F4F4F4">
    <h1 style="text-align:center;font-family: 'Gloria Hallelujah', cursive;">Pyae Sone Nyein</h1>
    <h4 style="text-align: center;">A programmer who loves Open Source Software</h4>
    <br/>
    <div class="container">
        {{range $key, $post := .posts}}
                <section class="col-lg-12" style="margin-top: 30px">
                    
                    <div class="fimg" style="
                        background-image:url(/static/images/{{ $post.ImagePath }});
                        background-position: center center;
                        background-size: cover;
                        padding: 130px 0;
                    ">
                    </div>
                    <div style="background: white;" class="col-lg-12">
                        <h4 style="margin: 10px; margin-top: 0px; padding-top: 20px">
                           {{ $post.Title }}
                        </h4>
                        <div style="margin:10px">
                            <b>Chinese food</b>
                            | 02 May 2017
                        </div>
                        <div style="margin:10px">
                             {{ $post.Content }} ...
                        </div>
                        <div class="pull-right" style="margin:10px">
                            <a href="/">Read More ... </a>
                        </div>
                    </div>
                </section>        
   
        {{end}}
    </div>
    <br/>
    <br/>
</body>
</html>