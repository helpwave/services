//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
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

import 'ward_svc.pb.dart' as $8;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$8.CreateWardRequest, $8.CreateWardResponse>(
      '/proto.services.task_svc.v1.WardService/CreateWard',
      ($8.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$8.GetWardRequest, $8.GetWardResponse>(
      '/proto.services.task_svc.v1.WardService/GetWard',
      ($8.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$8.GetWardsRequest, $8.GetWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWards',
      ($8.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$8.UpdateWardRequest, $8.UpdateWardResponse>(
      '/proto.services.task_svc.v1.WardService/UpdateWard',
      ($8.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$8.DeleteWardRequest, $8.DeleteWardResponse>(
      '/proto.services.task_svc.v1.WardService/DeleteWard',
      ($8.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteWardResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$8.GetWardOverviewsRequest, $8.GetWardOverviewsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardOverviews',
      ($8.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetWardOverviewsResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$8.GetWardDetailsRequest, $8.GetWardDetailsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardDetails',
      ($8.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetWardDetailsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateWardResponse> createWard($8.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetWardResponse> getWard($8.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetWardsResponse> getWards($8.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateWardResponse> updateWard($8.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteWardResponse> deleteWard($8.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetWardOverviewsResponse> getWardOverviews($8.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetWardDetailsResponse> getWardDetails($8.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateWardRequest, $8.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateWardRequest.fromBuffer(value),
        ($8.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetWardRequest, $8.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetWardRequest.fromBuffer(value),
        ($8.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetWardsRequest, $8.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetWardsRequest.fromBuffer(value),
        ($8.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateWardRequest, $8.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateWardRequest.fromBuffer(value),
        ($8.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteWardRequest, $8.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteWardRequest.fromBuffer(value),
        ($8.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetWardOverviewsRequest, $8.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetWardOverviewsRequest.fromBuffer(value),
        ($8.GetWardOverviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetWardDetailsRequest, $8.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetWardDetailsRequest.fromBuffer(value),
        ($8.GetWardDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$8.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$8.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$8.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$8.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$8.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$8.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$8.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$8.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$8.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$8.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$8.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$8.CreateWardResponse> createWard($grpc.ServiceCall call, $8.CreateWardRequest request);
  $async.Future<$8.GetWardResponse> getWard($grpc.ServiceCall call, $8.GetWardRequest request);
  $async.Future<$8.GetWardsResponse> getWards($grpc.ServiceCall call, $8.GetWardsRequest request);
  $async.Future<$8.UpdateWardResponse> updateWard($grpc.ServiceCall call, $8.UpdateWardRequest request);
  $async.Future<$8.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $8.DeleteWardRequest request);
  $async.Future<$8.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $8.GetWardOverviewsRequest request);
  $async.Future<$8.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $8.GetWardDetailsRequest request);
}
