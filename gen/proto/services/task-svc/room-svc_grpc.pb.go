// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             (unknown)
// source: proto/services/task-svc/room-svc.proto

package task_svc

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	RoomService_CreateRoom_FullMethodName    = "/RoomService/CreateRoom"
	RoomService_GetRoom_FullMethodName       = "/RoomService/GetRoom"
	RoomService_UpdateRoom_FullMethodName    = "/RoomService/UpdateRoom"
	RoomService_AddBedsToRoom_FullMethodName = "/RoomService/AddBedsToRoom"
)

// RoomServiceClient is the client API for RoomService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type RoomServiceClient interface {
	CreateRoom(ctx context.Context, in *CreateRoomRequest, opts ...grpc.CallOption) (*CreateRoomResponse, error)
	GetRoom(ctx context.Context, in *GetRoomRequest, opts ...grpc.CallOption) (*GetRoomResponse, error)
	UpdateRoom(ctx context.Context, in *UpdateRoomRequest, opts ...grpc.CallOption) (*UpdateRoomResponse, error)
	AddBedsToRoom(ctx context.Context, in *AddBedsToRoomRequest, opts ...grpc.CallOption) (*AddBedsToRoomResponse, error)
}

type roomServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewRoomServiceClient(cc grpc.ClientConnInterface) RoomServiceClient {
	return &roomServiceClient{cc}
}

func (c *roomServiceClient) CreateRoom(ctx context.Context, in *CreateRoomRequest, opts ...grpc.CallOption) (*CreateRoomResponse, error) {
	out := new(CreateRoomResponse)
	err := c.cc.Invoke(ctx, RoomService_CreateRoom_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *roomServiceClient) GetRoom(ctx context.Context, in *GetRoomRequest, opts ...grpc.CallOption) (*GetRoomResponse, error) {
	out := new(GetRoomResponse)
	err := c.cc.Invoke(ctx, RoomService_GetRoom_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *roomServiceClient) UpdateRoom(ctx context.Context, in *UpdateRoomRequest, opts ...grpc.CallOption) (*UpdateRoomResponse, error) {
	out := new(UpdateRoomResponse)
	err := c.cc.Invoke(ctx, RoomService_UpdateRoom_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *roomServiceClient) AddBedsToRoom(ctx context.Context, in *AddBedsToRoomRequest, opts ...grpc.CallOption) (*AddBedsToRoomResponse, error) {
	out := new(AddBedsToRoomResponse)
	err := c.cc.Invoke(ctx, RoomService_AddBedsToRoom_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// RoomServiceServer is the server API for RoomService service.
// All implementations must embed UnimplementedRoomServiceServer
// for forward compatibility
type RoomServiceServer interface {
	CreateRoom(context.Context, *CreateRoomRequest) (*CreateRoomResponse, error)
	GetRoom(context.Context, *GetRoomRequest) (*GetRoomResponse, error)
	UpdateRoom(context.Context, *UpdateRoomRequest) (*UpdateRoomResponse, error)
	AddBedsToRoom(context.Context, *AddBedsToRoomRequest) (*AddBedsToRoomResponse, error)
	mustEmbedUnimplementedRoomServiceServer()
}

// UnimplementedRoomServiceServer must be embedded to have forward compatible implementations.
type UnimplementedRoomServiceServer struct {
}

func (UnimplementedRoomServiceServer) CreateRoom(context.Context, *CreateRoomRequest) (*CreateRoomResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateRoom not implemented")
}
func (UnimplementedRoomServiceServer) GetRoom(context.Context, *GetRoomRequest) (*GetRoomResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetRoom not implemented")
}
func (UnimplementedRoomServiceServer) UpdateRoom(context.Context, *UpdateRoomRequest) (*UpdateRoomResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateRoom not implemented")
}
func (UnimplementedRoomServiceServer) AddBedsToRoom(context.Context, *AddBedsToRoomRequest) (*AddBedsToRoomResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AddBedsToRoom not implemented")
}
func (UnimplementedRoomServiceServer) mustEmbedUnimplementedRoomServiceServer() {}

// UnsafeRoomServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to RoomServiceServer will
// result in compilation errors.
type UnsafeRoomServiceServer interface {
	mustEmbedUnimplementedRoomServiceServer()
}

func RegisterRoomServiceServer(s grpc.ServiceRegistrar, srv RoomServiceServer) {
	s.RegisterService(&RoomService_ServiceDesc, srv)
}

func _RoomService_CreateRoom_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateRoomRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(RoomServiceServer).CreateRoom(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: RoomService_CreateRoom_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(RoomServiceServer).CreateRoom(ctx, req.(*CreateRoomRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _RoomService_GetRoom_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetRoomRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(RoomServiceServer).GetRoom(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: RoomService_GetRoom_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(RoomServiceServer).GetRoom(ctx, req.(*GetRoomRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _RoomService_UpdateRoom_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateRoomRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(RoomServiceServer).UpdateRoom(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: RoomService_UpdateRoom_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(RoomServiceServer).UpdateRoom(ctx, req.(*UpdateRoomRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _RoomService_AddBedsToRoom_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AddBedsToRoomRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(RoomServiceServer).AddBedsToRoom(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: RoomService_AddBedsToRoom_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(RoomServiceServer).AddBedsToRoom(ctx, req.(*AddBedsToRoomRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// RoomService_ServiceDesc is the grpc.ServiceDesc for RoomService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var RoomService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "RoomService",
	HandlerType: (*RoomServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateRoom",
			Handler:    _RoomService_CreateRoom_Handler,
		},
		{
			MethodName: "GetRoom",
			Handler:    _RoomService_GetRoom_Handler,
		},
		{
			MethodName: "UpdateRoom",
			Handler:    _RoomService_UpdateRoom_Handler,
		},
		{
			MethodName: "AddBedsToRoom",
			Handler:    _RoomService_AddBedsToRoom_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/services/task-svc/room-svc.proto",
}
