package controllers

import (
    "fmt"
    "github.com/astaxie/beego"
    "strconv"
    "hello/database"
    "os"
    "net/http"
    "io"
    models "hello/models"
    "hello/helpers"
)

type PostController struct {
    beego.Controller
}

type FormData struct {
    Title  string `form:"title"`
    Tag_ids []int `form:"tag_ids"`
}

func (c *PostController) Get() {
    var posts []*models.Post
    database.DBCon.Find(&posts);

    status := c.GetSession("status")
    if status != nil {
        c.DelSession("status")
        c.Data["status"] = status
    } 

    for _,post := range posts {
        fmt.Println(post)
    }

    c.Data["title"] = "Myanmar News"
    c.Data["posts"] = posts
    c.Layout = "layout.tpl"
    c.TplName = "posts/index.tpl"
}


func (c *PostController) Create() {

    var tags []*models.Tag
    database.DBCon.Find(&tags);

    c.Data["title"] = "Myanmar News"
    c.Data["tags"] = tags
    c.Layout = "layout.tpl"    
    c.TplName = "posts/create.tpl"

}

func (c *PostController) Detail(){
    identity ,_ := strconv.Atoi(c.Ctx.Input.Param(":id"))
    post := &models.Post{ Id: identity }
    database.DBCon.First(post)

    c.Data["post"] = post
    c.Data["title"] = "Myanmar News"
    c.Layout = "layout.tpl"    
    c.TplName = "posts/detail.tpl"
}

func (c *PostController) Edit(){
    identity ,_ := strconv.Atoi(c.Ctx.Input.Param(":id"))
    post := &models.Post{ Id: identity }
    var tags []*models.Tag

    database.DBCon.Find(&tags);
    database.DBCon.First(post)

    c.Data["post"] = post
    c.Data["tags"] = tags
    c.Data["title"] = "Myanmar News"
    c.Data["isEqual"] = isEqual
    c.Layout = "layout.tpl"    
    c.TplName = "posts/edit.tpl"
}

func (c *PostController) Post() {
    post := &models.Post{ }
    post.Title = c.GetString("title")
    post.Content = c.GetString("content")
    
    data := FormData{}
    c.ParseForm(&data); 
    fmt.Println(data.Tag_ids)

    for _,id := range data.Tag_ids {
        tag := models.Tag{Id: id}
        database.DBCon.First(&tag)
        post.Tags = append(post.Tags, tag)
    }

    _, header , _ := c.GetFile("image")
    
    if header != nil {
        fmt.Println(header.Filename)

        // this.SaveToFile("image", main.DirPath+'/static/imges');
        file, err := header.Open()
        defer file.Close()
        if err != nil {
            http.Error(c.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
            return
        }

        //create destination file making sure the path is writeable.
        dst, err := os.Create(helpers.Path+"/static/images/" + header.Filename)
        defer dst.Close()
        if err != nil {
            http.Error(c.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
            return
        }
        //copy the uploaded file to the destination file
        if _, err := io.Copy(dst, file); err != nil {
            http.Error(c.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
            return
        }

        post.ImagePath = header.Filename
    }
    
    database.DBCon.Create(post)
    
    c.SetSession("status", "Successfully created a new post")
    c.Ctx.Redirect(302, "/backend/posts")
}

func (c *PostController) Delete() {
    identity ,_ := strconv.Atoi(c.Ctx.Input.Param(":id"))

    fmt.Println(identity)

    post := &models.Post{ Id: identity }
    database.DBCon.First(post)
    database.DBCon.Delete(post)

    c.Ctx.Redirect(302, "/backend/posts")
}

func isEqual(firstId int, secondId int) bool{
    return firstId == secondId
}
