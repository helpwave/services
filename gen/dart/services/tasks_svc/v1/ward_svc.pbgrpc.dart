//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/ward_svc.proto
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

import 'ward_svc.pb.dart' as $16;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$16.CreateWardRequest, $16.CreateWardResponse>(
      '/services.tasks_svc.v1.WardService/CreateWard',
      ($16.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$16.GetWardRequest, $16.GetWardResponse>(
      '/services.tasks_svc.v1.WardService/GetWard',
      ($16.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$16.GetWardsRequest, $16.GetWardsResponse>(
      '/services.tasks_svc.v1.WardService/GetWards',
      ($16.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$16.GetRecentWardsRequest, $16.GetRecentWardsResponse>(
      '/services.tasks_svc.v1.WardService/GetRecentWards',
      ($16.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$16.UpdateWardRequest, $16.UpdateWardResponse>(
      '/services.tasks_svc.v1.WardService/UpdateWard',
      ($16.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$16.DeleteWardRequest, $16.DeleteWardResponse>(
      '/services.tasks_svc.v1.WardService/DeleteWard',
      ($16.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteWardResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$16.GetWardDetailsRequest, $16.GetWardDetailsResponse>(
      '/services.tasks_svc.v1.WardService/GetWardDetails',
      ($16.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetWardDetailsResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$16.GetWardOverviewsRequest, $16.GetWardOverviewsResponse>(
      '/services.tasks_svc.v1.WardService/GetWardOverviews',
      ($16.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetWardOverviewsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.CreateWardResponse> createWard($16.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetWardResponse> getWard($16.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetWardsResponse> getWards($16.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetRecentWardsResponse> getRecentWards($16.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateWardResponse> updateWard($16.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteWardResponse> deleteWard($16.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetWardDetailsResponse> getWardDetails($16.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetWardOverviewsResponse> getWardOverviews($16.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.CreateWardRequest, $16.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateWardRequest.fromBuffer(value),
        ($16.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetWardRequest, $16.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetWardRequest.fromBuffer(value),
        ($16.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetWardsRequest, $16.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetWardsRequest.fromBuffer(value),
        ($16.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetRecentWardsRequest, $16.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetRecentWardsRequest.fromBuffer(value),
        ($16.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateWardRequest, $16.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateWardRequest.fromBuffer(value),
        ($16.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteWardRequest, $16.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteWardRequest.fromBuffer(value),
        ($16.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetWardDetailsRequest, $16.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetWardDetailsRequest.fromBuffer(value),
        ($16.GetWardDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetWardOverviewsRequest, $16.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetWardOverviewsRequest.fromBuffer(value),
        ($16.GetWardOverviewsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$16.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$16.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$16.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$16.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$16.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$16.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$16.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$16.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$16.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$16.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$16.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$16.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$16.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$16.CreateWardResponse> createWard($grpc.ServiceCall call, $16.CreateWardRequest request);
  $async.Future<$16.GetWardResponse> getWard($grpc.ServiceCall call, $16.GetWardRequest request);
  $async.Future<$16.GetWardsResponse> getWards($grpc.ServiceCall call, $16.GetWardsRequest request);
  $async.Future<$16.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $16.GetRecentWardsRequest request);
  $async.Future<$16.UpdateWardResponse> updateWard($grpc.ServiceCall call, $16.UpdateWardRequest request);
  $async.Future<$16.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $16.DeleteWardRequest request);
  $async.Future<$16.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $16.GetWardDetailsRequest request);
  $async.Future<$16.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $16.GetWardOverviewsRequest request);
}
