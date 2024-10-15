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

func (s *PropertyGrpcService) CreateProperty(
	ctx context.Context,
	req *pb.CreatePropertyRequest,
) (*pb.CreatePropertyResponse, error) {
	propertyID := uuid.New()

	var fieldTypeData *models.FieldTypeData
	if ftData, ok := req.FieldTypeData.(*pb.CreatePropertyRequest_SelectData_); ok {
		fieldTypeData = &models.FieldTypeData{
			SelectData: &models.SelectData{
				AllowFreetext: ftData.SelectData.GetAllowFreetext(),
				SelectOptions: hwutil.Map(
					ftData.SelectData.Options,
					func(option *pb.CreatePropertyRequest_SelectData_SelectOption) models.SelectOption {
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

	consistency, err := s.handlers.Commands.V1.CreateProperty(
		ctx,
		propertyID,
		req.GetSubjectType(),
		req.GetFieldType(),
		req.GetName(),
		req.Description,
		req.SetId,
		fieldTypeData,
	)

	if err != nil {
		return nil, err
	}

	return &pb.CreatePropertyResponse{
		PropertyId:  propertyID.String(),
		Consistency: consistency.String(),
	}, nil
}

func (s *PropertyGrpcService) GetProperty(
	ctx context.Context,
	req *pb.GetPropertyRequest,
) (*pb.GetPropertyResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, consistency, err := s.handlers.Queries.V1.GetPropertyByID(ctx, id)
	if err != nil {
		return nil, err
	}

	var alwaysIncludeForViewSource *bool = nil

	if req.GetViewSource() != nil {
		isAlwaysIncluded, err := s.handlers.Queries.V1.
			IsPropertyAlwaysIncludedForViewSource(ctx, req.GetViewSource(), property.SubjectType, property.ID)
		if err != nil {
			return nil, err
		}
		alwaysIncludeForViewSource = &isAlwaysIncluded
	}

	response := &pb.GetPropertyResponse{
		Id:          property.ID.String(),
		SubjectType: property.SubjectType,
		FieldType:   property.FieldType,

		Name:        property.Name,
		Description: hwutil.StrPtr(property.Description),
		IsArchived:  property.IsArchived,

		SetId:                      hwutil.NullUUIDToStringPtr(property.SetID),
		AlwaysIncludeForViewSource: alwaysIncludeForViewSource,
		FieldTypeData:              nil, // set below
		Consistency:                consistency.String(),
	}

	if property.FieldTypeData.SelectData != nil {
		response.FieldTypeData = &pb.GetPropertyResponse_SelectData_{
			SelectData: &pb.GetPropertyResponse_SelectData{
				AllowFreetext: &property.FieldTypeData.SelectData.AllowFreetext,
				Options: hwutil.Map(
					property.FieldTypeData.SelectData.SelectOptions,
					func(option models.SelectOption) *pb.GetPropertyResponse_SelectData_SelectOption {
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

func (s *PropertyGrpcService) UpdateProperty(
	ctx context.Context,
	req *pb.UpdatePropertyRequest,
) (*pb.UpdatePropertyResponse, error) {
	propertyID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	var allowFreetext *bool
	var removeOptions []string
	var upsertOptions *[]models.UpdateSelectOption

	if ftData, ok := req.FieldTypeData.(*pb.UpdatePropertyRequest_SelectData_); ok {
		allowFreetext = ftData.SelectData.AllowFreetext
		removeOptions = ftData.SelectData.RemoveOptions
		if ftData.SelectData.UpsertOptions != nil {
			opt, err := hwutil.MapWithErr(
				ftData.SelectData.UpsertOptions,
				func(option *pb.UpdatePropertyRequest_SelectData_SelectOption) (models.UpdateSelectOption, error) {
					var id uuid.UUID
					if option.Id == "" {
						id = uuid.New()
					} else {
						id, err = uuid.Parse(option.Id)
						if err != nil {
							return models.UpdateSelectOption{}, err
						}
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

	consistency, err := s.handlers.Commands.V1.UpdateProperty(
		ctx,
		propertyID,
		req.SubjectType,
		req.Name,
		req.Description,
		req.SetId,
		allowFreetext,
		upsertOptions,
		removeOptions,
		req.IsArchived,
	)
	if err != nil {
		return nil, err
	}

	return &pb.UpdatePropertyResponse{
		Consistency: consistency.String(),
	}, nil
}

func (s *PropertyGrpcService) GetProperties(
	ctx context.Context,
	req *pb.GetPropertiesRequest,
) (*pb.GetPropertiesResponse, error) {
	properties, err := s.handlers.Queries.V1.GetProperties(ctx, req.SubjectType)
	if err != nil {
		return nil, err
	}

	propertyResponse := make([]*pb.GetPropertiesResponse_Property, len(properties))
	for ix, item := range properties {
		propertyResponse[ix] = &pb.GetPropertiesResponse_Property{
			Id:            item.ID.String(),
			SubjectType:   item.SubjectType,
			FieldType:     item.FieldType,
			Name:          item.Name,
			Description:   &item.Description,
			IsArchived:    item.IsArchived,
			SetId:         hwutil.NullUUIDToStringPtr(item.SetID),
			FieldTypeData: nil,
			Consistency:   item.Consistency,
		}

		if item.FieldTypeData.SelectData != nil {
			propertyResponse[ix].FieldTypeData = &pb.GetPropertiesResponse_Property_SelectData_{
				SelectData: &pb.GetPropertiesResponse_Property_SelectData{
					AllowFreetext: &item.FieldTypeData.SelectData.AllowFreetext,
					Options: hwutil.Map(
						item.FieldTypeData.SelectData.SelectOptions,
						func(option models.SelectOption) *pb.GetPropertiesResponse_Property_SelectData_SelectOption {
							return &pb.GetPropertiesResponse_Property_SelectData_SelectOption{
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

	return &pb.GetPropertiesResponse{
		Properties: propertyResponse,
	}, nil
}
