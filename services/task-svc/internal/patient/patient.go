package patient

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
)

type Base struct {
	HumanReadableIdentifier string `gorm:"column:human_readable_identifier"`
}

type Patient struct {
	Base
	ID             uuid.UUID `gorm:"column:id"`
	Notes          string    `gorm:"column:notes"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
}

type ServiceServer struct {
	pb.UnimplementedPatientServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreatePatient(ctx context.Context, req *pb.CreatePatientRequest) (*pb.CreatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	patient := Patient{
		Base: Base{
			HumanReadableIdentifier: req.HumanReadableIdentifier,
		},
		OrganizationID: organizationID,
	}

	if err := db.Create(&patient).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Msg("patient created")

	return &pb.CreatePatientResponse{
		Id: patient.ID.String(),
	}, nil
}

func (ServiceServer) GetPatient(ctx context.Context, req *pb.GetPatientRequest) (*pb.GetPatientResponse, error) {
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

	return &pb.GetPatientResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
	}, nil
}

func (ServiceServer) GetPatientByBed(ctx context.Context, req *pb.GetPatientByBedRequest) (*pb.GetPatientByBedResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient := Patient{}
	if err := db.Joins("beds").Joins("patients").Where("beds.id = ?", bedID).First(&patient).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetPatientByBedResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
	}, nil
}

func (ServiceServer) GetPatientsByWard(ctx context.Context, req *pb.GetPatientsByWardRequest) (*pb.GetPatientsByWardResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var patients []Patient
	if err := db.Joins("wards").Joins("rooms").Joins("beds").Joins("patients").Where("wards.id = ?", wardID).Find(&patients).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetPatientsByWardResponse{
		Patients: hwutil.Map(patients, func(patient Patient) *pb.GetPatientsByWardResponse_Patient {
			return &pb.GetPatientsByWardResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
				Notes:                   patient.Notes,
			}
		}),
	}, nil
}

func (ServiceServer) UpdatePatient(ctx context.Context, req *pb.UpdatePatientRequest) (*pb.UpdatePatientResponse, error) {
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

	return &pb.UpdatePatientResponse{}, nil
}

func (ServiceServer) AssignBed(ctx context.Context, req *pb.AssignBedRequest) (*pb.AssignBedResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check whether patient exits
	patient := Patient{ID: id}
	if err := db.Model(&patient).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	if err := db.Joins("beds").Where("id = ?", bedID).Update("patient_id", id).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.AssignBedResponse{}, nil
}

func (ServiceServer) UnassignBed(ctx context.Context, req *pb.UnassignBedRequest) (*pb.UnassignBedResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := db.Joins("beds").Joins("patients").Where("patients.id = ?", id).Update("beds.patient_id", nil).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.UnassignBedResponse{}, nil
}

func (ServiceServer) DischargePatient(ctx context.Context, req *pb.DischargePatientRequest) (*pb.DischargePatientResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Unassign Patient from bed
	if err := db.Joins("beds").Joins("patients").Where("patients.id = ?", id).Update("beds.patient_id", nil).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.DischargePatientResponse{}, nil
}
