// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.4.0
// - protoc             (unknown)
// source: services/user_svc/v1/organization_svc.proto

package v1

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
	OrganizationService_CreateOrganization_FullMethodName           = "/services.user_svc.v1.OrganizationService/CreateOrganization"
	OrganizationService_GetOrganization_FullMethodName              = "/services.user_svc.v1.OrganizationService/GetOrganization"
	OrganizationService_GetOrganizationsByUser_FullMethodName       = "/services.user_svc.v1.OrganizationService/GetOrganizationsByUser"
	OrganizationService_GetOrganizationsForUser_FullMethodName      = "/services.user_svc.v1.OrganizationService/GetOrganizationsForUser"
	OrganizationService_UpdateOrganization_FullMethodName           = "/services.user_svc.v1.OrganizationService/UpdateOrganization"
	OrganizationService_DeleteOrganization_FullMethodName           = "/services.user_svc.v1.OrganizationService/DeleteOrganization"
	OrganizationService_GetMembersByOrganization_FullMethodName     = "/services.user_svc.v1.OrganizationService/GetMembersByOrganization"
	OrganizationService_RemoveMember_FullMethodName                 = "/services.user_svc.v1.OrganizationService/RemoveMember"
	OrganizationService_InviteMember_FullMethodName                 = "/services.user_svc.v1.OrganizationService/InviteMember"
	OrganizationService_GetInvitationsByOrganization_FullMethodName = "/services.user_svc.v1.OrganizationService/GetInvitationsByOrganization"
	OrganizationService_GetInvitationsByUser_FullMethodName         = "/services.user_svc.v1.OrganizationService/GetInvitationsByUser"
	OrganizationService_AcceptInvitation_FullMethodName             = "/services.user_svc.v1.OrganizationService/AcceptInvitation"
	OrganizationService_DeclineInvitation_FullMethodName            = "/services.user_svc.v1.OrganizationService/DeclineInvitation"
	OrganizationService_RevokeInvitation_FullMethodName             = "/services.user_svc.v1.OrganizationService/RevokeInvitation"
	OrganizationService_CreatePersonalOrganization_FullMethodName   = "/services.user_svc.v1.OrganizationService/CreatePersonalOrganization"
)

// OrganizationServiceClient is the client API for OrganizationService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type OrganizationServiceClient interface {
	CreateOrganization(ctx context.Context, in *CreateOrganizationRequest, opts ...grpc.CallOption) (*CreateOrganizationResponse, error)
	GetOrganization(ctx context.Context, in *GetOrganizationRequest, opts ...grpc.CallOption) (*GetOrganizationResponse, error)
	GetOrganizationsByUser(ctx context.Context, in *GetOrganizationsByUserRequest, opts ...grpc.CallOption) (*GetOrganizationsByUserResponse, error)
	GetOrganizationsForUser(ctx context.Context, in *GetOrganizationsForUserRequest, opts ...grpc.CallOption) (*GetOrganizationsForUserResponse, error)
	UpdateOrganization(ctx context.Context, in *UpdateOrganizationRequest, opts ...grpc.CallOption) (*UpdateOrganizationResponse, error)
	DeleteOrganization(ctx context.Context, in *DeleteOrganizationRequest, opts ...grpc.CallOption) (*DeleteOrganizationResponse, error)
	GetMembersByOrganization(ctx context.Context, in *GetMembersByOrganizationRequest, opts ...grpc.CallOption) (*GetMembersByOrganizationResponse, error)
	RemoveMember(ctx context.Context, in *RemoveMemberRequest, opts ...grpc.CallOption) (*RemoveMemberResponse, error)
	InviteMember(ctx context.Context, in *InviteMemberRequest, opts ...grpc.CallOption) (*InviteMemberResponse, error)
	GetInvitationsByOrganization(ctx context.Context, in *GetInvitationsByOrganizationRequest, opts ...grpc.CallOption) (*GetInvitationsByOrganizationResponse, error)
	GetInvitationsByUser(ctx context.Context, in *GetInvitationsByUserRequest, opts ...grpc.CallOption) (*GetInvitationsByUserResponse, error)
	AcceptInvitation(ctx context.Context, in *AcceptInvitationRequest, opts ...grpc.CallOption) (*AcceptInvitationResponse, error)
	DeclineInvitation(ctx context.Context, in *DeclineInvitationRequest, opts ...grpc.CallOption) (*DeclineInvitationResponse, error)
	RevokeInvitation(ctx context.Context, in *RevokeInvitationRequest, opts ...grpc.CallOption) (*RevokeInvitationResponse, error)
	// CreatePersonalOrganization creates or returns the personal organization of the user
	// Based on the "Accept-Language" metadata, the localized prefix "Personal organization ..." gets selected
	CreatePersonalOrganization(ctx context.Context, in *CreatePersonalOrganizationRequest, opts ...grpc.CallOption) (*CreatePersonalOrganizationResponse, error)
}

type organizationServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewOrganizationServiceClient(cc grpc.ClientConnInterface) OrganizationServiceClient {
	return &organizationServiceClient{cc}
}

func (c *organizationServiceClient) CreateOrganization(ctx context.Context, in *CreateOrganizationRequest, opts ...grpc.CallOption) (*CreateOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CreateOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_CreateOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) GetOrganization(ctx context.Context, in *GetOrganizationRequest, opts ...grpc.CallOption) (*GetOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_GetOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) GetOrganizationsByUser(ctx context.Context, in *GetOrganizationsByUserRequest, opts ...grpc.CallOption) (*GetOrganizationsByUserResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetOrganizationsByUserResponse)
	err := c.cc.Invoke(ctx, OrganizationService_GetOrganizationsByUser_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) GetOrganizationsForUser(ctx context.Context, in *GetOrganizationsForUserRequest, opts ...grpc.CallOption) (*GetOrganizationsForUserResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetOrganizationsForUserResponse)
	err := c.cc.Invoke(ctx, OrganizationService_GetOrganizationsForUser_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) UpdateOrganization(ctx context.Context, in *UpdateOrganizationRequest, opts ...grpc.CallOption) (*UpdateOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UpdateOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_UpdateOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) DeleteOrganization(ctx context.Context, in *DeleteOrganizationRequest, opts ...grpc.CallOption) (*DeleteOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(DeleteOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_DeleteOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) GetMembersByOrganization(ctx context.Context, in *GetMembersByOrganizationRequest, opts ...grpc.CallOption) (*GetMembersByOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetMembersByOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_GetMembersByOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) RemoveMember(ctx context.Context, in *RemoveMemberRequest, opts ...grpc.CallOption) (*RemoveMemberResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(RemoveMemberResponse)
	err := c.cc.Invoke(ctx, OrganizationService_RemoveMember_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) InviteMember(ctx context.Context, in *InviteMemberRequest, opts ...grpc.CallOption) (*InviteMemberResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(InviteMemberResponse)
	err := c.cc.Invoke(ctx, OrganizationService_InviteMember_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) GetInvitationsByOrganization(ctx context.Context, in *GetInvitationsByOrganizationRequest, opts ...grpc.CallOption) (*GetInvitationsByOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetInvitationsByOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_GetInvitationsByOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) GetInvitationsByUser(ctx context.Context, in *GetInvitationsByUserRequest, opts ...grpc.CallOption) (*GetInvitationsByUserResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetInvitationsByUserResponse)
	err := c.cc.Invoke(ctx, OrganizationService_GetInvitationsByUser_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) AcceptInvitation(ctx context.Context, in *AcceptInvitationRequest, opts ...grpc.CallOption) (*AcceptInvitationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(AcceptInvitationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_AcceptInvitation_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) DeclineInvitation(ctx context.Context, in *DeclineInvitationRequest, opts ...grpc.CallOption) (*DeclineInvitationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(DeclineInvitationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_DeclineInvitation_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) RevokeInvitation(ctx context.Context, in *RevokeInvitationRequest, opts ...grpc.CallOption) (*RevokeInvitationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(RevokeInvitationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_RevokeInvitation_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *organizationServiceClient) CreatePersonalOrganization(ctx context.Context, in *CreatePersonalOrganizationRequest, opts ...grpc.CallOption) (*CreatePersonalOrganizationResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CreatePersonalOrganizationResponse)
	err := c.cc.Invoke(ctx, OrganizationService_CreatePersonalOrganization_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// OrganizationServiceServer is the server API for OrganizationService service.
// All implementations must embed UnimplementedOrganizationServiceServer
// for forward compatibility
type OrganizationServiceServer interface {
	CreateOrganization(context.Context, *CreateOrganizationRequest) (*CreateOrganizationResponse, error)
	GetOrganization(context.Context, *GetOrganizationRequest) (*GetOrganizationResponse, error)
	GetOrganizationsByUser(context.Context, *GetOrganizationsByUserRequest) (*GetOrganizationsByUserResponse, error)
	GetOrganizationsForUser(context.Context, *GetOrganizationsForUserRequest) (*GetOrganizationsForUserResponse, error)
	UpdateOrganization(context.Context, *UpdateOrganizationRequest) (*UpdateOrganizationResponse, error)
	DeleteOrganization(context.Context, *DeleteOrganizationRequest) (*DeleteOrganizationResponse, error)
	GetMembersByOrganization(context.Context, *GetMembersByOrganizationRequest) (*GetMembersByOrganizationResponse, error)
	RemoveMember(context.Context, *RemoveMemberRequest) (*RemoveMemberResponse, error)
	InviteMember(context.Context, *InviteMemberRequest) (*InviteMemberResponse, error)
	GetInvitationsByOrganization(context.Context, *GetInvitationsByOrganizationRequest) (*GetInvitationsByOrganizationResponse, error)
	GetInvitationsByUser(context.Context, *GetInvitationsByUserRequest) (*GetInvitationsByUserResponse, error)
	AcceptInvitation(context.Context, *AcceptInvitationRequest) (*AcceptInvitationResponse, error)
	DeclineInvitation(context.Context, *DeclineInvitationRequest) (*DeclineInvitationResponse, error)
	RevokeInvitation(context.Context, *RevokeInvitationRequest) (*RevokeInvitationResponse, error)
	// CreatePersonalOrganization creates or returns the personal organization of the user
	// Based on the "Accept-Language" metadata, the localized prefix "Personal organization ..." gets selected
	CreatePersonalOrganization(context.Context, *CreatePersonalOrganizationRequest) (*CreatePersonalOrganizationResponse, error)
	mustEmbedUnimplementedOrganizationServiceServer()
}

// UnimplementedOrganizationServiceServer must be embedded to have forward compatible implementations.
type UnimplementedOrganizationServiceServer struct {
}

func (UnimplementedOrganizationServiceServer) CreateOrganization(context.Context, *CreateOrganizationRequest) (*CreateOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) GetOrganization(context.Context, *GetOrganizationRequest) (*GetOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) GetOrganizationsByUser(context.Context, *GetOrganizationsByUserRequest) (*GetOrganizationsByUserResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetOrganizationsByUser not implemented")
}
func (UnimplementedOrganizationServiceServer) GetOrganizationsForUser(context.Context, *GetOrganizationsForUserRequest) (*GetOrganizationsForUserResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetOrganizationsForUser not implemented")
}
func (UnimplementedOrganizationServiceServer) UpdateOrganization(context.Context, *UpdateOrganizationRequest) (*UpdateOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) DeleteOrganization(context.Context, *DeleteOrganizationRequest) (*DeleteOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) GetMembersByOrganization(context.Context, *GetMembersByOrganizationRequest) (*GetMembersByOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetMembersByOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) RemoveMember(context.Context, *RemoveMemberRequest) (*RemoveMemberResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RemoveMember not implemented")
}
func (UnimplementedOrganizationServiceServer) InviteMember(context.Context, *InviteMemberRequest) (*InviteMemberResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method InviteMember not implemented")
}
func (UnimplementedOrganizationServiceServer) GetInvitationsByOrganization(context.Context, *GetInvitationsByOrganizationRequest) (*GetInvitationsByOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetInvitationsByOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) GetInvitationsByUser(context.Context, *GetInvitationsByUserRequest) (*GetInvitationsByUserResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetInvitationsByUser not implemented")
}
func (UnimplementedOrganizationServiceServer) AcceptInvitation(context.Context, *AcceptInvitationRequest) (*AcceptInvitationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AcceptInvitation not implemented")
}
func (UnimplementedOrganizationServiceServer) DeclineInvitation(context.Context, *DeclineInvitationRequest) (*DeclineInvitationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeclineInvitation not implemented")
}
func (UnimplementedOrganizationServiceServer) RevokeInvitation(context.Context, *RevokeInvitationRequest) (*RevokeInvitationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RevokeInvitation not implemented")
}
func (UnimplementedOrganizationServiceServer) CreatePersonalOrganization(context.Context, *CreatePersonalOrganizationRequest) (*CreatePersonalOrganizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreatePersonalOrganization not implemented")
}
func (UnimplementedOrganizationServiceServer) mustEmbedUnimplementedOrganizationServiceServer() {}

// UnsafeOrganizationServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to OrganizationServiceServer will
// result in compilation errors.
type UnsafeOrganizationServiceServer interface {
	mustEmbedUnimplementedOrganizationServiceServer()
}

func RegisterOrganizationServiceServer(s grpc.ServiceRegistrar, srv OrganizationServiceServer) {
	s.RegisterService(&OrganizationService_ServiceDesc, srv)
}

func _OrganizationService_CreateOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).CreateOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_CreateOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).CreateOrganization(ctx, req.(*CreateOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_GetOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).GetOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_GetOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).GetOrganization(ctx, req.(*GetOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_GetOrganizationsByUser_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetOrganizationsByUserRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).GetOrganizationsByUser(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_GetOrganizationsByUser_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).GetOrganizationsByUser(ctx, req.(*GetOrganizationsByUserRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_GetOrganizationsForUser_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetOrganizationsForUserRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).GetOrganizationsForUser(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_GetOrganizationsForUser_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).GetOrganizationsForUser(ctx, req.(*GetOrganizationsForUserRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_UpdateOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).UpdateOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_UpdateOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).UpdateOrganization(ctx, req.(*UpdateOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_DeleteOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).DeleteOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_DeleteOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).DeleteOrganization(ctx, req.(*DeleteOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_GetMembersByOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetMembersByOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).GetMembersByOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_GetMembersByOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).GetMembersByOrganization(ctx, req.(*GetMembersByOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_RemoveMember_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RemoveMemberRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).RemoveMember(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_RemoveMember_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).RemoveMember(ctx, req.(*RemoveMemberRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_InviteMember_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(InviteMemberRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).InviteMember(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_InviteMember_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).InviteMember(ctx, req.(*InviteMemberRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_GetInvitationsByOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetInvitationsByOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).GetInvitationsByOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_GetInvitationsByOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).GetInvitationsByOrganization(ctx, req.(*GetInvitationsByOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_GetInvitationsByUser_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetInvitationsByUserRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).GetInvitationsByUser(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_GetInvitationsByUser_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).GetInvitationsByUser(ctx, req.(*GetInvitationsByUserRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_AcceptInvitation_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AcceptInvitationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).AcceptInvitation(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_AcceptInvitation_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).AcceptInvitation(ctx, req.(*AcceptInvitationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_DeclineInvitation_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeclineInvitationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).DeclineInvitation(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_DeclineInvitation_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).DeclineInvitation(ctx, req.(*DeclineInvitationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_RevokeInvitation_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RevokeInvitationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).RevokeInvitation(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_RevokeInvitation_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).RevokeInvitation(ctx, req.(*RevokeInvitationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _OrganizationService_CreatePersonalOrganization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreatePersonalOrganizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(OrganizationServiceServer).CreatePersonalOrganization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: OrganizationService_CreatePersonalOrganization_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(OrganizationServiceServer).CreatePersonalOrganization(ctx, req.(*CreatePersonalOrganizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// OrganizationService_ServiceDesc is the grpc.ServiceDesc for OrganizationService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var OrganizationService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.user_svc.v1.OrganizationService",
	HandlerType: (*OrganizationServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateOrganization",
			Handler:    _OrganizationService_CreateOrganization_Handler,
		},
		{
			MethodName: "GetOrganization",
			Handler:    _OrganizationService_GetOrganization_Handler,
		},
		{
			MethodName: "GetOrganizationsByUser",
			Handler:    _OrganizationService_GetOrganizationsByUser_Handler,
		},
		{
			MethodName: "GetOrganizationsForUser",
			Handler:    _OrganizationService_GetOrganizationsForUser_Handler,
		},
		{
			MethodName: "UpdateOrganization",
			Handler:    _OrganizationService_UpdateOrganization_Handler,
		},
		{
			MethodName: "DeleteOrganization",
			Handler:    _OrganizationService_DeleteOrganization_Handler,
		},
		{
			MethodName: "GetMembersByOrganization",
			Handler:    _OrganizationService_GetMembersByOrganization_Handler,
		},
		{
			MethodName: "RemoveMember",
			Handler:    _OrganizationService_RemoveMember_Handler,
		},
		{
			MethodName: "InviteMember",
			Handler:    _OrganizationService_InviteMember_Handler,
		},
		{
			MethodName: "GetInvitationsByOrganization",
			Handler:    _OrganizationService_GetInvitationsByOrganization_Handler,
		},
		{
			MethodName: "GetInvitationsByUser",
			Handler:    _OrganizationService_GetInvitationsByUser_Handler,
		},
		{
			MethodName: "AcceptInvitation",
			Handler:    _OrganizationService_AcceptInvitation_Handler,
		},
		{
			MethodName: "DeclineInvitation",
			Handler:    _OrganizationService_DeclineInvitation_Handler,
		},
		{
			MethodName: "RevokeInvitation",
			Handler:    _OrganizationService_RevokeInvitation_Handler,
		},
		{
			MethodName: "CreatePersonalOrganization",
			Handler:    _OrganizationService_CreatePersonalOrganization_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/user_svc/v1/organization_svc.proto",
}
