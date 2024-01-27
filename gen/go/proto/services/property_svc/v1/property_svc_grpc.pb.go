// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             (unknown)
// source: proto/services/property_svc/v1/property_svc.proto

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
	PropertyService_CreateProperty_FullMethodName = "/proto.services.property_svc.v1.PropertyService/CreateProperty"
)

// PropertyServiceClient is the client API for PropertyService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PropertyServiceClient interface {
	CreateProperty(ctx context.Context, in *CreatePropertyRequest, opts ...grpc.CallOption) (*CreatePropertyResponse, error)
}

type propertyServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPropertyServiceClient(cc grpc.ClientConnInterface) PropertyServiceClient {
	return &propertyServiceClient{cc}
}

func (c *propertyServiceClient) CreateProperty(ctx context.Context, in *CreatePropertyRequest, opts ...grpc.CallOption) (*CreatePropertyResponse, error) {
	out := new(CreatePropertyResponse)
	err := c.cc.Invoke(ctx, PropertyService_CreateProperty_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// PropertyServiceServer is the server API for PropertyService service.
// All implementations must embed UnimplementedPropertyServiceServer
// for forward compatibility
type PropertyServiceServer interface {
	CreateProperty(context.Context, *CreatePropertyRequest) (*CreatePropertyResponse, error)
	mustEmbedUnimplementedPropertyServiceServer()
}

// UnimplementedPropertyServiceServer must be embedded to have forward compatible implementations.
type UnimplementedPropertyServiceServer struct {
}

func (UnimplementedPropertyServiceServer) CreateProperty(context.Context, *CreatePropertyRequest) (*CreatePropertyResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateProperty not implemented")
}
func (UnimplementedPropertyServiceServer) mustEmbedUnimplementedPropertyServiceServer() {}

// UnsafePropertyServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PropertyServiceServer will
// result in compilation errors.
type UnsafePropertyServiceServer interface {
	mustEmbedUnimplementedPropertyServiceServer()
}

func RegisterPropertyServiceServer(s grpc.ServiceRegistrar, srv PropertyServiceServer) {
	s.RegisterService(&PropertyService_ServiceDesc, srv)
}

func _PropertyService_CreateProperty_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreatePropertyRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PropertyServiceServer).CreateProperty(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PropertyService_CreateProperty_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PropertyServiceServer).CreateProperty(ctx, req.(*CreatePropertyRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// PropertyService_ServiceDesc is the grpc.ServiceDesc for PropertyService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PropertyService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "proto.services.property_svc.v1.PropertyService",
	HandlerType: (*PropertyServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateProperty",
			Handler:    _PropertyService_CreateProperty_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/services/property_svc/v1/property_svc.proto",
}
