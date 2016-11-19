package models

import (
    "github.com/astaxie/beego/orm"
)

type Post struct {
    Id          int
    Title       string
    Content     string
}

func init() {
    // Need to register model in init
    orm.RegisterModel(new(Post))
}
