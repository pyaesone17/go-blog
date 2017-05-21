package controllers

import (
	"github.com/astaxie/beego"
    "hello/database"
    models "hello/models"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
    var posts []*models.Post
    database.DBCon.Preload("Tags").Find(&posts);

    c.Data["title"] = "Myanmar News"
    c.Data["posts"] = posts
    c.TplName = "blog/index.tpl"
}

