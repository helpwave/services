// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.4.0
// - protoc             (unknown)
// source: services/property_svc/v1/property_svc.proto

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
	PropertyService_CreateProperty_FullMethodName = "/services.property_svc.v1.PropertyService/CreateProperty"
	PropertyService_GetProperty_FullMethodName    = "/services.property_svc.v1.PropertyService/GetProperty"
	PropertyService_UpdateProperty_FullMethodName = "/services.property_svc.v1.PropertyService/UpdateProperty"
	PropertyService_GetProperties_FullMethodName  = "/services.property_svc.v1.PropertyService/GetProperties"
)

// PropertyServiceClient is the client API for PropertyService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PropertyServiceClient interface {
	CreateProperty(ctx context.Context, in *CreatePropertyRequest, opts ...grpc.CallOption) (*CreatePropertyResponse, error)
	GetProperty(ctx context.Context, in *GetPropertyRequest, opts ...grpc.CallOption) (*GetPropertyResponse, error)
	UpdateProperty(ctx context.Context, in *UpdatePropertyRequest, opts ...grpc.CallOption) (*UpdatePropertyResponse, error)
	GetProperties(ctx context.Context, in *GetPropertiesRequest, opts ...grpc.CallOption) (*GetPropertiesResponse, error)
}

type propertyServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPropertyServiceClient(cc grpc.ClientConnInterface) PropertyServiceClient {
	return &propertyServiceClient{cc}
}

func (c *propertyServiceClient) CreateProperty(ctx context.Context, in *CreatePropertyRequest, opts ...grpc.CallOption) (*CreatePropertyResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CreatePropertyResponse)
	err := c.cc.Invoke(ctx, PropertyService_CreateProperty_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *propertyServiceClient) GetProperty(ctx context.Context, in *GetPropertyRequest, opts ...grpc.CallOption) (*GetPropertyResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetPropertyResponse)
	err := c.cc.Invoke(ctx, PropertyService_GetProperty_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *propertyServiceClient) UpdateProperty(ctx context.Context, in *UpdatePropertyRequest, opts ...grpc.CallOption) (*UpdatePropertyResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UpdatePropertyResponse)
	err := c.cc.Invoke(ctx, PropertyService_UpdateProperty_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *propertyServiceClient) GetProperties(ctx context.Context, in *GetPropertiesRequest, opts ...grpc.CallOption) (*GetPropertiesResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetPropertiesResponse)
	err := c.cc.Invoke(ctx, PropertyService_GetProperties_FullMethodName, in, out, cOpts...)
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
	GetProperty(context.Context, *GetPropertyRequest) (*GetPropertyResponse, error)
	UpdateProperty(context.Context, *UpdatePropertyRequest) (*UpdatePropertyResponse, error)
	GetProperties(context.Context, *GetPropertiesRequest) (*GetPropertiesResponse, error)
	mustEmbedUnimplementedPropertyServiceServer()
}

// UnimplementedPropertyServiceServer must be embedded to have forward compatible implementations.
type UnimplementedPropertyServiceServer struct {
}

func (UnimplementedPropertyServiceServer) CreateProperty(context.Context, *CreatePropertyRequest) (*CreatePropertyResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateProperty not implemented")
}
func (UnimplementedPropertyServiceServer) GetProperty(context.Context, *GetPropertyRequest) (*GetPropertyResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetProperty not implemented")
}
func (UnimplementedPropertyServiceServer) UpdateProperty(context.Context, *UpdatePropertyRequest) (*UpdatePropertyResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateProperty not implemented")
}
func (UnimplementedPropertyServiceServer) GetProperties(context.Context, *GetPropertiesRequest) (*GetPropertiesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetProperties not implemented")
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

func _PropertyService_GetProperty_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetPropertyRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PropertyServiceServer).GetProperty(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PropertyService_GetProperty_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PropertyServiceServer).GetProperty(ctx, req.(*GetPropertyRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PropertyService_UpdateProperty_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdatePropertyRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PropertyServiceServer).UpdateProperty(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PropertyService_UpdateProperty_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PropertyServiceServer).UpdateProperty(ctx, req.(*UpdatePropertyRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PropertyService_GetProperties_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetPropertiesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PropertyServiceServer).GetProperties(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PropertyService_GetProperties_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PropertyServiceServer).GetProperties(ctx, req.(*GetPropertiesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// PropertyService_ServiceDesc is the grpc.ServiceDesc for PropertyService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PropertyService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.property_svc.v1.PropertyService",
	HandlerType: (*PropertyServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateProperty",
			Handler:    _PropertyService_CreateProperty_Handler,
		},
		{
			MethodName: "GetProperty",
			Handler:    _PropertyService_GetProperty_Handler,
		},
		{
			MethodName: "UpdateProperty",
			Handler:    _PropertyService_UpdateProperty_Handler,
		},
		{
			MethodName: "GetProperties",
			Handler:    _PropertyService_GetProperties_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/property_svc/v1/property_svc.proto",
}
