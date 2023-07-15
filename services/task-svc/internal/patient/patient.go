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
	pbhelpers "proto_helpers/task_svc/v1"
	patientModels "task-svc/internal/patient/models"
	roomModels "task-svc/internal/room/models"
	intTask "task-svc/internal/task"
	taskModels "task-svc/internal/task/models"
)

// GetPatientsByWardForOrganization
// TODO: Move into repository
func GetPatientsByWardForOrganization(ctx context.Context, wardID uuid.UUID) ([]patientModels.Patient, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var patients []patientModels.Patient
	if err := db.
		Table("patients").
		Joins("JOIN beds ON beds.id = patients.bed_id").
		Joins("JOIN rooms ON rooms.id = beds.room_id").
		Where("rooms.ward_id = ? AND rooms.organization_id = ?", wardID, organizationID).
		Find(&patients).
		Error; err != nil {
		return nil, err
	}

	return patients, nil
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

	patient := patientModels.Patient{
		Base: patientModels.Base{
			HumanReadableIdentifier: req.HumanReadableIdentifier,
			Notes:                   req.Notes,
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

	patient := patientModels.Patient{ID: id}
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
		BedId:                   hwutil.UUIDToStringPtr(patient.BedID),
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

	patient := patientModels.Patient{}
	if err := db.Where("bed_id = ?", bedID).First(&patient).Error; err != nil {
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
		BedId:                   &req.BedId,
	}, nil
}

func (ServiceServer) GetPatientsByWard(ctx context.Context, req *pb.GetPatientsByWardRequest) (*pb.GetPatientsByWardResponse, error) {
	// TODO: Auth

	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patients, err := GetPatientsByWardForOrganization(ctx, wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetPatientsByWardResponse{
		Patients: hwutil.Map(patients, func(patient patientModels.Patient) *pb.GetPatientsByWardResponse_Patient {
			return &pb.GetPatientsByWardResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
				Notes:                   patient.Notes,
				BedId:                   hwutil.UUIDToStringPtr(patient.BedID),
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

	patient := patientModels.Patient{ID: id}
	updates := pbhelpers.UpdatesMapForUpdatePatientRequest(req)

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

	// Check whether bed exits
	bed := roomModels.Bed{ID: bedID}
	if err := db.First(&bed).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "bed_id not found")
		}
	}

	patient := patientModels.Patient{ID: id}
	if err := db.Model(&patient).Update("bed_id", bed.ID).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patient id not found")
		}
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Str("bedId", bed.ID.String()).
		Msg("assigned bed to patient")

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

	patient := patientModels.Patient{ID: id}
	if err := db.Model(&patient).Update("bed_id", nil).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Msg("unassigned bed from patient")

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

	updates := map[string]interface{}{
		"bed_id":        nil,
		"is_discharged": 1,
	}
	// Unassign Patient from bed and set to discharged
	if err := db.Model(&patientModels.Patient{ID: id}).Updates(updates).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	log.Info().
		Str("patientId", id.String()).
		Msg("patient discharged")

	return &pb.DischargePatientResponse{}, nil
}

func (ServiceServer) GetPatientDetails(ctx context.Context, req *pb.GetPatientDetailsRequest) (*pb.GetPatientDetailsResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient := patientModels.Patient{ID: id}
	if err := db.First(&patient).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	tasks, err := intTask.GetTasksByPatient(ctx, patient.ID)
	if err != nil {
		return nil, err
	}

	var mappedTasks = hwutil.Map(tasks, func(task taskModels.Task) *pb.GetPatientDetailsResponse_Task {
		var mappedSubtasks = hwutil.Map(task.Subtasks, func(subtask taskModels.Subtask) *pb.GetPatientDetailsResponse_Task_SubTask {
			return &pb.GetPatientDetailsResponse_Task_SubTask{
				Id:   subtask.ID.String(),
				Done: subtask.Done,
				Name: subtask.Name,
			}
		})
		return &pb.GetPatientDetailsResponse_Task{
			Id:             task.ID.String(),
			Name:           task.Name,
			Description:    task.Description,
			Status:         pb.GetPatientDetailsResponse_TaskStatus(task.Status),
			AssignedUserId: task.AssignedUserId.UUID.String(),
			PatientId:      task.PatientId.String(),
			Subtasks:       mappedSubtasks,
			Public:         task.Public,
		}
	})

	return &pb.GetPatientDetailsResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		Name:                    patient.HumanReadableIdentifier, // TODO replace later
		Tasks:                   mappedTasks,
	}, nil
}
