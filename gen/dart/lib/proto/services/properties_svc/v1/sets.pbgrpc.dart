//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/sets.proto
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

import 'sets.pb.dart' as $4;

export 'sets.pb.dart';

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertySetsService')
class PropertySetsServiceClient extends $grpc.Client {
  static final _$createPropertySet = $grpc.ClientMethod<$4.CreatePropertySetRequest, $4.CreatePropertySetResponse>(
      '/proto.services.properties_svc.v1.PropertySetsService/CreatePropertySet',
      ($4.CreatePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreatePropertySetResponse.fromBuffer(value));
  static final _$updatePropertySet = $grpc.ClientMethod<$4.UpdatePropertySetRequest, $4.UpdatePropertySetResponse>(
      '/proto.services.properties_svc.v1.PropertySetsService/UpdatePropertySet',
      ($4.UpdatePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdatePropertySetResponse.fromBuffer(value));
  static final _$deletePropertySet = $grpc.ClientMethod<$4.DeletePropertySetRequest, $4.DeletePropertySetResponse>(
      '/proto.services.properties_svc.v1.PropertySetsService/DeletePropertySet',
      ($4.DeletePropertySetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeletePropertySetResponse.fromBuffer(value));

  PropertySetsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreatePropertySetResponse> createPropertySet($4.CreatePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPropertySet, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdatePropertySetResponse> updatePropertySet($4.UpdatePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertySet, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeletePropertySetResponse> deletePropertySet($4.DeletePropertySetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePropertySet, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.properties_svc.v1.PropertySetsService')
abstract class PropertySetsServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.properties_svc.v1.PropertySetsService';

  PropertySetsServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreatePropertySetRequest, $4.CreatePropertySetResponse>(
        'CreatePropertySet',
        createPropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreatePropertySetRequest.fromBuffer(value),
        ($4.CreatePropertySetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdatePropertySetRequest, $4.UpdatePropertySetResponse>(
        'UpdatePropertySet',
        updatePropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdatePropertySetRequest.fromBuffer(value),
        ($4.UpdatePropertySetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeletePropertySetRequest, $4.DeletePropertySetResponse>(
        'DeletePropertySet',
        deletePropertySet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeletePropertySetRequest.fromBuffer(value),
        ($4.DeletePropertySetResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreatePropertySetResponse> createPropertySet_Pre($grpc.ServiceCall call, $async.Future<$4.CreatePropertySetRequest> request) async {
    return createPropertySet(call, await request);
  }

  $async.Future<$4.UpdatePropertySetResponse> updatePropertySet_Pre($grpc.ServiceCall call, $async.Future<$4.UpdatePropertySetRequest> request) async {
    return updatePropertySet(call, await request);
  }

  $async.Future<$4.DeletePropertySetResponse> deletePropertySet_Pre($grpc.ServiceCall call, $async.Future<$4.DeletePropertySetRequest> request) async {
    return deletePropertySet(call, await request);
  }

  $async.Future<$4.CreatePropertySetResponse> createPropertySet($grpc.ServiceCall call, $4.CreatePropertySetRequest request);
  $async.Future<$4.UpdatePropertySetResponse> updatePropertySet($grpc.ServiceCall call, $4.UpdatePropertySetRequest request);
  $async.Future<$4.DeletePropertySetResponse> deletePropertySet($grpc.ServiceCall call, $4.DeletePropertySetRequest request);
}
