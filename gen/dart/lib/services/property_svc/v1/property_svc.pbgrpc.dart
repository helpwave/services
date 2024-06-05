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

import 'property_svc.pb.dart' as $3;

export 'property_svc.pb.dart';

@$pb.GrpcServiceName('services.property_svc.v1.PropertyService')
class PropertyServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
      '/services.property_svc.v1.PropertyService/CreateProperty',
      ($3.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$3.GetPropertyRequest, $3.GetPropertyResponse>(
      '/services.property_svc.v1.PropertyService/GetProperty',
      ($3.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertyResponse.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$3.UpdatePropertyRequest, $3.UpdatePropertyResponse>(
      '/services.property_svc.v1.PropertyService/UpdateProperty',
      ($3.UpdatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyResponse.fromBuffer(value));
  static final _$getPropertiesBySubjectType = $grpc.ClientMethod<$3.GetPropertiesBySubjectTypeRequest, $3.GetPropertiesBySubjectTypeResponse>(
      '/services.property_svc.v1.PropertyService/GetPropertiesBySubjectType',
      ($3.GetPropertiesBySubjectTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertiesBySubjectTypeResponse.fromBuffer(value));

  PropertyServiceClient($grpc.ClientChannel channel,
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

  $grpc.ResponseFuture<$3.UpdatePropertyResponse> updateProperty($3.UpdatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPropertiesBySubjectTypeResponse> getPropertiesBySubjectType($3.GetPropertiesBySubjectTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertiesBySubjectType, request, options: options);
  }
}

@$pb.GrpcServiceName('services.property_svc.v1.PropertyService')
abstract class PropertyServiceBase extends $grpc.Service {
  $core.String get $name => 'services.property_svc.v1.PropertyService';

  PropertyServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyRequest, $3.UpdatePropertyResponse>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyRequest.fromBuffer(value),
        ($3.UpdatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPropertiesBySubjectTypeRequest, $3.GetPropertiesBySubjectTypeResponse>(
        'GetPropertiesBySubjectType',
        getPropertiesBySubjectType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertiesBySubjectTypeRequest.fromBuffer(value),
        ($3.GetPropertiesBySubjectTypeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$3.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$3.UpdatePropertyResponse> updateProperty_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyRequest> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$3.GetPropertiesBySubjectTypeResponse> getPropertiesBySubjectType_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertiesBySubjectTypeRequest> request) async {
    return getPropertiesBySubjectType(call, await request);
  }

  $async.Future<$3.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $3.CreatePropertyRequest request);
  $async.Future<$3.GetPropertyResponse> getProperty($grpc.ServiceCall call, $3.GetPropertyRequest request);
  $async.Future<$3.UpdatePropertyResponse> updateProperty($grpc.ServiceCall call, $3.UpdatePropertyRequest request);
  $async.Future<$3.GetPropertiesBySubjectTypeResponse> getPropertiesBySubjectType($grpc.ServiceCall call, $3.GetPropertiesBySubjectTypeRequest request);
}
