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

import 'property_svc.pb.dart' as $2;

export 'property_svc.pb.dart';

@$pb.GrpcServiceName('services.property_svc.v1.PropertyService')
class PropertyServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$2.CreatePropertyRequest, $2.CreatePropertyResponse>(
      '/services.property_svc.v1.PropertyService/CreateProperty',
      ($2.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$2.GetPropertyRequest, $2.GetPropertyResponse>(
      '/services.property_svc.v1.PropertyService/GetProperty',
      ($2.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetPropertyResponse.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$2.UpdatePropertyRequest, $2.UpdatePropertyResponse>(
      '/services.property_svc.v1.PropertyService/UpdateProperty',
      ($2.UpdatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdatePropertyResponse.fromBuffer(value));
  static final _$getProperties = $grpc.ClientMethod<$2.GetPropertiesRequest, $2.GetPropertiesResponse>(
      '/services.property_svc.v1.PropertyService/GetProperties',
      ($2.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetPropertiesResponse.fromBuffer(value));

  PropertyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreatePropertyResponse> createProperty($2.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetPropertyResponse> getProperty($2.GetPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperty, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePropertyResponse> updateProperty($2.UpdatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetPropertiesResponse> getProperties($2.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }
}

@$pb.GrpcServiceName('services.property_svc.v1.PropertyService')
abstract class PropertyServiceBase extends $grpc.Service {
  $core.String get $name => 'services.property_svc.v1.PropertyService';

  PropertyServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreatePropertyRequest, $2.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreatePropertyRequest.fromBuffer(value),
        ($2.CreatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetPropertyRequest, $2.GetPropertyResponse>(
        'GetProperty',
        getProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetPropertyRequest.fromBuffer(value),
        ($2.GetPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePropertyRequest, $2.UpdatePropertyResponse>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdatePropertyRequest.fromBuffer(value),
        ($2.UpdatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetPropertiesRequest, $2.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetPropertiesRequest.fromBuffer(value),
        ($2.GetPropertiesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$2.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$2.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$2.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$2.UpdatePropertyResponse> updateProperty_Pre($grpc.ServiceCall call, $async.Future<$2.UpdatePropertyRequest> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$2.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$2.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$2.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $2.CreatePropertyRequest request);
  $async.Future<$2.GetPropertyResponse> getProperty($grpc.ServiceCall call, $2.GetPropertyRequest request);
  $async.Future<$2.UpdatePropertyResponse> updateProperty($grpc.ServiceCall call, $2.UpdatePropertyRequest request);
  $async.Future<$2.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $2.GetPropertiesRequest request);
}
