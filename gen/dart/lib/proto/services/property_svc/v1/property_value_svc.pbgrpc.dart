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

import 'property_value_svc.pb.dart' as $5;

export 'property_value_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyValueService')
class PropertyValueServiceClient extends $grpc.Client {
  static final _$createPropertyValue = $grpc.ClientMethod<$5.CreatePropertyValueRequest, $5.CreatePropertyValueResponse>(
      '/proto.services.property_svc.v1.PropertyValueService/CreatePropertyValue',
      ($5.CreatePropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreatePropertyValueResponse.fromBuffer(value));
  static final _$getPropertyValue = $grpc.ClientMethod<$5.GetPropertyValueRequest, $5.GetPropertyValueResponse>(
      '/proto.services.property_svc.v1.PropertyValueService/GetPropertyValue',
      ($5.GetPropertyValueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPropertyValueResponse.fromBuffer(value));

  PropertyValueServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreatePropertyValueResponse> createPropertyValue($5.CreatePropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPropertyValue, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPropertyValueResponse> getPropertyValue($5.GetPropertyValueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertyValue, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyValueService')
abstract class PropertyValueServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.property_svc.v1.PropertyValueService';

  PropertyValueServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreatePropertyValueRequest, $5.CreatePropertyValueResponse>(
        'CreatePropertyValue',
        createPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreatePropertyValueRequest.fromBuffer(value),
        ($5.CreatePropertyValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPropertyValueRequest, $5.GetPropertyValueResponse>(
        'GetPropertyValue',
        getPropertyValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPropertyValueRequest.fromBuffer(value),
        ($5.GetPropertyValueResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreatePropertyValueResponse> createPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$5.CreatePropertyValueRequest> request) async {
    return createPropertyValue(call, await request);
  }

  $async.Future<$5.GetPropertyValueResponse> getPropertyValue_Pre($grpc.ServiceCall call, $async.Future<$5.GetPropertyValueRequest> request) async {
    return getPropertyValue(call, await request);
  }

  $async.Future<$5.CreatePropertyValueResponse> createPropertyValue($grpc.ServiceCall call, $5.CreatePropertyValueRequest request);
  $async.Future<$5.GetPropertyValueResponse> getPropertyValue($grpc.ServiceCall call, $5.GetPropertyValueRequest request);
}
