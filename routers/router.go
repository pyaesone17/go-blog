package routers

import (
	"hello/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
    beego.Router("/backend/posts", &controllers.PostController{})
    beego.Router("/backend/posts/create", &controllers.PostController{},"get:Create")    
    beego.Router("/posts/:id", &controllers.PostController{},"get:Detail")  
    beego.Router("/backend/posts/:id/edit", &controllers.PostController{},"get:Edit")   
    beego.Router("/backend/posts/:id", &controllers.PostController{},"delete:Delete")    

    beego.Router("/tags", &controllers.TagController{})
    beego.Router("/tags/create", &controllers.TagController{},"get:Create")    
    beego.Router("/tags/:id", &controllers.TagController{},"delete:Delete")      
}
