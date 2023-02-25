package ward

import "task-svc/api"

type ServiceServer struct {
	api.UnimplementedWardServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

// TODO: Implement CreateWard, GetWard
