//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_value_svc.proto
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

import 'property_value_svc.pb.dart' as $3;

export 'property_value_svc.pb.dart';

@$pb.GrpcServiceName('services.property_svc.v1.PropertyValueService')
class PropertyValueServiceClient extends $grpc.Client {
  static final _$attachPropertyValue = $grpc.ClientMethod<$3.AttachPropertyValueRequest, $3.AttachPropertyValueResponse>(
      '/services.property_svc.v1.PropertyValueService/AttachPropertyValue',
      ($3.AttachPropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AttachPropertyValueResponse.fromBuffer(value));
  static final _$getAttachedPropertyValues = $grpc.ClientMethod<$3.GetAttachedPropertyValuesRequest, $3.GetAttachedPropertyValuesResponse>(
      '/services.property_svc.v1.PropertyValueService/GetAttachedPropertyValues',
      ($3.GetAttachedPropertyValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetAttachedPropertyValuesResponse.fromBuffer(value));

  PropertyValueServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.AttachPropertyValueResponse> attachPropertyValue($3.AttachPropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachPropertyValue, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($3.GetAttachedPropertyValuesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAttachedPropertyValues, request, options: options);
  }
}

@$pb.GrpcServiceName('services.property_svc.v1.PropertyValueService')
abstract class PropertyValueServiceBase extends $grpc.Service {
  $core.String get $name => 'services.property_svc.v1.PropertyValueService';

  PropertyValueServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.AttachPropertyValueRequest, $3.AttachPropertyValueResponse>(
        'AttachPropertyValue',
        attachPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AttachPropertyValueRequest.fromBuffer(value),
        ($3.AttachPropertyValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetAttachedPropertyValuesRequest, $3.GetAttachedPropertyValuesResponse>(
        'GetAttachedPropertyValues',
        getAttachedPropertyValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetAttachedPropertyValuesRequest.fromBuffer(value),
        ($3.GetAttachedPropertyValuesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.AttachPropertyValueResponse> attachPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$3.AttachPropertyValueRequest> request) async {
    return attachPropertyValue(call, await request);
  }

  $async.Future<$3.GetAttachedPropertyValuesResponse> getAttachedPropertyValues_Pre($grpc.ServiceCall call, $async.Future<$3.GetAttachedPropertyValuesRequest> request) async {
    return getAttachedPropertyValues(call, await request);
  }

  $async.Future<$3.AttachPropertyValueResponse> attachPropertyValue($grpc.ServiceCall call, $3.AttachPropertyValueRequest request);
  $async.Future<$3.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($grpc.ServiceCall call, $3.GetAttachedPropertyValuesRequest request);
}
