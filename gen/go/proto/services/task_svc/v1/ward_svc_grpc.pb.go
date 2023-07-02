// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             (unknown)
// source: proto/services/task_svc/v1/ward_svc.proto

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
	WardService_CreateWard_FullMethodName       = "/proto.services.task_svc.v1.WardService/CreateWard"
	WardService_GetWard_FullMethodName          = "/proto.services.task_svc.v1.WardService/GetWard"
	WardService_GetWards_FullMethodName         = "/proto.services.task_svc.v1.WardService/GetWards"
	WardService_UpdateWard_FullMethodName       = "/proto.services.task_svc.v1.WardService/UpdateWard"
	WardService_DeleteWard_FullMethodName       = "/proto.services.task_svc.v1.WardService/DeleteWard"
	WardService_GetWardOverviews_FullMethodName = "/proto.services.task_svc.v1.WardService/GetWardOverviews"
	WardService_GetWardDetails_FullMethodName   = "/proto.services.task_svc.v1.WardService/GetWardDetails"
)

// WardServiceClient is the client API for WardService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type WardServiceClient interface {
	CreateWard(ctx context.Context, in *CreateWardRequest, opts ...grpc.CallOption) (*CreateWardResponse, error)
	GetWard(ctx context.Context, in *GetWardRequest, opts ...grpc.CallOption) (*GetWardResponse, error)
	GetWards(ctx context.Context, in *GetWardsRequest, opts ...grpc.CallOption) (*GetWardsResponse, error)
	UpdateWard(ctx context.Context, in *UpdateWardRequest, opts ...grpc.CallOption) (*UpdateWardResponse, error)
	DeleteWard(ctx context.Context, in *DeleteWardRequest, opts ...grpc.CallOption) (*DeleteWardResponse, error)
	GetWardOverviews(ctx context.Context, in *GetWardOverviewsRequest, opts ...grpc.CallOption) (*GetWardOverviewsResponse, error)
	GetWardDetails(ctx context.Context, in *GetWardDetailsRequest, opts ...grpc.CallOption) (*GetWardDetailsResponse, error)
}

type wardServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewWardServiceClient(cc grpc.ClientConnInterface) WardServiceClient {
	return &wardServiceClient{cc}
}

func (c *wardServiceClient) CreateWard(ctx context.Context, in *CreateWardRequest, opts ...grpc.CallOption) (*CreateWardResponse, error) {
	out := new(CreateWardResponse)
	err := c.cc.Invoke(ctx, WardService_CreateWard_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *wardServiceClient) GetWard(ctx context.Context, in *GetWardRequest, opts ...grpc.CallOption) (*GetWardResponse, error) {
	out := new(GetWardResponse)
	err := c.cc.Invoke(ctx, WardService_GetWard_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *wardServiceClient) GetWards(ctx context.Context, in *GetWardsRequest, opts ...grpc.CallOption) (*GetWardsResponse, error) {
	out := new(GetWardsResponse)
	err := c.cc.Invoke(ctx, WardService_GetWards_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *wardServiceClient) UpdateWard(ctx context.Context, in *UpdateWardRequest, opts ...grpc.CallOption) (*UpdateWardResponse, error) {
	out := new(UpdateWardResponse)
	err := c.cc.Invoke(ctx, WardService_UpdateWard_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *wardServiceClient) DeleteWard(ctx context.Context, in *DeleteWardRequest, opts ...grpc.CallOption) (*DeleteWardResponse, error) {
	out := new(DeleteWardResponse)
	err := c.cc.Invoke(ctx, WardService_DeleteWard_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *wardServiceClient) GetWardOverviews(ctx context.Context, in *GetWardOverviewsRequest, opts ...grpc.CallOption) (*GetWardOverviewsResponse, error) {
	out := new(GetWardOverviewsResponse)
	err := c.cc.Invoke(ctx, WardService_GetWardOverviews_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *wardServiceClient) GetWardDetails(ctx context.Context, in *GetWardDetailsRequest, opts ...grpc.CallOption) (*GetWardDetailsResponse, error) {
	out := new(GetWardDetailsResponse)
	err := c.cc.Invoke(ctx, WardService_GetWardDetails_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// WardServiceServer is the server API for WardService service.
// All implementations must embed UnimplementedWardServiceServer
// for forward compatibility
type WardServiceServer interface {
	CreateWard(context.Context, *CreateWardRequest) (*CreateWardResponse, error)
	GetWard(context.Context, *GetWardRequest) (*GetWardResponse, error)
	GetWards(context.Context, *GetWardsRequest) (*GetWardsResponse, error)
	UpdateWard(context.Context, *UpdateWardRequest) (*UpdateWardResponse, error)
	DeleteWard(context.Context, *DeleteWardRequest) (*DeleteWardResponse, error)
	GetWardOverviews(context.Context, *GetWardOverviewsRequest) (*GetWardOverviewsResponse, error)
	GetWardDetails(context.Context, *GetWardDetailsRequest) (*GetWardDetailsResponse, error)
	mustEmbedUnimplementedWardServiceServer()
}

// UnimplementedWardServiceServer must be embedded to have forward compatible implementations.
type UnimplementedWardServiceServer struct {
}

func (UnimplementedWardServiceServer) CreateWard(context.Context, *CreateWardRequest) (*CreateWardResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateWard not implemented")
}
func (UnimplementedWardServiceServer) GetWard(context.Context, *GetWardRequest) (*GetWardResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetWard not implemented")
}
func (UnimplementedWardServiceServer) GetWards(context.Context, *GetWardsRequest) (*GetWardsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetWards not implemented")
}
func (UnimplementedWardServiceServer) UpdateWard(context.Context, *UpdateWardRequest) (*UpdateWardResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateWard not implemented")
}
func (UnimplementedWardServiceServer) DeleteWard(context.Context, *DeleteWardRequest) (*DeleteWardResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteWard not implemented")
}
func (UnimplementedWardServiceServer) GetWardOverviews(context.Context, *GetWardOverviewsRequest) (*GetWardOverviewsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetWardOverviews not implemented")
}
func (UnimplementedWardServiceServer) GetWardDetails(context.Context, *GetWardDetailsRequest) (*GetWardDetailsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetWardDetails not implemented")
}
func (UnimplementedWardServiceServer) mustEmbedUnimplementedWardServiceServer() {}

// UnsafeWardServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to WardServiceServer will
// result in compilation errors.
type UnsafeWardServiceServer interface {
	mustEmbedUnimplementedWardServiceServer()
}

func RegisterWardServiceServer(s grpc.ServiceRegistrar, srv WardServiceServer) {
	s.RegisterService(&WardService_ServiceDesc, srv)
}

func _WardService_CreateWard_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateWardRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).CreateWard(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_CreateWard_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).CreateWard(ctx, req.(*CreateWardRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WardService_GetWard_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetWardRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).GetWard(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_GetWard_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).GetWard(ctx, req.(*GetWardRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WardService_GetWards_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetWardsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).GetWards(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_GetWards_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).GetWards(ctx, req.(*GetWardsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WardService_UpdateWard_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateWardRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).UpdateWard(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_UpdateWard_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).UpdateWard(ctx, req.(*UpdateWardRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WardService_DeleteWard_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteWardRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).DeleteWard(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_DeleteWard_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).DeleteWard(ctx, req.(*DeleteWardRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WardService_GetWardOverviews_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetWardOverviewsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).GetWardOverviews(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_GetWardOverviews_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).GetWardOverviews(ctx, req.(*GetWardOverviewsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WardService_GetWardDetails_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetWardDetailsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WardServiceServer).GetWardDetails(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: WardService_GetWardDetails_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WardServiceServer).GetWardDetails(ctx, req.(*GetWardDetailsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// WardService_ServiceDesc is the grpc.ServiceDesc for WardService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var WardService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "proto.services.task_svc.v1.WardService",
	HandlerType: (*WardServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateWard",
			Handler:    _WardService_CreateWard_Handler,
		},
		{
			MethodName: "GetWard",
			Handler:    _WardService_GetWard_Handler,
		},
		{
			MethodName: "GetWards",
			Handler:    _WardService_GetWards_Handler,
		},
		{
			MethodName: "UpdateWard",
			Handler:    _WardService_UpdateWard_Handler,
		},
		{
			MethodName: "DeleteWard",
			Handler:    _WardService_DeleteWard_Handler,
		},
		{
			MethodName: "GetWardOverviews",
			Handler:    _WardService_GetWardOverviews_Handler,
		},
		{
			MethodName: "GetWardDetails",
			Handler:    _WardService_GetWardDetails_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/services/task_svc/v1/ward_svc.proto",
}
