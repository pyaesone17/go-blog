package controllers

import (
    "fmt"
    "github.com/astaxie/beego"
    "strconv"
    "hello/database"
    models "hello/models"
)

type TagController struct {
    beego.Controller
}

func (c *TagController) Get() {

    var tags []*models.Tag
    database.DBCon.Find(&tags);
    
    fmt.Println(tags)

    c.Data["title"] = "Myanmar News"
    c.Data["tags"] = tags
    c.Layout = "layout.tpl"
    c.TplName = "tags/index.tpl"
}

func (c *TagController) Create() {
    c.Data["title"] = "Myanmar News"
    c.Layout = "layout.tpl"    
    c.TplName = "tags/create.tpl"
}

func (c *TagController) Post() { 
    tag := &models.Tag{ }
    tag.Title = c.GetString("title")
    tag.Description = c.GetString("description")
    database.DBCon.Create(tag)

    c.SetSession("status", "Successfully created a new tag")
    c.Ctx.Redirect(302, "/tags")
}

func (c *TagController) Delete() {
    identity ,error := strconv.Atoi(c.Ctx.Input.Param(":id"))
    if error != nil {
        fmt.Println("Error deleting")
    }    

    tag := &models.Tag{ Id: identity }
    database.DBCon.First(tag);
    database.DBCon.Delete(tag)
    
    c.SetSession("status", "Successfully deleted a tag")
    c.Ctx.Redirect(302, "/tags")
}