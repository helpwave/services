package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	commandsV1 "property-svc/internal/property/commands/v1"
	"property-svc/internal/property/models"
	v1queries "property-svc/internal/property/queries/v1"
)

type PropertyGrpcService struct {
	pb.UnimplementedPropertyServiceServer
	as hwes.AggregateStore
}

func NewPropertyService(aggregateStore hwes.AggregateStore) *PropertyGrpcService {
	return &PropertyGrpcService{as: aggregateStore}
}

func (s *PropertyGrpcService) CreateProperty(ctx context.Context, req *pb.CreatePropertyRequest) (*pb.CreatePropertyResponse, error) {
	propertyID := uuid.New()

	var setID *uuid.UUID
	if req.SetId != nil {
		id, err := uuid.Parse(req.GetSetId())
		if err != nil {
			return nil, err
		}
		setID = &id
	}

	var none *bool
	var selectData *models.SelectData
	switch req.FieldTypeData.(type) {
	case *pb.CreatePropertyRequest_None:
		val := req.GetNone()
		none = &val
	case *pb.CreatePropertyRequest_SelectData_:
		val := req.GetSelectData()
		if val != nil {
			selectData = &models.SelectData{
				AllowFreetext: val.GetAllowFreetext(),
				SelectOptions: hwutil.Map(val.Options, func(option *pb.CreatePropertyRequest_SelectData_SelectOption) models.SelectOption {
					return models.SelectOption{
						Name:        option.Name,
						Description: *option.Description,
					}
				}),
			}
		}
	}

	fieldTypeData := models.FieldTypeData{
		None:       none,
		SelectData: selectData,
	}

	if err := commandsV1.NewCreatePropertyCommandHandler(s.as)(ctx, propertyID, req.GetContext(), req.GetSubjectType(), req.GetFieldType(), req.GetName(), req.Description, setID, req.AlwaysIncludeForCurrentContext, fieldTypeData); err != nil {
		return nil, err
	}

	return &pb.CreatePropertyResponse{
		PropertyId: propertyID.String(),
	}, nil
}

func (s *PropertyGrpcService) GetProperty(ctx context.Context, req *pb.GetPropertyRequest) (*pb.GetPropertyResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, err := v1queries.NewGetPropertyByIDQueryHandler(s.as)(ctx, id)
	if err != nil {
		return nil, err
	}

	return &pb.GetPropertyResponse{
		Id:          property.ID.String(),
		Name:        property.Name,
		FieldType:   property.FieldType,
		Description: &property.Description,
	}, nil
}
