// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc             (unknown)
// source: proto/services/task_svc/v1/bed_svc.proto

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
	BedService_CreateBed_FullMethodName       = "/proto.services.task_svc.v1.BedService/CreateBed"
	BedService_BulkCreateBeds_FullMethodName  = "/proto.services.task_svc.v1.BedService/BulkCreateBeds"
	BedService_GetBed_FullMethodName          = "/proto.services.task_svc.v1.BedService/GetBed"
	BedService_GetBedByPatient_FullMethodName = "/proto.services.task_svc.v1.BedService/GetBedByPatient"
	BedService_GetBeds_FullMethodName         = "/proto.services.task_svc.v1.BedService/GetBeds"
	BedService_GetBedsByRoom_FullMethodName   = "/proto.services.task_svc.v1.BedService/GetBedsByRoom"
	BedService_UpdateBed_FullMethodName       = "/proto.services.task_svc.v1.BedService/UpdateBed"
	BedService_DeleteBed_FullMethodName       = "/proto.services.task_svc.v1.BedService/DeleteBed"
)

// BedServiceClient is the client API for BedService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type BedServiceClient interface {
	CreateBed(ctx context.Context, in *CreateBedRequest, opts ...grpc.CallOption) (*CreateBedResponse, error)
	BulkCreateBeds(ctx context.Context, in *BulkCreateBedsRequest, opts ...grpc.CallOption) (*BulkCreateBedsResponse, error)
	GetBed(ctx context.Context, in *GetBedRequest, opts ...grpc.CallOption) (*GetBedResponse, error)
	GetBedByPatient(ctx context.Context, in *GetBedByPatientRequest, opts ...grpc.CallOption) (*GetBedByPatientResponse, error)
	GetBeds(ctx context.Context, in *GetBedsRequest, opts ...grpc.CallOption) (*GetBedsResponse, error)
	GetBedsByRoom(ctx context.Context, in *GetBedsByRoomRequest, opts ...grpc.CallOption) (*GetBedsByRoomResponse, error)
	UpdateBed(ctx context.Context, in *UpdateBedRequest, opts ...grpc.CallOption) (*UpdateBedResponse, error)
	DeleteBed(ctx context.Context, in *DeleteBedRequest, opts ...grpc.CallOption) (*DeleteBedResponse, error)
}

type bedServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewBedServiceClient(cc grpc.ClientConnInterface) BedServiceClient {
	return &bedServiceClient{cc}
}

func (c *bedServiceClient) CreateBed(ctx context.Context, in *CreateBedRequest, opts ...grpc.CallOption) (*CreateBedResponse, error) {
	out := new(CreateBedResponse)
	err := c.cc.Invoke(ctx, BedService_CreateBed_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) BulkCreateBeds(ctx context.Context, in *BulkCreateBedsRequest, opts ...grpc.CallOption) (*BulkCreateBedsResponse, error) {
	out := new(BulkCreateBedsResponse)
	err := c.cc.Invoke(ctx, BedService_BulkCreateBeds_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) GetBed(ctx context.Context, in *GetBedRequest, opts ...grpc.CallOption) (*GetBedResponse, error) {
	out := new(GetBedResponse)
	err := c.cc.Invoke(ctx, BedService_GetBed_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) GetBedByPatient(ctx context.Context, in *GetBedByPatientRequest, opts ...grpc.CallOption) (*GetBedByPatientResponse, error) {
	out := new(GetBedByPatientResponse)
	err := c.cc.Invoke(ctx, BedService_GetBedByPatient_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) GetBeds(ctx context.Context, in *GetBedsRequest, opts ...grpc.CallOption) (*GetBedsResponse, error) {
	out := new(GetBedsResponse)
	err := c.cc.Invoke(ctx, BedService_GetBeds_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) GetBedsByRoom(ctx context.Context, in *GetBedsByRoomRequest, opts ...grpc.CallOption) (*GetBedsByRoomResponse, error) {
	out := new(GetBedsByRoomResponse)
	err := c.cc.Invoke(ctx, BedService_GetBedsByRoom_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) UpdateBed(ctx context.Context, in *UpdateBedRequest, opts ...grpc.CallOption) (*UpdateBedResponse, error) {
	out := new(UpdateBedResponse)
	err := c.cc.Invoke(ctx, BedService_UpdateBed_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bedServiceClient) DeleteBed(ctx context.Context, in *DeleteBedRequest, opts ...grpc.CallOption) (*DeleteBedResponse, error) {
	out := new(DeleteBedResponse)
	err := c.cc.Invoke(ctx, BedService_DeleteBed_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// BedServiceServer is the server API for BedService service.
// All implementations must embed UnimplementedBedServiceServer
// for forward compatibility
type BedServiceServer interface {
	CreateBed(context.Context, *CreateBedRequest) (*CreateBedResponse, error)
	BulkCreateBeds(context.Context, *BulkCreateBedsRequest) (*BulkCreateBedsResponse, error)
	GetBed(context.Context, *GetBedRequest) (*GetBedResponse, error)
	GetBedByPatient(context.Context, *GetBedByPatientRequest) (*GetBedByPatientResponse, error)
	GetBeds(context.Context, *GetBedsRequest) (*GetBedsResponse, error)
	GetBedsByRoom(context.Context, *GetBedsByRoomRequest) (*GetBedsByRoomResponse, error)
	UpdateBed(context.Context, *UpdateBedRequest) (*UpdateBedResponse, error)
	DeleteBed(context.Context, *DeleteBedRequest) (*DeleteBedResponse, error)
	mustEmbedUnimplementedBedServiceServer()
}

// UnimplementedBedServiceServer must be embedded to have forward compatible implementations.
type UnimplementedBedServiceServer struct {
}

func (UnimplementedBedServiceServer) CreateBed(context.Context, *CreateBedRequest) (*CreateBedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateBed not implemented")
}
func (UnimplementedBedServiceServer) BulkCreateBeds(context.Context, *BulkCreateBedsRequest) (*BulkCreateBedsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method BulkCreateBeds not implemented")
}
func (UnimplementedBedServiceServer) GetBed(context.Context, *GetBedRequest) (*GetBedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetBed not implemented")
}
func (UnimplementedBedServiceServer) GetBedByPatient(context.Context, *GetBedByPatientRequest) (*GetBedByPatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetBedByPatient not implemented")
}
func (UnimplementedBedServiceServer) GetBeds(context.Context, *GetBedsRequest) (*GetBedsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetBeds not implemented")
}
func (UnimplementedBedServiceServer) GetBedsByRoom(context.Context, *GetBedsByRoomRequest) (*GetBedsByRoomResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetBedsByRoom not implemented")
}
func (UnimplementedBedServiceServer) UpdateBed(context.Context, *UpdateBedRequest) (*UpdateBedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateBed not implemented")
}
func (UnimplementedBedServiceServer) DeleteBed(context.Context, *DeleteBedRequest) (*DeleteBedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteBed not implemented")
}
func (UnimplementedBedServiceServer) mustEmbedUnimplementedBedServiceServer() {}

// UnsafeBedServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to BedServiceServer will
// result in compilation errors.
type UnsafeBedServiceServer interface {
	mustEmbedUnimplementedBedServiceServer()
}

func RegisterBedServiceServer(s grpc.ServiceRegistrar, srv BedServiceServer) {
	s.RegisterService(&BedService_ServiceDesc, srv)
}

func _BedService_CreateBed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateBedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).CreateBed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_CreateBed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).CreateBed(ctx, req.(*CreateBedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_BulkCreateBeds_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(BulkCreateBedsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).BulkCreateBeds(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_BulkCreateBeds_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).BulkCreateBeds(ctx, req.(*BulkCreateBedsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_GetBed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetBedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).GetBed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_GetBed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).GetBed(ctx, req.(*GetBedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_GetBedByPatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetBedByPatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).GetBedByPatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_GetBedByPatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).GetBedByPatient(ctx, req.(*GetBedByPatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_GetBeds_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetBedsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).GetBeds(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_GetBeds_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).GetBeds(ctx, req.(*GetBedsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_GetBedsByRoom_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetBedsByRoomRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).GetBedsByRoom(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_GetBedsByRoom_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).GetBedsByRoom(ctx, req.(*GetBedsByRoomRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_UpdateBed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateBedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).UpdateBed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_UpdateBed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).UpdateBed(ctx, req.(*UpdateBedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BedService_DeleteBed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteBedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BedServiceServer).DeleteBed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: BedService_DeleteBed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BedServiceServer).DeleteBed(ctx, req.(*DeleteBedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// BedService_ServiceDesc is the grpc.ServiceDesc for BedService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var BedService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "proto.services.task_svc.v1.BedService",
	HandlerType: (*BedServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateBed",
			Handler:    _BedService_CreateBed_Handler,
		},
		{
			MethodName: "BulkCreateBeds",
			Handler:    _BedService_BulkCreateBeds_Handler,
		},
		{
			MethodName: "GetBed",
			Handler:    _BedService_GetBed_Handler,
		},
		{
			MethodName: "GetBedByPatient",
			Handler:    _BedService_GetBedByPatient_Handler,
		},
		{
			MethodName: "GetBeds",
			Handler:    _BedService_GetBeds_Handler,
		},
		{
			MethodName: "GetBedsByRoom",
			Handler:    _BedService_GetBedsByRoom_Handler,
		},
		{
			MethodName: "UpdateBed",
			Handler:    _BedService_UpdateBed_Handler,
		},
		{
			MethodName: "DeleteBed",
			Handler:    _BedService_DeleteBed_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/services/task_svc/v1/bed_svc.proto",
}
