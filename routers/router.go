package routers

import (
	"hello/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
    beego.Router("/abcde/posts", &controllers.PostController{})
    beego.Router("/abcde/posts/create", &controllers.PostController{},"get:Create")    
    beego.Router("/posts/:id", &controllers.PostController{},"get:Detail")  
    beego.Router("/abcde/posts/:id", &controllers.PostController{},"delete:Delete")      
}
