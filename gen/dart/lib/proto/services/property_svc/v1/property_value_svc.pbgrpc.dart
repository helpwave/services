//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_value_svc.proto
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

import 'property_value_svc.pb.dart' as $4;

export 'property_value_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyValueService')
class PropertyValueServiceClient extends $grpc.Client {
  static final _$attachPropertyValue = $grpc.ClientMethod<$4.AttachPropertyValueRequest, $4.AttachPropertyValueResponse>(
      '/proto.services.property_svc.v1.PropertyValueService/AttachPropertyValue',
      ($4.AttachPropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AttachPropertyValueResponse.fromBuffer(value));
  static final _$getAttachedPropertyValues = $grpc.ClientMethod<$4.GetAttachedPropertyValuesRequest, $4.GetAttachedPropertyValuesResponse>(
      '/proto.services.property_svc.v1.PropertyValueService/GetAttachedPropertyValues',
      ($4.GetAttachedPropertyValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetAttachedPropertyValuesResponse.fromBuffer(value));

  PropertyValueServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.AttachPropertyValueResponse> attachPropertyValue($4.AttachPropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachPropertyValue, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($4.GetAttachedPropertyValuesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAttachedPropertyValues, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyValueService')
abstract class PropertyValueServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.property_svc.v1.PropertyValueService';

  PropertyValueServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AttachPropertyValueRequest, $4.AttachPropertyValueResponse>(
        'AttachPropertyValue',
        attachPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AttachPropertyValueRequest.fromBuffer(value),
        ($4.AttachPropertyValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetAttachedPropertyValuesRequest, $4.GetAttachedPropertyValuesResponse>(
        'GetAttachedPropertyValues',
        getAttachedPropertyValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetAttachedPropertyValuesRequest.fromBuffer(value),
        ($4.GetAttachedPropertyValuesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.AttachPropertyValueResponse> attachPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$4.AttachPropertyValueRequest> request) async {
    return attachPropertyValue(call, await request);
  }

  $async.Future<$4.GetAttachedPropertyValuesResponse> getAttachedPropertyValues_Pre($grpc.ServiceCall call, $async.Future<$4.GetAttachedPropertyValuesRequest> request) async {
    return getAttachedPropertyValues(call, await request);
  }

  $async.Future<$4.AttachPropertyValueResponse> attachPropertyValue($grpc.ServiceCall call, $4.AttachPropertyValueRequest request);
  $async.Future<$4.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($grpc.ServiceCall call, $4.GetAttachedPropertyValuesRequest request);
}
