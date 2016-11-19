package main

import (
	_ "hello/routers"
	"github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"
    _ "github.com/go-sql-driver/mysql"
    "github.com/astaxie/beego/context"
)

func init() {
    orm.RegisterDriver("mysql", orm.DRMySQL)
    orm.RegisterDataBase("default", "mysql", "root:245199478@/go?charset=utf8")
}

func main() {
    var FilterMethod = func(ctx *context.Context) {
        if ctx.Input.Query("_method")!="" && ctx.Input.IsPost(){
            ctx.Request.Method = ctx.Input.Query("_method")
        }
    }

    beego.InsertFilter("*", beego.BeforeRouter, FilterMethod)    
	beego.Run()
}

