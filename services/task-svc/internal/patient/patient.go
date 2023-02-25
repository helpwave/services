package patient

import (
	"context"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"task-svc/api"
)

type Base struct {
	HumanReadableIdentifier string `gorm:"column:human_readable_identifier"`
}

type Patient struct {
	Base
	ID uuid.UUID `gorm:"column:id"`
}

type ServiceServer struct {
	api.UnimplementedPatientServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreatePatient(ctx context.Context, req *api.CreatePatientRequest) (*api.CreatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	patient := Patient{
		Base: Base{
			HumanReadableIdentifier: req.HumanReadableIdentifier,
		},
	}

	if err := db.Create(&patient).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Msg("patient created")

	return &api.CreatePatientResponse{
		Id: patient.ID.String(),
	}, nil
}

func (ServiceServer) GetPatient(ctx context.Context, req *api.GetPatientRequest) (*api.GetPatientResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient := Patient{ID: id}
	if err := db.First(&patient).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &api.GetPatientResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
	}, nil
}

func (ServiceServer) UpdatePatient(ctx context.Context, req *api.UpdatePatientRequest) (*api.UpdatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient := Patient{ID: id}
	updates := req.UpdatesMap()

	if err := db.Model(&patient).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &api.UpdatePatientResponse{}, nil
}
