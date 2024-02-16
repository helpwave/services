//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/properties.proto
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

import 'properties.pb.dart' as $3;

export 'properties.pb.dart';

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertiesService')
class PropertiesServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/CreateProperty',
      ($3.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$3.GetPropertyRequest, $3.GetPropertyResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/GetProperty',
      ($3.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertyResponse.fromBuffer(value));
  static final _$getProperties = $grpc.ClientMethod<$3.GetPropertiesRequest, $3.GetPropertiesResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/GetProperties',
      ($3.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertiesResponse.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$3.UpdatePropertyRequest, $3.UpdatePropertyResponse>(
      '/proto.services.properties_svc.v1.PropertiesService/UpdateProperty',
      ($3.UpdatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyResponse.fromBuffer(value));

  PropertiesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreatePropertyResponse> createProperty($3.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPropertyResponse> getProperty($3.GetPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperty, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPropertiesResponse> getProperties($3.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePropertyResponse> updateProperty($3.UpdatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertiesService')
abstract class PropertiesServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.properties_svc.v1.PropertiesService';

  PropertiesServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePropertyRequest.fromBuffer(value),
        ($3.CreatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPropertyRequest, $3.GetPropertyResponse>(
        'GetProperty',
        getProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertyRequest.fromBuffer(value),
        ($3.GetPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPropertiesRequest, $3.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertiesRequest.fromBuffer(value),
        ($3.GetPropertiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyRequest, $3.UpdatePropertyResponse>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyRequest.fromBuffer(value),
        ($3.UpdatePropertyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$3.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$3.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$3.UpdatePropertyResponse> updateProperty_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyRequest> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$3.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $3.CreatePropertyRequest request);
  $async.Future<$3.GetPropertyResponse> getProperty($grpc.ServiceCall call, $3.GetPropertyRequest request);
  $async.Future<$3.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $3.GetPropertiesRequest request);
  $async.Future<$3.UpdatePropertyResponse> updateProperty($grpc.ServiceCall call, $3.UpdatePropertyRequest request);
}
