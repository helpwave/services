package user

import (
	pb "gen/proto/services/user_svc/v1"
)

// TODO: The whole user service needs to be re-implemented against the Ory API

type ServiceServer struct {
	pb.UnimplementedUserServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

// TODO: Re-Implement CreateUser & UpdateUser
