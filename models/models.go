package models

import (
    "time"
)

type Post struct {
    Id          int `gorm:"primary_key"`
    CreatedAt   time.Time
    UpdatedAt   time.Time
    DeletedAt   *time.Time
    Title       string
    Content     string
    ImagePath   string
    Tags        []Tag   `gorm:"many2many:post_tags;"`    
}


type Tag struct {
    Id              int `gorm:"primary_key"`
    CreatedAt       time.Time
    UpdatedAt       time.Time
    DeletedAt       *time.Time
    Title           string
    Description     string
}
