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
	Id uuid.UUID `gorm:"column:id"`
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

	result := db.Create(&patient)
	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("patientId", patient.Id.String()).
		Msg("patient created")

	return &api.CreatePatientResponse{
		Id: patient.Id.String(),
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

	patient := Patient{Id: id}
	result := db.First(&patient)
	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &api.GetPatientResponse{
		Id:                      patient.Id.String(),
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

	patient := Patient{Id: id}
	updates := req.UpdatesMap()

	if err := db.Model(&patient).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &api.UpdatePatientResponse{}, nil
}
