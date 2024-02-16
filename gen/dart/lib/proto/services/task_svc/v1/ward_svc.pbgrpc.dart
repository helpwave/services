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

import 'ward_svc.pb.dart' as $12;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$12.CreateWardRequest, $12.CreateWardResponse>(
      '/proto.services.task_svc.v1.WardService/CreateWard',
      ($12.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$12.GetWardRequest, $12.GetWardResponse>(
      '/proto.services.task_svc.v1.WardService/GetWard',
      ($12.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$12.GetWardsRequest, $12.GetWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWards',
      ($12.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$12.GetRecentWardsRequest, $12.GetRecentWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetRecentWards',
      ($12.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$12.UpdateWardRequest, $12.UpdateWardResponse>(
      '/proto.services.task_svc.v1.WardService/UpdateWard',
      ($12.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$12.DeleteWardRequest, $12.DeleteWardResponse>(
      '/proto.services.task_svc.v1.WardService/DeleteWard',
      ($12.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteWardResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$12.GetWardOverviewsRequest, $12.GetWardOverviewsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardOverviews',
      ($12.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetWardOverviewsResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$12.GetWardDetailsRequest, $12.GetWardDetailsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardDetails',
      ($12.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetWardDetailsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateWardResponse> createWard($12.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetWardResponse> getWard($12.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetWardsResponse> getWards($12.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetRecentWardsResponse> getRecentWards($12.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateWardResponse> updateWard($12.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteWardResponse> deleteWard($12.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetWardOverviewsResponse> getWardOverviews($12.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetWardDetailsResponse> getWardDetails($12.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateWardRequest, $12.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateWardRequest.fromBuffer(value),
        ($12.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetWardRequest, $12.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetWardRequest.fromBuffer(value),
        ($12.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetWardsRequest, $12.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetWardsRequest.fromBuffer(value),
        ($12.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetRecentWardsRequest, $12.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetRecentWardsRequest.fromBuffer(value),
        ($12.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateWardRequest, $12.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateWardRequest.fromBuffer(value),
        ($12.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteWardRequest, $12.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteWardRequest.fromBuffer(value),
        ($12.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetWardOverviewsRequest, $12.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetWardOverviewsRequest.fromBuffer(value),
        ($12.GetWardOverviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetWardDetailsRequest, $12.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetWardDetailsRequest.fromBuffer(value),
        ($12.GetWardDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$12.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$12.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$12.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$12.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$12.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$12.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$12.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$12.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$12.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$12.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$12.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$12.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$12.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$12.CreateWardResponse> createWard($grpc.ServiceCall call, $12.CreateWardRequest request);
  $async.Future<$12.GetWardResponse> getWard($grpc.ServiceCall call, $12.GetWardRequest request);
  $async.Future<$12.GetWardsResponse> getWards($grpc.ServiceCall call, $12.GetWardsRequest request);
  $async.Future<$12.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $12.GetRecentWardsRequest request);
  $async.Future<$12.UpdateWardResponse> updateWard($grpc.ServiceCall call, $12.UpdateWardRequest request);
  $async.Future<$12.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $12.DeleteWardRequest request);
  $async.Future<$12.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $12.GetWardOverviewsRequest request);
  $async.Future<$12.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $12.GetWardDetailsRequest request);
}
