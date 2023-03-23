package main

import (
	"common"
	"context"
	"github.com/Nerzal/gocloak/v12"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
	"hwutil"
	"logging"
	"strconv"
	"time"

	events "gen/proto/libs/events"
	pb "gen/proto/services/user-svc"
	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
	daprd "github.com/dapr/go-sdk/service/grpc"
	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

// set in prepareGocloakClient
var gocloakClient *gocloak.GoCloak
var realm string

func main() {
	common.Setup(ServiceName, Version, true)

	prepareGocloakClient()

	addr := ":" + hwutil.GetEnvOr("PORT", "8080")
	common.StartNewGRPCServer(addr, func(server *daprd.Server) {
		common.MustAddTopicEventHandler(server, SubUserCreated, OnUserCreated)
		pb.RegisterUserServiceServer(server.GrpcServer(), &userServiceServer{})
	})
}

// use getServiceAccountToken instead
var lastToken *gocloak.JWT = nil
var lastTokenExp time.Time

// getServiceAccountToken returns a valid token, or errors trying, do not modify it
func getServiceAccountToken(logCtx context.Context) (*gocloak.JWT, error) {
	if lastToken != nil && lastTokenExp.After(time.Now().Add(10*time.Second)) {
		return lastToken, nil
	}

	ctx := context.Background()
	clientID := hwutil.MustGetEnv("CLIENT_ID")
	clientSecret := hwutil.MustGetEnv("CLIENT_SECRET")
	token, err := gocloakClient.LoginClient(ctx, clientID, clientSecret, realm)
	if err == nil {
		lastToken = token
		lastTokenExp = hwutil.TimeInNSeconds(token.ExpiresIn)
		zlog.Ctx(logCtx).Info().Msgf("obtained new token, expires %s", lastTokenExp)
	}
	return token, err
}

func prepareGocloakClient() {
	realm = common.KeycloakRealm()
	gocloakClient = gocloak.NewClient(common.KeycloakBaseURL())

	token, err := getServiceAccountToken(context.Background())

	if err != nil {
		zlog.Fatal().Err(err).Send()
	}

	zlog.Info().Msg("obtained initial access token for service account")
	zlog.Trace().Msgf("%+v", token)
}

type userServiceServer struct {
	pb.UnimplementedUserServiceServer
}

func (userServiceServer) CreateUser(ctx context.Context, request *pb.CreateUserRequest) (*pb.CreateUserResponse, error) {
	log := zlog.Ctx(ctx)

	daprClient, err := daprc.NewClient()
	if err != nil {
		log.Error().Err(err).Msg("could not create daprClient")
		return nil, status.Error(codes.Internal, "Internal: "+err.Error())
	}

	// new user's Password
	credentials := []gocloak.CredentialRepresentation{{
		Temporary: gocloak.BoolP(false),
		Type:      gocloak.StringP("password"),
		Value:     gocloak.StringP(request.Password),
	}}

	// new user
	user := gocloak.User{
		// as per ADR-004 we use the convention kc.firstName = nickname and kc.lastName = fullName
		FirstName:   gocloak.StringP(request.Nickname),
		LastName:    gocloak.StringP(request.FullName),
		Email:       gocloak.StringP(request.Email),
		Enabled:     gocloak.BoolP(true),
		Username:    gocloak.StringP(request.Email),
		Credentials: &credentials,
	}

	// Client AuthN
	token, err := getServiceAccountToken(ctx)
	if err != nil {
		log.Error().Err(err).Msg("could not refresh service token!")
		return nil, status.Error(codes.Internal, err.Error())
	}

	kcCtx := context.Background()

	userID, err := gocloakClient.CreateUser(kcCtx, token.AccessToken, realm, user)
	if err != nil {
		log.Warn().Err(err).Msg("could not create new user")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	} else {
		log.Info().Str("userID", userID).Msg("created new user")
	}

	_ = common.PublishMessage(ctx, daprClient, "pubsub", "USER_CREATED", &events.UserCreatedEvent{
		Id:       userID,
		Email:    *user.Email,
		Nickname: *user.FirstName,
		FullName: *user.LastName,
	})

	return &pb.CreateUserResponse{UserID: userID}, nil
}

func (userServiceServer) CreateOrganization(ctx context.Context, request *pb.CreateOrgRequest) (*pb.CreateOrgResponse, error) {
	// User AuthN
	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	userID := claims.Sub

	return createOrganization(ctx, request, userID, false)
}

type OrganizationAttributes struct {
	LongName     *string
	ShortName    *string
	ContactEmail *string
	IsPersonal   *bool
}

func (a *OrganizationAttributes) toMap() *map[string][]string {
	m := make(map[string][]string)
	m["type"] = []string{"organization"}

	if a.LongName != nil {
		m["long_name"] = []string{*a.LongName}
	}
	if a.ShortName != nil {
		m["short_name"] = []string{*a.ShortName}
	}
	if a.ContactEmail != nil {
		m["contact_email"] = []string{*a.ContactEmail}
	}
	if a.IsPersonal != nil {
		m["is_personal"] = []string{strconv.FormatBool(*a.IsPersonal)}
	}
	return &m
}

//nolint:golint,unused
func (a *OrganizationAttributes) fromMap(m map[string][]string) {
	if arr := m["long_name"]; len(arr) == 1 {
		a.LongName = &arr[0]
	}
	if arr := m["short_name"]; len(arr) == 1 {
		a.ShortName = &arr[0]
	}
	if arr := m["contact_email"]; len(arr) == 1 {
		a.ContactEmail = &arr[0]
	}
	if arr := m["is_personal"]; len(arr) == 1 {
		if b, err := strconv.ParseBool(arr[0]); err == nil {
			a.IsPersonal = &b
		}
	}
}

// createOrganization creates a new organization on behalf of a user
// it does so by creating a new keycloak group for the organization.
// The group also has a subgroup for admins, where the requesting user is added to
func createOrganization(logCtx context.Context, request *pb.CreateOrgRequest, userID string, isPersonal bool) (*pb.CreateOrgResponse, error) {
	log := zlog.Ctx(logCtx)

	// Client AuthN
	token, err := getServiceAccountToken(logCtx)
	if err != nil {
		log.Error().Err(err).Msg("could not refresh service token!")
		return nil, status.Error(codes.Internal, err.Error())
	}

	// data about the organization
	attributes := OrganizationAttributes{
		LongName:     &request.LongName,
		ContactEmail: &request.ContactEmail,
		IsPersonal:   &isPersonal,
	}

	if request.ShortName != "" {
		attributes.ShortName = &request.ShortName
	}

	// group for the organization
	group := gocloak.Group{
		Name:       gocloak.StringP("org-" + request.LongName + "-" + hwutil.RandomString(5)),
		Attributes: attributes.toMap(),
	}

	kcCtx := context.Background()

	groupID, err := gocloakClient.CreateGroup(kcCtx, token.AccessToken, realm, group)
	if err != nil {
		log.
			Warn().
			Err(err).
			Str("group", logging.Formatted(group)).
			Str("userID", userID).
			Msg("could not create group")
		return nil, status.Error(codes.Internal, err.Error())
	} else {
		log.Info().Str("userID", userID).Str("groupID", groupID).Msg("created new organization")
	}

	// admin subgroup
	adminGroup := gocloak.Group{
		Name: gocloak.StringP("admins"),
	}

	adminGroupID, err := gocloakClient.CreateChildGroup(kcCtx, token.AccessToken, realm, groupID, adminGroup)
	errMsg := "could not create admin subgroup"

	if err == nil {
		log.Info().Str("adminGroupID", adminGroupID).Str("groupID", groupID).Msg("created admin subgroup")

		err = gocloakClient.AddUserToGroup(kcCtx, token.AccessToken, realm, userID, adminGroupID)
		errMsg = "could not add user to admins"
	}

	if err == nil {
		log.Debug().Str("adminGroupID", adminGroupID).Str("userID", userID).Msg("added user to admins")
	}

	if err != nil {
		log.Error().
			Err(err).
			Str("groupID", groupID).
			Str("userID", userID).
			Msg(errMsg)

		if err := gocloakClient.DeleteGroup(kcCtx, token.AccessToken, realm, groupID); err != nil {
			log.Error().
				Err(err).
				Str("groupID", groupID).
				Str("userID", userID).
				Msg("could not recover and delete new group")
		} else {
			log.Info().
				Str("groupID", groupID).
				Str("userID", userID).
				Msg("removed new group again")
		}
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	return &pb.CreateOrgResponse{
		Id:           groupID,
		LongName:     *attributes.LongName,
		ShortName:    hwutil.DerefStringOrEmpty(attributes.ShortName),
		ContactEmail: *attributes.ContactEmail,
		IsPersonal:   *attributes.IsPersonal,
	}, nil
}

var SubUserCreated = &daprcmn.Subscription{
	PubsubName: "pubsub",
	Topic:      "USER_CREATED",
	Route:      "/pubsub/user_created/v1",
}

func OnUserCreated(ctx context.Context, e *daprcmn.TopicEvent) (retry bool, err error) {
	log := zlog.Ctx(ctx)

	var user events.UserCreatedEvent
	if err := proto.Unmarshal(e.RawData, &user); err != nil {
		log.Error().Err(err).Msg("could not convert USER_CREATED event data to CreateUserEvent")
		return false, err
	}

	_, err = createOrganization(ctx, &pb.CreateOrgRequest{
		LongName:     "Your Personal Organization",
		ContactEmail: user.Email,
	}, user.Id, true)

	if err != nil {
		log.Error().Str("userID", user.Id).Err(err).Msg("could not create personal organization")
		return true, err
	}

	return false, nil
}
