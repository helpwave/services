package main

import (
	"common"
	"context"
	"errors"
	"github.com/google/uuid"
	"golang.org/x/crypto/bcrypt"
	"hwgorm"
	"hwutil"
	"logging"
	"user-svc/api"
	"user-svc/models"

	daprcmn "github.com/dapr/go-sdk/service/common"
	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	addr := ":" + hwutil.GetEnvOr("PORT", "8080")
	service := common.NewDaprService(addr)

	common.MustAddServiceInvocationHandler(service, "/v1/create-user", createUser)
	common.MustAddServiceInvocationHandler(service, "/v1/create-organization", createOrganization)

	zlog.Info().Str("addr", addr).Msg("starting dapr service")
	common.MustStartService(service)
}

//
// Handlers
//

func createUser(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("createUser", ctx)

	// Auth
	claims, err := common.GetAuthClaims(ctx, logCtx)
	if err != nil {
		return nil, err
	}

	if claims.User.Role != common.Admin {
		log.Info().Str("user_id", claims.User.ID.String()).Msg("unauthorized access")
		return nil, errors.New("unauthorized")
	}

	// Parse
	request := api.CreateUserRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}

	// Validate
	if request.Organization == uuid.Nil && !request.Admin {
		log.Warn().Msg("Attempt to create non-admin user without organization")
		return nil, errors.New("no organization specified for non-admin user")
	}

	// TODO: additional password complexity enforcement

	hashBytes, err := bcrypt.GenerateFromPassword([]byte(request.Password), bcrypt.DefaultCost)

	if err != nil {
		log.Error().Err(err).Msg("could not calculate bcrypt hash")
		return nil, errors.New("an error occurred while generating the password hash")
	}

	// Insert
	user := models.User{
		UserBase: models.UserBase{
			Email:          request.Email,
			FullName:       request.FullName,
			OrganizationID: request.Organization,
		},
		PwBcrypt: string(hashBytes),
	}

	db := hwgorm.GetDB(logCtx)
	res := db.Create(&user)

	if err := res.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	// Response
	response := api.CreateUserResponseV1{
		UserID: user.ID,
	}

	log.Info().Str("user_id", user.ID.String()).Msg("created user")

	out, err := response.ToContent()
	if err != nil {
		log.Error().Err(err).Msg("could not marshall response")
		return nil, err
	}

	return out, nil
}

func createOrganization(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("createUser", ctx)

	// Auth
	claims, err := common.GetAuthClaims(ctx, logCtx)
	if err != nil {
		return nil, err
	}

	if claims.User.Role != common.Admin {
		log.Info().Str("user_id", claims.User.ID.String()).Msg("unauthorized access")
		return nil, errors.New("unauthorized")
	}

	// Parse
	request := api.CreateOrgRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// Insert
	orga := models.Organization{
		OrganizationBase: models.OrganizationBase{
			LongName:     request.LongName,
			ShortName:    request.ShortName,
			ContactEmail: request.ContactEmail,
		},
	}

	db := hwgorm.GetDB(logCtx)

	res := db.Create(&orga)
	if err := res.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	log.Info().
		Str("user_id", claims.User.ID.String()).
		Str("organization_id", orga.ID.String()).
		Msg("created organization")

	// Response
	response := api.CreateOrgResponseV1{
		OrganizationBase: orga.OrganizationBase,
	}

	out, err := response.ToContent()
	if err != nil {
		log.Error().Err(err).Msg("could not marshall response")
		return nil, err
	}

	return out, nil
}
