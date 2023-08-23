package models

import "github.com/google/uuid"

type BaseUser struct {
	Email    string `gorm:"column:email"`
	Nickname string `gorm:"column:nickname"`
	Name     string `gorm:"column:name"`
}

type User struct {
	BaseUser
	ID uuid.UUID `gorm:"column:id"`
}
