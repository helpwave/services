//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_set_svc.proto
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

import 'property_set_svc.pb.dart' as $3;

export 'property_set_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertySetService')
class PropertySetServiceClient extends $grpc.Client {
  static final _$createPropertySet = $grpc.ClientMethod<$3.CreatePropertySetRequest, $3.CreatePropertySetResponse>(
      '/proto.services.property_svc.v1.PropertySetService/CreatePropertySet',
      ($3.CreatePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePropertySetResponse.fromBuffer(value));
  static final _$getPropertySet = $grpc.ClientMethod<$3.GetPropertySetRequest, $3.GetPropertySetResponse>(
      '/proto.services.property_svc.v1.PropertySetService/GetPropertySet',
      ($3.GetPropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertySetResponse.fromBuffer(value));

  PropertySetServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreatePropertySetResponse> createPropertySet($3.CreatePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPropertySet, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPropertySetResponse> getPropertySet($3.GetPropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertySet, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertySetService')
abstract class PropertySetServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.property_svc.v1.PropertySetService';

  PropertySetServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreatePropertySetRequest, $3.CreatePropertySetResponse>(
        'CreatePropertySet',
        createPropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePropertySetRequest.fromBuffer(value),
        ($3.CreatePropertySetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPropertySetRequest, $3.GetPropertySetResponse>(
        'GetPropertySet',
        getPropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertySetRequest.fromBuffer(value),
        ($3.GetPropertySetResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePropertySetResponse> createPropertySet_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePropertySetRequest> request) async {
    return createPropertySet(call, await request);
  }

  $async.Future<$3.GetPropertySetResponse> getPropertySet_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertySetRequest> request) async {
    return getPropertySet(call, await request);
  }

  $async.Future<$3.CreatePropertySetResponse> createPropertySet($grpc.ServiceCall call, $3.CreatePropertySetRequest request);
  $async.Future<$3.GetPropertySetResponse> getPropertySet($grpc.ServiceCall call, $3.GetPropertySetRequest request);
}
