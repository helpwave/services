package repositories

import (
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type WardRepository struct {
	db *gorm.DB
}

func WardRepo(logCtx context.Context) *WardRepository {
	return &WardRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *WardRepository) GetWardsForOrganizationFullyLoaded(organizationID uuid.UUID) ([]*models.Ward, error) {
	var wards []*models.Ward
	query := r.db.
		Preload("Rooms.Beds.Patient.Tasks").
		Preload("Rooms.Beds.Patient").
		Preload("Rooms.Beds").
		Preload("Rooms").
		Where("organization_id = ?", organizationID).
		Find(&wards)

	if err := query.Error; err != nil {
		return nil, err
	}
	return wards, nil
}

func (r *WardRepository) UpdateWard(wardId uuid.UUID, updates map[string]interface{}) (*models.Ward, error) {
	ward := &models.Ward{ID: wardId}
	query := r.db.
		Model(ward).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return ward, nil
}

func (r *WardRepository) GetWardsByIDs(ids []uuid.UUID) ([]models.Ward, error) {
	var wards []models.Ward

	query := r.db.
		Where("id IN ?", ids).
		Find(&wards)

	if err := query.Error; err != nil {
		return nil, err
	}
	return wards, nil
}

func (r *WardRepository) CountBedsForWards(wardIDs []uuid.UUID) (map[uuid.UUID]int, error) {
	var counts []struct {
		WardID uuid.UUID
		Count  int
	}

	query := r.db.
		Model(&models.Bed{}).
		Joins("JOIN rooms ON beds.room_id = rooms.id").
		Joins("JOIN wards ON rooms.ward_id = wards.id").
		Where("wards.id IN ?", wardIDs).
		Group("wards.id").
		Select("wards.id as ward_id, count(*) as count").
		Scan(&counts)

	if err := query.Error; err != nil {
		return nil, err
	}

	wardCounts := make(map[uuid.UUID]int)

	for _, entry := range counts {
		wardCounts[entry.WardID] = entry.Count
	}

	return wardCounts, nil
}

func (r *WardRepository) CountTasksWithStatusForWards(wardIDs []uuid.UUID) (map[uuid.UUID]map[pb.TaskStatus]int, error) {
	var counts []struct {
		WardID uuid.UUID
		Status pb.TaskStatus
		Count  int
	}

	query := r.db.
		Model(&models.Task{}).
		Joins("JOIN patients ON patients.id = tasks.patient_id").
		Joins("JOIN beds ON beds.id = patients.bed_id").
		Joins("JOIN rooms ON rooms.id = beds.room_id").
		Where("rooms.ward_id IN ?", wardIDs).
		Group("rooms.ward_id, tasks.status").
		Select("rooms.ward_id AS ward_id, tasks.status AS status, COUNT(tasks.id) AS count").
		Scan(&counts)

	if err := query.Error; err != nil {
		return nil, err
	}

	resultsMap := make(map[uuid.UUID]map[pb.TaskStatus]int)

	for _, result := range counts {
		wardID := result.WardID
		status := result.Status
		taskCount := result.Count

		if _, ok := resultsMap[wardID]; !ok {
			resultsMap[wardID] = make(map[pb.TaskStatus]int)
		}
		resultsMap[wardID][status] = taskCount
	}

	return resultsMap, nil
}
