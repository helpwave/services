package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	"hwutil"
	commandsV1 "property-svc/internal/property/commands/v1"
	"property-svc/internal/property/models"
	v1queries "property-svc/internal/property/queries/v1"
	"property-svc/repos/property_repo"
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

	var fieldTypeData *models.FieldTypeData
	switch ftData := req.FieldTypeData.(type) {
	case *pb.CreatePropertyRequest_SelectData_:
		fieldTypeData = &models.FieldTypeData{
			SelectData: &models.SelectData{
				AllowFreetext: ftData.SelectData.GetAllowFreetext(),
				SelectOptions: hwutil.Map(ftData.SelectData.Options, func(option *pb.CreatePropertyRequest_SelectData_SelectOption) models.SelectOption {
					var description string
					if option.Description != nil {
						description = *option.Description
					}
					return models.SelectOption{
						ID:          uuid.New(),
						Name:        option.Name,
						Description: &description,
					}
				}),
			},
		}
	}

	if err := commandsV1.NewCreatePropertyCommandHandler(s.as)(ctx, propertyID, req.GetSubjectType(), req.GetFieldType(), req.GetName(), req.Description, req.SetId, fieldTypeData); err != nil {
		return nil, err
	}

	return &pb.CreatePropertyResponse{
		PropertyId: propertyID.String(),
	}, nil
}

func (s *PropertyGrpcService) GetProperty(ctx context.Context, req *pb.GetPropertyRequest) (*pb.GetPropertyResponse, error) {
	propertyRepo := property_repo.New(hwdb.GetDB())

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, err := v1queries.NewGetPropertyByIDQueryHandler(s.as, propertyRepo)(ctx, id)
	if err != nil {
		return nil, err
	}

	setID := hwutil.NullUUIDToStringPtr(property.SetID)

	response := &pb.GetPropertyResponse{
		Id:          property.ID.String(),
		SubjectType: property.SubjectType,
		FieldType:   property.FieldType,

		Name:        property.Name,
		Description: &property.Description,
		IsArchived:  property.IsArchived,

		SetId:                      setID,
		AlwaysIncludeForViewSource: nil, //TODO
		FieldTypeData:              nil,
	}

	switch {
	case property.FieldTypeData.SelectData != nil:
		response.FieldTypeData = &pb.GetPropertyResponse_SelectData_{
			SelectData: &pb.GetPropertyResponse_SelectData{
				AllowFreetext: &property.FieldTypeData.SelectData.AllowFreetext,
				Options: hwutil.Map(property.FieldTypeData.SelectData.SelectOptions, func(option models.SelectOption) *pb.GetPropertyResponse_SelectData_SelectOption {
					return &pb.GetPropertyResponse_SelectData_SelectOption{
						Id:          option.ID.String(),
						Name:        option.Name,
						Description: option.Description,
						IsCustom:    option.IsCustom,
					}
				}),
			}}
	}

	return response, nil
}

func (s *PropertyGrpcService) UpdateProperty(ctx context.Context, req *pb.UpdatePropertyRequest) (*pb.UpdatePropertyResponse, error) {
	propertyID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	var allowFreetext *bool
	var removeOptions []string
	var upsertOptions *[]models.UpdateSelectOption

	switch ftData := req.FieldTypeData.(type) {
	case *pb.UpdatePropertyRequest_SelectData_:
		allowFreetext = ftData.SelectData.AllowFreetext
		removeOptions = ftData.SelectData.RemoveOptions
		if ftData.SelectData.UpsertOptions != nil {
			opt, err := hwutil.MapWithErr(ftData.SelectData.UpsertOptions, func(option *pb.UpdatePropertyRequest_SelectData_SelectOption) (models.UpdateSelectOption, error) {
				id, err := uuid.Parse(option.Id)
				if err != nil {
					return models.UpdateSelectOption{}, err
				}
				return models.UpdateSelectOption{
					ID:          id,
					Name:        option.Name,
					Description: option.Description,
					IsCustom:    option.IsCustom,
				}, nil
			})
			if err != nil {
				return nil, err
			}
			upsertOptions = &opt
		}
	}

	if err := commandsV1.NewUpdatePropertyCommandHandler(s.as)(ctx, propertyID, req.SubjectType, req.FieldType, req.Name, req.Description, req.SetId, allowFreetext, upsertOptions, removeOptions, req.IsArchived); err != nil {
		return nil, err
	}

	return &pb.UpdatePropertyResponse{}, nil
}
