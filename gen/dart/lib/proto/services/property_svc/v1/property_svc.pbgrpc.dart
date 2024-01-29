//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_svc.proto
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

import 'property_svc.pb.dart' as $4;

export 'property_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyService')
class PropertyServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$4.CreatePropertyRequest, $4.CreatePropertyResponse>(
      '/proto.services.property_svc.v1.PropertyService/CreateProperty',
      ($4.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreatePropertyResponse.fromBuffer(value));
  static final _$getProperty = $grpc.ClientMethod<$4.GetPropertyRequest, $4.GetPropertyResponse>(
      '/proto.services.property_svc.v1.PropertyService/GetProperty',
      ($4.GetPropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPropertyResponse.fromBuffer(value));

  PropertyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreatePropertyResponse> createProperty($4.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPropertyResponse> getProperty($4.GetPropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperty, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyService')
abstract class PropertyServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.property_svc.v1.PropertyService';

  PropertyServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreatePropertyRequest, $4.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreatePropertyRequest.fromBuffer(value),
        ($4.CreatePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPropertyRequest, $4.GetPropertyResponse>(
        'GetProperty',
        getProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPropertyRequest.fromBuffer(value),
        ($4.GetPropertyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$4.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$4.GetPropertyResponse> getProperty_Pre($grpc.ServiceCall call, $async.Future<$4.GetPropertyRequest> request) async {
    return getProperty(call, await request);
  }

  $async.Future<$4.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $4.CreatePropertyRequest request);
  $async.Future<$4.GetPropertyResponse> getProperty($grpc.ServiceCall call, $4.GetPropertyRequest request);
}
