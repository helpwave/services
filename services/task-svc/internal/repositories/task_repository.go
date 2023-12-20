package repositories

import (
	"context"
	"gorm.io/gorm"
	"hwgorm"
)

type TaskRepository struct {
	db *gorm.DB
}

func TaskRepo(ctx context.Context) TaskRepository {
	return TaskRepository{
		db: hwgorm.GetDB(ctx),
	}
}
