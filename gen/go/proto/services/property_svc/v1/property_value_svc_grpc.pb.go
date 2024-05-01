// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             (unknown)
// source: proto/services/property_svc/v1/property_value_svc.proto

package property_svc

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
	PropertyValueService_AttachPropertyValue_FullMethodName       = "/proto.services.property_svc.v1.PropertyValueService/AttachPropertyValue"
	PropertyValueService_GetAttachedPropertyValues_FullMethodName = "/proto.services.property_svc.v1.PropertyValueService/GetAttachedPropertyValues"
)

// PropertyValueServiceClient is the client API for PropertyValueService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PropertyValueServiceClient interface {
	AttachPropertyValue(ctx context.Context, in *AttachPropertyValueRequest, opts ...grpc.CallOption) (*AttachPropertyValueResponse, error)
	GetAttachedPropertyValues(ctx context.Context, in *GetAttachedPropertyValuesRequest, opts ...grpc.CallOption) (*GetAttachedPropertyValuesResponse, error)
}

type propertyValueServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPropertyValueServiceClient(cc grpc.ClientConnInterface) PropertyValueServiceClient {
	return &propertyValueServiceClient{cc}
}

func (c *propertyValueServiceClient) AttachPropertyValue(ctx context.Context, in *AttachPropertyValueRequest, opts ...grpc.CallOption) (*AttachPropertyValueResponse, error) {
	out := new(AttachPropertyValueResponse)
	err := c.cc.Invoke(ctx, PropertyValueService_AttachPropertyValue_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *propertyValueServiceClient) GetAttachedPropertyValues(ctx context.Context, in *GetAttachedPropertyValuesRequest, opts ...grpc.CallOption) (*GetAttachedPropertyValuesResponse, error) {
	out := new(GetAttachedPropertyValuesResponse)
	err := c.cc.Invoke(ctx, PropertyValueService_GetAttachedPropertyValues_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// PropertyValueServiceServer is the server API for PropertyValueService service.
// All implementations must embed UnimplementedPropertyValueServiceServer
// for forward compatibility
type PropertyValueServiceServer interface {
	AttachPropertyValue(context.Context, *AttachPropertyValueRequest) (*AttachPropertyValueResponse, error)
	GetAttachedPropertyValues(context.Context, *GetAttachedPropertyValuesRequest) (*GetAttachedPropertyValuesResponse, error)
	mustEmbedUnimplementedPropertyValueServiceServer()
}

// UnimplementedPropertyValueServiceServer must be embedded to have forward compatible implementations.
type UnimplementedPropertyValueServiceServer struct {
}

func (UnimplementedPropertyValueServiceServer) AttachPropertyValue(context.Context, *AttachPropertyValueRequest) (*AttachPropertyValueResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AttachPropertyValue not implemented")
}
func (UnimplementedPropertyValueServiceServer) GetAttachedPropertyValues(context.Context, *GetAttachedPropertyValuesRequest) (*GetAttachedPropertyValuesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetAttachedPropertyValues not implemented")
}
func (UnimplementedPropertyValueServiceServer) mustEmbedUnimplementedPropertyValueServiceServer() {}

// UnsafePropertyValueServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PropertyValueServiceServer will
// result in compilation errors.
type UnsafePropertyValueServiceServer interface {
	mustEmbedUnimplementedPropertyValueServiceServer()
}

func RegisterPropertyValueServiceServer(s grpc.ServiceRegistrar, srv PropertyValueServiceServer) {
	s.RegisterService(&PropertyValueService_ServiceDesc, srv)
}

func _PropertyValueService_AttachPropertyValue_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AttachPropertyValueRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PropertyValueServiceServer).AttachPropertyValue(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PropertyValueService_AttachPropertyValue_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PropertyValueServiceServer).AttachPropertyValue(ctx, req.(*AttachPropertyValueRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PropertyValueService_GetAttachedPropertyValues_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetAttachedPropertyValuesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PropertyValueServiceServer).GetAttachedPropertyValues(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PropertyValueService_GetAttachedPropertyValues_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PropertyValueServiceServer).GetAttachedPropertyValues(ctx, req.(*GetAttachedPropertyValuesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// PropertyValueService_ServiceDesc is the grpc.ServiceDesc for PropertyValueService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PropertyValueService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "proto.services.property_svc.v1.PropertyValueService",
	HandlerType: (*PropertyValueServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "AttachPropertyValue",
			Handler:    _PropertyValueService_AttachPropertyValue_Handler,
		},
		{
			MethodName: "GetAttachedPropertyValues",
			Handler:    _PropertyValueService_GetAttachedPropertyValues_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/services/property_svc/v1/property_value_svc.proto",
}
