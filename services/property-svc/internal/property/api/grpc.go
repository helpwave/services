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

	switch ftData := req.FieldTypeData.(type) {
	case *pb.CreatePropertyRequest_None:
		none = &ftData.None
	case *pb.CreatePropertyRequest_SelectData_:
		selectData = &models.SelectData{
			AllowFreetext: ftData.SelectData.GetAllowFreetext(),
			SelectOptions: hwutil.Map(ftData.SelectData.Options, func(option *pb.CreatePropertyRequest_SelectData_SelectOption) models.SelectOption {
				var description string
				if option.Description != nil {
					description = *option.Description
				}
				return models.SelectOption{
					//TODO: ID, will be added with #677,
					Name:        option.Name,
					Description: description,
				}
			}),
		}
	default:
		defaultValue := true
		none = &defaultValue
	}

	fieldTypeData := models.FieldTypeData{
		None:       none,
		SelectData: selectData,
	}

	if err := commandsV1.NewCreatePropertyCommandHandler(s.as)(ctx, propertyID, req.GetSubjectType(), req.GetFieldType(), req.GetName(), req.Description, setID, req.AlwaysIncludeForCurrentContext, fieldTypeData); err != nil {
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

	var setID string
	if property.SetID != nil {
		setID = property.SetID.String()
	}

	// TODO: Implement the logic of what value alwaysIncludeForCurrentContext has, depending on the context given from req.context
	// req.context can either be global or a ward_id
	alwaysIncludeForCurrentContext := true

	response := &pb.GetPropertyResponse{
		Id:          property.ID.String(),
		SubjectType: property.SubjectType,
		FieldType:   property.FieldType,

		Name:        property.Name,
		Description: &property.Description,
		IsArchived:  property.IsArchived,

		SetId:                          &setID,
		AlwaysIncludeForCurrentContext: &alwaysIncludeForCurrentContext,
	}

	switch {
	case property.FieldTypeData.SelectData != nil:
		response.FieldTypeData = &pb.GetPropertyResponse_SelectData_{
			SelectData: &pb.GetPropertyResponse_SelectData{
				AllowFreetext: &property.FieldTypeData.SelectData.AllowFreetext,
				Options: hwutil.Map(property.FieldTypeData.SelectData.SelectOptions, func(option models.SelectOption) *pb.GetPropertyResponse_SelectData_SelectOption {
					return &pb.GetPropertyResponse_SelectData_SelectOption{
						// TODO: ID whill be added with #744,
						Name:        option.Name,
						Description: &option.Description,
					}
				}),
			}}
	case property.FieldTypeData.None != nil:
		response.FieldTypeData = &pb.GetPropertyResponse_None{None: *property.FieldTypeData.None}
	}

	return response, nil
}
