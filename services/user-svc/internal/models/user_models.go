package models

import "github.com/google/uuid"

type BaseUser struct {
	Email    string `gorm:"column:email"`
	Avatar   string `gorm:"column:avatar_url"`
	Nickname string `gorm:"column:nickname"`
	Name     string `gorm:"column:name"`
}

type User struct {
	BaseUser
	ID uuid.UUID `gorm:"column:id"`
}
