//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/properties_svc.proto
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

import 'properties_svc.pb.dart' as $9;

export 'properties_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.PropertiesService')
class PropertiesServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$9.CreatePropertyRequest, $9.CreatePropertyResponse>(
      '/proto.services.tasks_svc.v1.PropertiesService/CreateProperty',
      ($9.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$9.GetPropertyRequest, $9.GetPropertyResponse>(
      '/proto.services.tasks_svc.v1.PropertiesService/GetProperty',
      ($9.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetPropertyResponse.fromBuffer(value));
  static final _$getProperties = $grpc.ClientMethod<$9.GetPropertiesRequest, $9.GetPropertiesResponse>(
      '/proto.services.tasks_svc.v1.PropertiesService/GetProperties',
      ($9.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetPropertiesResponse.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$9.UpdatePropertyRequest, $9.UpdatePropertyResponse>(
      '/proto.services.tasks_svc.v1.PropertiesService/UpdateProperty',
      ($9.UpdatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdatePropertyResponse.fromBuffer(value));
  static final _$attachPropertyValue = $grpc.ClientMethod<$9.AttachPropertyValueRequest, $9.AttachPropertyValueResponse>(
      '/proto.services.tasks_svc.v1.PropertiesService/AttachPropertyValue',
      ($9.AttachPropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AttachPropertyValueResponse.fromBuffer(value));
  static final _$getAttachedPropertyValues = $grpc.ClientMethod<$9.GetAttachedPropertyValuesRequest, $9.GetAttachedPropertyValuesResponse>(
      '/proto.services.tasks_svc.v1.PropertiesService/GetAttachedPropertyValues',
      ($9.GetAttachedPropertyValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetAttachedPropertyValuesResponse.fromBuffer(value));

  PropertiesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreatePropertyResponse> createProperty($9.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetPropertyResponse> getProperty($9.GetPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperty, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetPropertiesResponse> getProperties($9.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdatePropertyResponse> updateProperty($9.UpdatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }

  $grpc.ResponseFuture<$9.AttachPropertyValueResponse> attachPropertyValue($9.AttachPropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachPropertyValue, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($9.GetAttachedPropertyValuesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAttachedPropertyValues, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.PropertiesService')
abstract class PropertiesServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.PropertiesService';

  PropertiesServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreatePropertyRequest, $9.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreatePropertyRequest.fromBuffer(value),
        ($9.CreatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetPropertyRequest, $9.GetPropertyResponse>(
        'GetProperty',
        getProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetPropertyRequest.fromBuffer(value),
        ($9.GetPropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetPropertiesRequest, $9.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetPropertiesRequest.fromBuffer(value),
        ($9.GetPropertiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePropertyRequest, $9.UpdatePropertyResponse>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdatePropertyRequest.fromBuffer(value),
        ($9.UpdatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AttachPropertyValueRequest, $9.AttachPropertyValueResponse>(
        'AttachPropertyValue',
        attachPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AttachPropertyValueRequest.fromBuffer(value),
        ($9.AttachPropertyValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetAttachedPropertyValuesRequest, $9.GetAttachedPropertyValuesResponse>(
        'GetAttachedPropertyValues',
        getAttachedPropertyValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetAttachedPropertyValuesRequest.fromBuffer(value),
        ($9.GetAttachedPropertyValuesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$9.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$9.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$9.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$9.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$9.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$9.UpdatePropertyResponse> updateProperty_Pre($grpc.ServiceCall call, $async.Future<$9.UpdatePropertyRequest> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$9.AttachPropertyValueResponse> attachPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$9.AttachPropertyValueRequest> request) async {
    return attachPropertyValue(call, await request);
  }

  $async.Future<$9.GetAttachedPropertyValuesResponse> getAttachedPropertyValues_Pre($grpc.ServiceCall call, $async.Future<$9.GetAttachedPropertyValuesRequest> request) async {
    return getAttachedPropertyValues(call, await request);
  }

  $async.Future<$9.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $9.CreatePropertyRequest request);
  $async.Future<$9.GetPropertyResponse> getProperty($grpc.ServiceCall call, $9.GetPropertyRequest request);
  $async.Future<$9.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $9.GetPropertiesRequest request);
  $async.Future<$9.UpdatePropertyResponse> updateProperty($grpc.ServiceCall call, $9.UpdatePropertyRequest request);
  $async.Future<$9.AttachPropertyValueResponse> attachPropertyValue($grpc.ServiceCall call, $9.AttachPropertyValueRequest request);
  $async.Future<$9.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($grpc.ServiceCall call, $9.GetAttachedPropertyValuesRequest request);
}
