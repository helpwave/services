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

import 'property_svc.pb.dart' as $3;

export 'property_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyService')
class PropertyServiceClient extends $grpc.Client {
  static final _$createProperty = $grpc.ClientMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
      '/proto.services.property_svc.v1.PropertyService/CreateProperty',
      ($3.CreatePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePropertyResponse.fromBuffer(value));

  PropertyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreatePropertyResponse> createProperty($3.CreatePropertyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.property_svc.v1.PropertyService')
abstract class PropertyServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.property_svc.v1.PropertyService';

  PropertyServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreatePropertyRequest, $3.CreatePropertyResponse>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePropertyRequest.fromBuffer(value),
        ($3.CreatePropertyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePropertyResponse> createProperty_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$3.CreatePropertyResponse> createProperty($grpc.ServiceCall call, $3.CreatePropertyRequest request);
}
