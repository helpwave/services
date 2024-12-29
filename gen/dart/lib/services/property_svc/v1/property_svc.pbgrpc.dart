//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'property_svc.pb.dart' as $1;

export 'property_svc.pb.dart';

@$pb.GrpcServiceName('services.property_svc.v1.PropertyService')
class PropertyServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$1.CreatePropertyRequest, $1.CreatePropertyResponse>(
      '/services.property_svc.v1.PropertyService/CreateProperty',
      ($1.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$1.GetPropertyRequest, $1.GetPropertyResponse>(
      '/services.property_svc.v1.PropertyService/GetProperty',
      ($1.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPropertyResponse.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$1.UpdatePropertyRequest, $1.UpdatePropertyResponse>(
      '/services.property_svc.v1.PropertyService/UpdateProperty',
      ($1.UpdatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdatePropertyResponse.fromBuffer(value));
  static final _$getProperties = $grpc.ClientMethod<$1.GetPropertiesRequest, $1.GetPropertiesResponse>(
      '/services.property_svc.v1.PropertyService/GetProperties',
      ($1.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPropertiesResponse.fromBuffer(value));

  PropertyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreatePropertyResponse> createProperty($1.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPropertyResponse> getProperty($1.GetPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdatePropertyResponse> updateProperty($1.UpdatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPropertiesResponse> getProperties($1.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }
}

@$pb.GrpcServiceName('services.property_svc.v1.PropertyService')
abstract class PropertyServiceBase extends $grpc.Service {
  $core.String get $name => 'services.property_svc.v1.PropertyService';

  PropertyServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreatePropertyRequest, $1.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreatePropertyRequest.fromBuffer(value),
        ($1.CreatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPropertyRequest, $1.GetPropertyResponse>(
        'GetProperty',
        getProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPropertyRequest.fromBuffer(value),
        ($1.GetPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdatePropertyRequest, $1.UpdatePropertyResponse>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdatePropertyRequest.fromBuffer(value),
        ($1.UpdatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPropertiesRequest, $1.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPropertiesRequest.fromBuffer(value),
        ($1.GetPropertiesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$1.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$1.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$1.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$1.UpdatePropertyResponse> updateProperty_Pre($grpc.ServiceCall call, $async.Future<$1.UpdatePropertyRequest> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$1.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$1.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$1.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $1.CreatePropertyRequest request);
  $async.Future<$1.GetPropertyResponse> getProperty($grpc.ServiceCall call, $1.GetPropertyRequest request);
  $async.Future<$1.UpdatePropertyResponse> updateProperty($grpc.ServiceCall call, $1.UpdatePropertyRequest request);
  $async.Future<$1.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $1.GetPropertiesRequest request);
}
