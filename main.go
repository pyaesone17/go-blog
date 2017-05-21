package main

import (
	_ "hello/routers"
	"github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"    
    "github.com/jinzhu/gorm"    
    _ "github.com/go-sql-driver/mysql"
    "github.com/astaxie/beego/context"
    "hello/database"
    "runtime"
    "path"
    "hello/helpers"
)

func init() {
    orm.RegisterDriver("mysql", orm.DRMySQL)
    orm.RegisterDataBase("default", "mysql", "root:245199478@/go?charset=utf8&parseTime=True&loc=Local")
}

func main() {
    _, filename, _, ok := runtime.Caller(0)
    if !ok {
        panic("No caller information")
    }
    helpers.Path  = path.Dir(filename);

    database.DBCon, _ = gorm.Open("mysql", "root:245199478@/go?charset=utf8&parseTime=True&loc=Local")
    defer database.DBCon.Close()    
    var FilterMethod = func(ctx *context.Context) {
        if ctx.Input.Query("_method")!="" && ctx.Input.IsPost(){
            ctx.Request.Method = ctx.Input.Query("_method")
        }
    }
    beego.InsertFilter("*", beego.BeforeRouter, FilterMethod)    
	beego.Run()
}

