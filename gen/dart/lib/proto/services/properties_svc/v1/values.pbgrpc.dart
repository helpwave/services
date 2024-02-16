//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/values.proto
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

import 'values.pb.dart' as $5;

export 'values.pb.dart';

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertyValuesService')
class PropertyValuesServiceClient extends $grpc.Client {
  static final _$attachPropertyValue = $grpc.ClientMethod<$5.AttachPropertyValueRequest, $5.AttachPropertyValueResponse>(
      '/proto.services.properties_svc.v1.PropertyValuesService/AttachPropertyValue',
      ($5.AttachPropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AttachPropertyValueResponse.fromBuffer(value));
  static final _$getAttachedPropertyValues = $grpc.ClientMethod<$5.GetAttachedPropertyValuesRequest, $5.GetAttachedPropertyValuesResponse>(
      '/proto.services.properties_svc.v1.PropertyValuesService/GetAttachedPropertyValues',
      ($5.GetAttachedPropertyValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetAttachedPropertyValuesResponse.fromBuffer(value));

  PropertyValuesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.AttachPropertyValueResponse> attachPropertyValue($5.AttachPropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachPropertyValue, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($5.GetAttachedPropertyValuesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAttachedPropertyValues, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertyValuesService')
abstract class PropertyValuesServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.properties_svc.v1.PropertyValuesService';

  PropertyValuesServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.AttachPropertyValueRequest, $5.AttachPropertyValueResponse>(
        'AttachPropertyValue',
        attachPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AttachPropertyValueRequest.fromBuffer(value),
        ($5.AttachPropertyValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetAttachedPropertyValuesRequest, $5.GetAttachedPropertyValuesResponse>(
        'GetAttachedPropertyValues',
        getAttachedPropertyValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetAttachedPropertyValuesRequest.fromBuffer(value),
        ($5.GetAttachedPropertyValuesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.AttachPropertyValueResponse> attachPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$5.AttachPropertyValueRequest> request) async {
    return attachPropertyValue(call, await request);
  }

  $async.Future<$5.GetAttachedPropertyValuesResponse> getAttachedPropertyValues_Pre($grpc.ServiceCall call, $async.Future<$5.GetAttachedPropertyValuesRequest> request) async {
    return getAttachedPropertyValues(call, await request);
  }

  $async.Future<$5.AttachPropertyValueResponse> attachPropertyValue($grpc.ServiceCall call, $5.AttachPropertyValueRequest request);
  $async.Future<$5.GetAttachedPropertyValuesResponse> getAttachedPropertyValues($grpc.ServiceCall call, $5.GetAttachedPropertyValuesRequest request);
}
