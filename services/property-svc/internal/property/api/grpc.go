package api

import (
	"common"
	"context"
	"fmt"
	commonpb "gen/libs/common/v1"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"hwes"
	"hwutil"
	"property-svc/internal/property/handlers"
	"property-svc/internal/property/models"
	"property-svc/util"
	"slices"
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

func (s *PropertyGrpcService) GetProperty(ctx context.Context, req *pb.GetPropertyRequest) (*pb.GetPropertyResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, consistency, err := s.handlers.Queries.V1.GetPropertyByID(ctx, id)
	if err != nil {
		return nil, err
	}

	var alwaysIncludeForViewSource *bool = nil

	if req.ViewSource != nil {
		isAlwaysIncluded, err := s.handlers.Queries.V1.IsPropertyAlwaysIncludedForViewSource(ctx, req.ViewSource, property.SubjectType, property.ID)
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

	expConsistency, ok := common.ParseConsistency(req.Consistency)
	if !ok {
		return nil, common.UnparsableConsistencyError(ctx, "consistency")
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

	var consistency common.ConsistencyToken

	for i := 0; true; i++ {
		if i > 10 {
			log.Warn().Msg("UpdatePatient: conflict circuit breaker triggered")
			return nil, fmt.Errorf("failed conflict resolution")
		}

		c, conflict, err := s.handlers.Commands.V1.UpdateProperty(
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
			expConsistency,
		)
		if err != nil {
			return nil, err
		}
		consistency = c
		if conflict == nil {
			break
		}

		conflicts := make(map[string]*commonpb.AttributeConflict)

		// TODO: find a generic approach
		subjTypeUpdateRequested := req.SubjectType != nil && *req.SubjectType != conflict.Is.SubjectType
		subjTypeAlreadyUpdated := conflict.Was.SubjectType != conflict.Is.SubjectType
		if subjTypeUpdateRequested && subjTypeAlreadyUpdated {
			conflicts["subject_type"], err = util.AttributeConflict(
				wrapperspb.Int32(int32(conflict.Is.SubjectType.Number())),
				wrapperspb.Int32(int32(req.SubjectType.Number())),
			)
			if err != nil {
				return nil, err
			}
		}

		nameUpdateRequested := req.Name != nil && *req.Name != conflict.Is.Name
		nameAlreadyUpdated := conflict.Was.Name != conflict.Is.Name
		if nameUpdateRequested && nameAlreadyUpdated {
			conflicts["name"], err = util.AttributeConflict(
				wrapperspb.String(conflict.Is.Name),
				wrapperspb.String(*req.Name),
			)
			if err != nil {
				return nil, err
			}
		}
		descrUpdateRequested := req.Description != nil && *req.Description != conflict.Is.Description
		descrAlreadyUpdated := conflict.Was.Description != conflict.Is.Description
		if descrUpdateRequested && descrAlreadyUpdated {
			conflicts["description"], err = util.AttributeConflict(
				wrapperspb.String(conflict.Is.Description),
				wrapperspb.String(*req.Description),
			)
			if err != nil {
				return nil, err
			}
		}
		setIdUpdateRequested := req.SetId != nil && *req.SetId != conflict.Is.SetID.UUID.String()
		setIdAlreadyUpdated := conflict.Was.SetID != conflict.Is.SetID
		if setIdUpdateRequested && setIdAlreadyUpdated {
			var is proto.Message
			if conflict.Is.SetID.Valid {
				is = wrapperspb.String(conflict.Is.SetID.UUID.String())
			}

			conflicts["set_id"], err = util.AttributeConflict(
				is,
				wrapperspb.String(*req.SetId),
			)
			if err != nil {
				return nil, err
			}
		}

		fTDUpdateRequested := req.FieldTypeData != nil && req.GetSelectData() != nil // currently only select data is possible
		if fTDUpdateRequested {
			sd := req.GetSelectData()

			// boolean can not cause conflicts

			// removal can not cause conflicts

			// upsert can only cause conflicts if update (not insert)

			// nothing to check in the first place
			if conflict.Is.FieldTypeData.SelectData == nil || len(conflict.Is.FieldTypeData.SelectData.SelectOptions) == 0 {
				continue
			}

			for _, upsertedOption := range sd.UpsertOptions {
				if upsertedOption.Id == "" {
					continue
				}

				optionsWas := conflict.Was.FieldTypeData.SelectData.SelectOptions
				optionsIs := conflict.Is.FieldTypeData.SelectData.SelectOptions

				searchFn := func(option models.SelectOption) bool {
					return option.ID.String() == upsertedOption.Id
				}

				// upsert is update, check if it was updated between WAS and IS
				wasIx := slices.IndexFunc(optionsWas, searchFn)
				if wasIx < 0 {
					msg := "The option '%s' you attempted to update did not exist" +
						" at the state the provided consistency points to. " +
						"You likely provided an incorrect consistency token."
					return nil, status.Errorf(codes.InvalidArgument, msg, upsertedOption.Id)
				}
				wasOpt := optionsWas[wasIx]

				isIx := slices.IndexFunc(optionsIs, searchFn)
				if isIx < 0 {
					// option was removed since, update will be ignored or cause an error, but will not cause a conflict
					continue
				}
				isOpt := optionsIs[isIx]

				optNameUpdateRequested := upsertedOption.Name != nil && *upsertedOption.Name != isOpt.Name
				optnameAlreadyUpdated := wasOpt.Name != isOpt.Name
				if optNameUpdateRequested && optnameAlreadyUpdated {
					conflicts["select_data.upsert_options."+upsertedOption.Id+".name"], err = util.AttributeConflict(
						wrapperspb.String(isOpt.Name),
						wrapperspb.String(*upsertedOption.Name),
					)
					if err != nil {
						return nil, err
					}
				}
				optDescUpdateRequested := upsertedOption.Description != nil && (isOpt.Description == nil || *upsertedOption.Description != *isOpt.Description)

				optDescAlreadyUpdated := func() bool {
					if wasOpt.Description != nil && isOpt.Description != nil {
						return *wasOpt.Description != *isOpt.Description
					}

					return !(wasOpt.Description == nil && isOpt.Description == nil)
				}

				if optDescUpdateRequested && optDescAlreadyUpdated() {
					conflicts["select_data.upsert_options."+upsertedOption.Id+".description"], err = util.AttributeConflict(
						wrapperspb.String(*isOpt.Description),
						wrapperspb.String(*upsertedOption.Description),
					)
					if err != nil {
						return nil, err
					}
				}
			}
		}

		if len(conflicts) != 0 {
			return &pb.UpdatePropertyResponse{
				Conflict:    &commonpb.Conflict{ConflictingAttributes: conflicts},
				Consistency: c.String(),
			}, nil
		}

		// no conflict? retry with new consistency
		expConsistency = &c
	}

	return &pb.UpdatePropertyResponse{
		Consistency: consistency.String(),
	}, nil
}

func (s *PropertyGrpcService) GetProperties(ctx context.Context, req *pb.GetPropertiesRequest) (*pb.GetPropertiesResponse, error) {
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
					Options: hwutil.Map(item.FieldTypeData.SelectData.SelectOptions, func(option models.SelectOption) *pb.GetPropertiesResponse_Property_SelectData_SelectOption {
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
