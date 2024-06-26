package api

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	"property-svc/internal/property/handlers"
	"property-svc/internal/property/models"
)

type PropertyGrpcService struct {
	pb.UnimplementedPropertyServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewPropertyService(aggregateStore hwes.AggregateStore, handlers *handlers.Handlers) *PropertyGrpcService {
	return &PropertyGrpcService{as: aggregateStore, handlers: handlers}
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

	if err := s.handlers.Commands.V1.CreateProperty(ctx, propertyID, req.GetSubjectType(), req.GetFieldType(), req.GetName(), req.Description, req.SetId, fieldTypeData); err != nil {
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

	property, err := s.handlers.Queries.V1.GetPropertyByID(ctx, id)
	if err != nil {
		return nil, err
	}

	response := &pb.GetPropertyResponse{
		Id:          property.ID.String(),
		SubjectType: property.SubjectType,
		FieldType:   property.FieldType,

		Name:        property.Name,
		Description: &property.Description,
		IsArchived:  property.IsArchived,

		SetId:                      hwutil.NullUUIDToStringPtr(property.SetID),
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
	if err := s.handlers.Commands.V1.UpdateProperty(ctx, propertyID, req.SubjectType, req.Name, req.Description, req.SetId, allowFreetext, upsertOptions, removeOptions, req.IsArchived); err != nil {
		return nil, err
	}

	return &pb.UpdatePropertyResponse{}, nil
}

func (s *PropertyGrpcService) GetPropertiesBySubjectType(ctx context.Context, req *pb.GetPropertiesBySubjectTypeRequest) (*pb.GetPropertiesBySubjectTypeResponse, error) {
	properties, err := s.handlers.Queries.V1.GetPropertiesBySubjectType(ctx, req.SubjectType)
	if err != nil {
		return nil, err
	}

	propertyResponse := make([]*pb.GetPropertiesBySubjectTypeResponse_Property, len(properties))
	for ix, item := range properties {
		propertyResponse[ix] = &pb.GetPropertiesBySubjectTypeResponse_Property{
			Id:            item.ID.String(),
			SubjectType:   item.SubjectType,
			FieldType:     item.FieldType,
			Name:          item.Name,
			Description:   &item.Description,
			IsArchived:    item.IsArchived,
			SetId:         hwutil.NullUUIDToStringPtr(item.SetID),
			FieldTypeData: nil,
		}

		if item.FieldTypeData.SelectData != nil {
			propertyResponse[ix].FieldTypeData = &pb.GetPropertiesBySubjectTypeResponse_Property_SelectData_{
				SelectData: &pb.GetPropertiesBySubjectTypeResponse_Property_SelectData{
					AllowFreetext: &item.FieldTypeData.SelectData.AllowFreetext,
					Options: hwutil.Map(item.FieldTypeData.SelectData.SelectOptions, func(option models.SelectOption) *pb.GetPropertiesBySubjectTypeResponse_Property_SelectData_SelectOption {
						return &pb.GetPropertiesBySubjectTypeResponse_Property_SelectData_SelectOption{
							Id:          option.ID.String(),
							Name:        option.Name,
							Description: option.Description,
							IsCustom:    option.IsCustom,
						}
					}),
				},
			}
		}
	}

	return &pb.GetPropertiesBySubjectTypeResponse{
		Properties: propertyResponse,
	}, nil
}
