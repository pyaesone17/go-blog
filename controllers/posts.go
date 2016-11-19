package controllers

import (
    "fmt"
    "github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"
    "strconv"
    models "hello/models"
)

type PostController struct {
    beego.Controller
}

func (c *PostController) Get() {
    o := orm.NewOrm()
    var posts []*models.Post
    num, err := o.QueryTable("post").All(&posts)
    fmt.Printf("Returned Rows Num: %s, %s", num, err)

    c.Data["title"] = "Myanmar News"
    c.Data["posts"] = posts
    c.Layout = "layout.tpl"
    c.TplName = "posts/index.tpl"
}


func (c *PostController) Create() {
    c.Data["title"] = "Myanmar News"
    c.Layout = "layout.tpl"    
    c.TplName = "posts/create.tpl"
}

func (c *PostController) Detail(){
    identity ,error := strconv.Atoi(c.Ctx.Input.Param(":id"))
    if error != nil {
      // handle error
    }
    
    o := orm.NewOrm()
    post := models.Post{Id: identity}
    err := o.Read(&post)   

    if err != nil {
      // handle error
    }

    c.Data["post"] = post
    c.Data["title"] = "Myanmar News"
    c.Layout = "layout.tpl"    
    c.TplName = "posts/detail.tpl"
}

func (c *PostController) Post() {
    o := orm.NewOrm()
    o.Using("default ") // Using default, you can use other database
    profile := new (models.Post)
    profile.Title = c.GetString("title")
    profile.Content = c.GetString("content")
    o.Insert(profile)
    fmt.Println(o.Insert(profile))
    
    c.Ctx.Redirect(302, "/abcde/posts")
}

func (c *PostController) Delete() {
    identity ,error := strconv.Atoi(c.Ctx.Input.Param(":id"))
    if error != nil {
      // handle error
    }    

    o := orm.NewOrm()
    o.Using("default ") // Using default, you can use other database    
    num, err := o.Delete(&models.Post{Id: identity})

    if err == nil {
        fmt.Println(num)
    }
    c.Ctx.Redirect(302, "/abcde/posts")
}