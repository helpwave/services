// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.4.0
// - protoc             (unknown)
// source: services/tasks_svc/v1/patient_svc.proto

package tasks_svc

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.62.0 or later.
const _ = grpc.SupportPackageIsVersion8

const (
	PatientService_CreatePatient_FullMethodName     = "/services.tasks_svc.v1.PatientService/CreatePatient"
	PatientService_GetPatient_FullMethodName        = "/services.tasks_svc.v1.PatientService/GetPatient"
	PatientService_GetRecentPatients_FullMethodName = "/services.tasks_svc.v1.PatientService/GetRecentPatients"
	PatientService_UpdatePatient_FullMethodName     = "/services.tasks_svc.v1.PatientService/UpdatePatient"
	PatientService_AssignBed_FullMethodName         = "/services.tasks_svc.v1.PatientService/AssignBed"
	PatientService_UnassignBed_FullMethodName       = "/services.tasks_svc.v1.PatientService/UnassignBed"
	PatientService_DischargePatient_FullMethodName  = "/services.tasks_svc.v1.PatientService/DischargePatient"
	PatientService_ReadmitPatient_FullMethodName    = "/services.tasks_svc.v1.PatientService/ReadmitPatient"
)

// PatientServiceClient is the client API for PatientService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PatientServiceClient interface {
	CreatePatient(ctx context.Context, in *CreatePatientRequest, opts ...grpc.CallOption) (*CreatePatientResponse, error)
	GetPatient(ctx context.Context, in *GetPatientRequest, opts ...grpc.CallOption) (*GetPatientResponse, error)
	GetRecentPatients(ctx context.Context, in *GetRecentPatientsRequest, opts ...grpc.CallOption) (*GetRecentPatientsResponse, error)
	UpdatePatient(ctx context.Context, in *UpdatePatientRequest, opts ...grpc.CallOption) (*UpdatePatientResponse, error)
	AssignBed(ctx context.Context, in *AssignBedRequest, opts ...grpc.CallOption) (*AssignBedResponse, error)
	UnassignBed(ctx context.Context, in *UnassignBedRequest, opts ...grpc.CallOption) (*UnassignBedResponse, error)
	DischargePatient(ctx context.Context, in *DischargePatientRequest, opts ...grpc.CallOption) (*DischargePatientResponse, error)
	ReadmitPatient(ctx context.Context, in *ReadmitPatientRequest, opts ...grpc.CallOption) (*ReadmitPatientResponse, error)
}

type patientServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPatientServiceClient(cc grpc.ClientConnInterface) PatientServiceClient {
	return &patientServiceClient{cc}
}

func (c *patientServiceClient) CreatePatient(ctx context.Context, in *CreatePatientRequest, opts ...grpc.CallOption) (*CreatePatientResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CreatePatientResponse)
	err := c.cc.Invoke(ctx, PatientService_CreatePatient_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) GetPatient(ctx context.Context, in *GetPatientRequest, opts ...grpc.CallOption) (*GetPatientResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetPatientResponse)
	err := c.cc.Invoke(ctx, PatientService_GetPatient_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) GetRecentPatients(ctx context.Context, in *GetRecentPatientsRequest, opts ...grpc.CallOption) (*GetRecentPatientsResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetRecentPatientsResponse)
	err := c.cc.Invoke(ctx, PatientService_GetRecentPatients_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) UpdatePatient(ctx context.Context, in *UpdatePatientRequest, opts ...grpc.CallOption) (*UpdatePatientResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UpdatePatientResponse)
	err := c.cc.Invoke(ctx, PatientService_UpdatePatient_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) AssignBed(ctx context.Context, in *AssignBedRequest, opts ...grpc.CallOption) (*AssignBedResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(AssignBedResponse)
	err := c.cc.Invoke(ctx, PatientService_AssignBed_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) UnassignBed(ctx context.Context, in *UnassignBedRequest, opts ...grpc.CallOption) (*UnassignBedResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UnassignBedResponse)
	err := c.cc.Invoke(ctx, PatientService_UnassignBed_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) DischargePatient(ctx context.Context, in *DischargePatientRequest, opts ...grpc.CallOption) (*DischargePatientResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(DischargePatientResponse)
	err := c.cc.Invoke(ctx, PatientService_DischargePatient_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *patientServiceClient) ReadmitPatient(ctx context.Context, in *ReadmitPatientRequest, opts ...grpc.CallOption) (*ReadmitPatientResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(ReadmitPatientResponse)
	err := c.cc.Invoke(ctx, PatientService_ReadmitPatient_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// PatientServiceServer is the server API for PatientService service.
// All implementations must embed UnimplementedPatientServiceServer
// for forward compatibility
type PatientServiceServer interface {
	CreatePatient(context.Context, *CreatePatientRequest) (*CreatePatientResponse, error)
	GetPatient(context.Context, *GetPatientRequest) (*GetPatientResponse, error)
	GetRecentPatients(context.Context, *GetRecentPatientsRequest) (*GetRecentPatientsResponse, error)
	UpdatePatient(context.Context, *UpdatePatientRequest) (*UpdatePatientResponse, error)
	AssignBed(context.Context, *AssignBedRequest) (*AssignBedResponse, error)
	UnassignBed(context.Context, *UnassignBedRequest) (*UnassignBedResponse, error)
	DischargePatient(context.Context, *DischargePatientRequest) (*DischargePatientResponse, error)
	ReadmitPatient(context.Context, *ReadmitPatientRequest) (*ReadmitPatientResponse, error)
	mustEmbedUnimplementedPatientServiceServer()
}

// UnimplementedPatientServiceServer must be embedded to have forward compatible implementations.
type UnimplementedPatientServiceServer struct {
}

func (UnimplementedPatientServiceServer) CreatePatient(context.Context, *CreatePatientRequest) (*CreatePatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreatePatient not implemented")
}
func (UnimplementedPatientServiceServer) GetPatient(context.Context, *GetPatientRequest) (*GetPatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetPatient not implemented")
}
func (UnimplementedPatientServiceServer) GetRecentPatients(context.Context, *GetRecentPatientsRequest) (*GetRecentPatientsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetRecentPatients not implemented")
}
func (UnimplementedPatientServiceServer) UpdatePatient(context.Context, *UpdatePatientRequest) (*UpdatePatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdatePatient not implemented")
}
func (UnimplementedPatientServiceServer) AssignBed(context.Context, *AssignBedRequest) (*AssignBedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AssignBed not implemented")
}
func (UnimplementedPatientServiceServer) UnassignBed(context.Context, *UnassignBedRequest) (*UnassignBedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UnassignBed not implemented")
}
func (UnimplementedPatientServiceServer) DischargePatient(context.Context, *DischargePatientRequest) (*DischargePatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DischargePatient not implemented")
}
func (UnimplementedPatientServiceServer) ReadmitPatient(context.Context, *ReadmitPatientRequest) (*ReadmitPatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ReadmitPatient not implemented")
}
func (UnimplementedPatientServiceServer) mustEmbedUnimplementedPatientServiceServer() {}

// UnsafePatientServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PatientServiceServer will
// result in compilation errors.
type UnsafePatientServiceServer interface {
	mustEmbedUnimplementedPatientServiceServer()
}

func RegisterPatientServiceServer(s grpc.ServiceRegistrar, srv PatientServiceServer) {
	s.RegisterService(&PatientService_ServiceDesc, srv)
}

func _PatientService_CreatePatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreatePatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).CreatePatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_CreatePatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).CreatePatient(ctx, req.(*CreatePatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_GetPatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetPatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).GetPatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_GetPatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).GetPatient(ctx, req.(*GetPatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_GetRecentPatients_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetRecentPatientsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).GetRecentPatients(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_GetRecentPatients_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).GetRecentPatients(ctx, req.(*GetRecentPatientsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_UpdatePatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdatePatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).UpdatePatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_UpdatePatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).UpdatePatient(ctx, req.(*UpdatePatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_AssignBed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AssignBedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).AssignBed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_AssignBed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).AssignBed(ctx, req.(*AssignBedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_UnassignBed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UnassignBedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).UnassignBed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_UnassignBed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).UnassignBed(ctx, req.(*UnassignBedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_DischargePatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DischargePatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).DischargePatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_DischargePatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).DischargePatient(ctx, req.(*DischargePatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PatientService_ReadmitPatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ReadmitPatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PatientServiceServer).ReadmitPatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PatientService_ReadmitPatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PatientServiceServer).ReadmitPatient(ctx, req.(*ReadmitPatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// PatientService_ServiceDesc is the grpc.ServiceDesc for PatientService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PatientService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.tasks_svc.v1.PatientService",
	HandlerType: (*PatientServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreatePatient",
			Handler:    _PatientService_CreatePatient_Handler,
		},
		{
			MethodName: "GetPatient",
			Handler:    _PatientService_GetPatient_Handler,
		},
		{
			MethodName: "GetRecentPatients",
			Handler:    _PatientService_GetRecentPatients_Handler,
		},
		{
			MethodName: "UpdatePatient",
			Handler:    _PatientService_UpdatePatient_Handler,
		},
		{
			MethodName: "AssignBed",
			Handler:    _PatientService_AssignBed_Handler,
		},
		{
			MethodName: "UnassignBed",
			Handler:    _PatientService_UnassignBed_Handler,
		},
		{
			MethodName: "DischargePatient",
			Handler:    _PatientService_DischargePatient_Handler,
		},
		{
			MethodName: "ReadmitPatient",
			Handler:    _PatientService_ReadmitPatient_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/tasks_svc/v1/patient_svc.proto",
}
