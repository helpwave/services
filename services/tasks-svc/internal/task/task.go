package task

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
)

type ServiceServer struct {
	pb.UnimplementedTaskServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}
func newID() uuid.UUID {
	return uuid.New()
}

func (s *ServiceServer) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.CreateTaskResponse, error) {
	id := newID()
	return &pb.CreateTaskResponse{
		Id: id.String(),
	}, nil
}
