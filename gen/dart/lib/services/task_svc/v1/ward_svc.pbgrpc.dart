//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/ward_svc.proto
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

import 'ward_svc.pb.dart' as $10;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$10.CreateWardRequest, $10.CreateWardResponse>(
      '/services.task_svc.v1.WardService/CreateWard',
      ($10.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$10.GetWardRequest, $10.GetWardResponse>(
      '/services.task_svc.v1.WardService/GetWard',
      ($10.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$10.GetWardsRequest, $10.GetWardsResponse>(
      '/services.task_svc.v1.WardService/GetWards',
      ($10.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$10.GetRecentWardsRequest, $10.GetRecentWardsResponse>(
      '/services.task_svc.v1.WardService/GetRecentWards',
      ($10.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$10.UpdateWardRequest, $10.UpdateWardResponse>(
      '/services.task_svc.v1.WardService/UpdateWard',
      ($10.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$10.DeleteWardRequest, $10.DeleteWardResponse>(
      '/services.task_svc.v1.WardService/DeleteWard',
      ($10.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteWardResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$10.GetWardOverviewsRequest, $10.GetWardOverviewsResponse>(
      '/services.task_svc.v1.WardService/GetWardOverviews',
      ($10.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetWardOverviewsResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$10.GetWardDetailsRequest, $10.GetWardDetailsResponse>(
      '/services.task_svc.v1.WardService/GetWardDetails',
      ($10.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetWardDetailsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateWardResponse> createWard($10.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetWardResponse> getWard($10.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetWardsResponse> getWards($10.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetRecentWardsResponse> getRecentWards($10.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateWardResponse> updateWard($10.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteWardResponse> deleteWard($10.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetWardOverviewsResponse> getWardOverviews($10.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetWardDetailsResponse> getWardDetails($10.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateWardRequest, $10.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateWardRequest.fromBuffer(value),
        ($10.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetWardRequest, $10.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetWardRequest.fromBuffer(value),
        ($10.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetWardsRequest, $10.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetWardsRequest.fromBuffer(value),
        ($10.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetRecentWardsRequest, $10.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetRecentWardsRequest.fromBuffer(value),
        ($10.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateWardRequest, $10.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateWardRequest.fromBuffer(value),
        ($10.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteWardRequest, $10.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteWardRequest.fromBuffer(value),
        ($10.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetWardOverviewsRequest, $10.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetWardOverviewsRequest.fromBuffer(value),
        ($10.GetWardOverviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetWardDetailsRequest, $10.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetWardDetailsRequest.fromBuffer(value),
        ($10.GetWardDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$10.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$10.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$10.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$10.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$10.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$10.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$10.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$10.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$10.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$10.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$10.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$10.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$10.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$10.CreateWardResponse> createWard($grpc.ServiceCall call, $10.CreateWardRequest request);
  $async.Future<$10.GetWardResponse> getWard($grpc.ServiceCall call, $10.GetWardRequest request);
  $async.Future<$10.GetWardsResponse> getWards($grpc.ServiceCall call, $10.GetWardsRequest request);
  $async.Future<$10.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $10.GetRecentWardsRequest request);
  $async.Future<$10.UpdateWardResponse> updateWard($grpc.ServiceCall call, $10.UpdateWardRequest request);
  $async.Future<$10.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $10.DeleteWardRequest request);
  $async.Future<$10.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $10.GetWardOverviewsRequest request);
  $async.Future<$10.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $10.GetWardDetailsRequest request);
}
