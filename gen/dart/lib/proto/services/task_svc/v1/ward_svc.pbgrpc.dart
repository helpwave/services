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

import 'ward_svc.pb.dart' as $9;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$9.CreateWardRequest, $9.CreateWardResponse>(
      '/proto.services.task_svc.v1.WardService/CreateWard',
      ($9.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$9.GetWardRequest, $9.GetWardResponse>(
      '/proto.services.task_svc.v1.WardService/GetWard',
      ($9.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$9.GetWardsRequest, $9.GetWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWards',
      ($9.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$9.GetRecentWardsRequest, $9.GetRecentWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetRecentWards',
      ($9.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$9.UpdateWardRequest, $9.UpdateWardResponse>(
      '/proto.services.task_svc.v1.WardService/UpdateWard',
      ($9.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$9.DeleteWardRequest, $9.DeleteWardResponse>(
      '/proto.services.task_svc.v1.WardService/DeleteWard',
      ($9.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteWardResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$9.GetWardOverviewsRequest, $9.GetWardOverviewsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardOverviews',
      ($9.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetWardOverviewsResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$9.GetWardDetailsRequest, $9.GetWardDetailsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardDetails',
      ($9.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetWardDetailsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateWardResponse> createWard($9.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetWardResponse> getWard($9.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetWardsResponse> getWards($9.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetRecentWardsResponse> getRecentWards($9.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateWardResponse> updateWard($9.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteWardResponse> deleteWard($9.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetWardOverviewsResponse> getWardOverviews($9.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetWardDetailsResponse> getWardDetails($9.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateWardRequest, $9.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateWardRequest.fromBuffer(value),
        ($9.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetWardRequest, $9.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetWardRequest.fromBuffer(value),
        ($9.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetWardsRequest, $9.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetWardsRequest.fromBuffer(value),
        ($9.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetRecentWardsRequest, $9.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetRecentWardsRequest.fromBuffer(value),
        ($9.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateWardRequest, $9.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateWardRequest.fromBuffer(value),
        ($9.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteWardRequest, $9.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteWardRequest.fromBuffer(value),
        ($9.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetWardOverviewsRequest, $9.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetWardOverviewsRequest.fromBuffer(value),
        ($9.GetWardOverviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetWardDetailsRequest, $9.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetWardDetailsRequest.fromBuffer(value),
        ($9.GetWardDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$9.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$9.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$9.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$9.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$9.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$9.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$9.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$9.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$9.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$9.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$9.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$9.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$9.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$9.CreateWardResponse> createWard($grpc.ServiceCall call, $9.CreateWardRequest request);
  $async.Future<$9.GetWardResponse> getWard($grpc.ServiceCall call, $9.GetWardRequest request);
  $async.Future<$9.GetWardsResponse> getWards($grpc.ServiceCall call, $9.GetWardsRequest request);
  $async.Future<$9.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $9.GetRecentWardsRequest request);
  $async.Future<$9.UpdateWardResponse> updateWard($grpc.ServiceCall call, $9.UpdateWardRequest request);
  $async.Future<$9.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $9.DeleteWardRequest request);
  $async.Future<$9.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $9.GetWardOverviewsRequest request);
  $async.Future<$9.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $9.GetWardDetailsRequest request);
}
