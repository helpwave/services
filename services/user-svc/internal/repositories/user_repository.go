package repositories

import (
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"golang.org/x/net/context"
	"gorm.io/gorm"
	"hwgorm"
	"user-svc/internal/models"
)

type UserRepository struct {
	db  *gorm.DB
	ctx context.Context
}

func UserRepo(logCtx context.Context) *UserRepository {
	return &UserRepository{
		db:  hwgorm.GetDB(logCtx),
		ctx: logCtx,
	}
}

func (r *UserRepository) GetUserById(id uuid.UUID) (*models.User, error) {
	user := models.User{ID: id}

	if err := r.db.First(&user).Error; err != nil {
		return nil, err
	}

	return &user, nil
}

func (r *UserRepository) UpdateUser(id uuid.UUID, attr map[string]interface{}) error {
	user := models.User{ID: id}

	if err := r.db.Model(&user).Updates(attr).Error; err != nil {
		return err
	}

	return nil
}

func (r *UserRepository) GenerateDefaultAvatarUrl(userID string) string {
	hash := sha256.Sum256([]byte(userID))
	return fmt.Sprintf("%s%s", "https://source.boringavatars.com/marble/128/", hex.EncodeToString(hash[:]))
}

func (r *UserRepository) CreateUser(user models.User) (*models.User, error) {
	log := zlog.Ctx(r.ctx)

	if err := r.db.Create(&user).Error; err != nil {
		return nil, err
	}

	log.Info().
		Str("userID", user.ID.String()).
		Msg("user created")

	return &user, nil
}
