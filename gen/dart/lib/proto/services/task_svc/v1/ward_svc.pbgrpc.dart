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

import 'ward_svc.pb.dart' as $11;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$11.CreateWardRequest, $11.CreateWardResponse>(
      '/proto.services.task_svc.v1.WardService/CreateWard',
      ($11.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$11.GetWardRequest, $11.GetWardResponse>(
      '/proto.services.task_svc.v1.WardService/GetWard',
      ($11.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$11.GetWardsRequest, $11.GetWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWards',
      ($11.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$11.GetRecentWardsRequest, $11.GetRecentWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetRecentWards',
      ($11.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$11.UpdateWardRequest, $11.UpdateWardResponse>(
      '/proto.services.task_svc.v1.WardService/UpdateWard',
      ($11.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$11.DeleteWardRequest, $11.DeleteWardResponse>(
      '/proto.services.task_svc.v1.WardService/DeleteWard',
      ($11.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteWardResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$11.GetWardOverviewsRequest, $11.GetWardOverviewsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardOverviews',
      ($11.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetWardOverviewsResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$11.GetWardDetailsRequest, $11.GetWardDetailsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardDetails',
      ($11.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetWardDetailsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateWardResponse> createWard($11.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetWardResponse> getWard($11.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetWardsResponse> getWards($11.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetRecentWardsResponse> getRecentWards($11.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateWardResponse> updateWard($11.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteWardResponse> deleteWard($11.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetWardOverviewsResponse> getWardOverviews($11.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetWardDetailsResponse> getWardDetails($11.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateWardRequest, $11.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateWardRequest.fromBuffer(value),
        ($11.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetWardRequest, $11.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetWardRequest.fromBuffer(value),
        ($11.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetWardsRequest, $11.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetWardsRequest.fromBuffer(value),
        ($11.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetRecentWardsRequest, $11.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetRecentWardsRequest.fromBuffer(value),
        ($11.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateWardRequest, $11.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateWardRequest.fromBuffer(value),
        ($11.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteWardRequest, $11.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteWardRequest.fromBuffer(value),
        ($11.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetWardOverviewsRequest, $11.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetWardOverviewsRequest.fromBuffer(value),
        ($11.GetWardOverviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetWardDetailsRequest, $11.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetWardDetailsRequest.fromBuffer(value),
        ($11.GetWardDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$11.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$11.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$11.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$11.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$11.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$11.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$11.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$11.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$11.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$11.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$11.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$11.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$11.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$11.CreateWardResponse> createWard($grpc.ServiceCall call, $11.CreateWardRequest request);
  $async.Future<$11.GetWardResponse> getWard($grpc.ServiceCall call, $11.GetWardRequest request);
  $async.Future<$11.GetWardsResponse> getWards($grpc.ServiceCall call, $11.GetWardsRequest request);
  $async.Future<$11.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $11.GetRecentWardsRequest request);
  $async.Future<$11.UpdateWardResponse> updateWard($grpc.ServiceCall call, $11.UpdateWardRequest request);
  $async.Future<$11.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $11.DeleteWardRequest request);
  $async.Future<$11.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $11.GetWardOverviewsRequest request);
  $async.Future<$11.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $11.GetWardDetailsRequest request);
}
