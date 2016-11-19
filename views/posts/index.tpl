
    <div class="container" style="padding-top: 100px">
        <div class="col-lg-8 col-lg-offset-2">        
            <h3>Posts List 
                <a href="posts/create" class="small-link">create</a>
            </h3>
            <ul class="list-group">
                {{range $key, $post := .posts}}
                    <li class="list-group-item"> <a href="/posts/{{ $post.Id }}">{{$post.Title}} </a>
                    <form style="display: inline-block" action="/abcde/posts/{{ $post.Id }}" method="POST" class="pull-right">
                        <input type="hidden" name="_method" value="DELETE" />
                        <button class="btn btn-danger btn-sm">x</button>
                    </form>
                    </li>
                {{end}}
            </ul>
        </div>
    </div>

