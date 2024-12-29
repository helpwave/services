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

import 'ward_svc.pb.dart' as $5;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$5.CreateWardRequest, $5.CreateWardResponse>(
      '/services.tasks_svc.v1.WardService/CreateWard',
      ($5.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$5.GetWardRequest, $5.GetWardResponse>(
      '/services.tasks_svc.v1.WardService/GetWard',
      ($5.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$5.GetWardsRequest, $5.GetWardsResponse>(
      '/services.tasks_svc.v1.WardService/GetWards',
      ($5.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$5.GetRecentWardsRequest, $5.GetRecentWardsResponse>(
      '/services.tasks_svc.v1.WardService/GetRecentWards',
      ($5.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$5.UpdateWardRequest, $5.UpdateWardResponse>(
      '/services.tasks_svc.v1.WardService/UpdateWard',
      ($5.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$5.DeleteWardRequest, $5.DeleteWardResponse>(
      '/services.tasks_svc.v1.WardService/DeleteWard',
      ($5.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteWardResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$5.GetWardDetailsRequest, $5.GetWardDetailsResponse>(
      '/services.tasks_svc.v1.WardService/GetWardDetails',
      ($5.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetWardDetailsResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$5.GetWardOverviewsRequest, $5.GetWardOverviewsResponse>(
      '/services.tasks_svc.v1.WardService/GetWardOverviews',
      ($5.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetWardOverviewsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateWardResponse> createWard($5.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetWardResponse> getWard($5.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetWardsResponse> getWards($5.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRecentWardsResponse> getRecentWards($5.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateWardResponse> updateWard($5.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteWardResponse> deleteWard($5.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetWardDetailsResponse> getWardDetails($5.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetWardOverviewsResponse> getWardOverviews($5.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateWardRequest, $5.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateWardRequest.fromBuffer(value),
        ($5.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetWardRequest, $5.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetWardRequest.fromBuffer(value),
        ($5.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetWardsRequest, $5.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetWardsRequest.fromBuffer(value),
        ($5.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRecentWardsRequest, $5.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRecentWardsRequest.fromBuffer(value),
        ($5.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateWardRequest, $5.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateWardRequest.fromBuffer(value),
        ($5.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteWardRequest, $5.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteWardRequest.fromBuffer(value),
        ($5.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetWardDetailsRequest, $5.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetWardDetailsRequest.fromBuffer(value),
        ($5.GetWardDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetWardOverviewsRequest, $5.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetWardOverviewsRequest.fromBuffer(value),
        ($5.GetWardOverviewsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$5.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$5.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$5.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$5.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$5.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$5.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$5.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$5.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$5.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$5.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$5.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$5.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$5.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$5.CreateWardResponse> createWard($grpc.ServiceCall call, $5.CreateWardRequest request);
  $async.Future<$5.GetWardResponse> getWard($grpc.ServiceCall call, $5.GetWardRequest request);
  $async.Future<$5.GetWardsResponse> getWards($grpc.ServiceCall call, $5.GetWardsRequest request);
  $async.Future<$5.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $5.GetRecentWardsRequest request);
  $async.Future<$5.UpdateWardResponse> updateWard($grpc.ServiceCall call, $5.UpdateWardRequest request);
  $async.Future<$5.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $5.DeleteWardRequest request);
  $async.Future<$5.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $5.GetWardDetailsRequest request);
  $async.Future<$5.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $5.GetWardOverviewsRequest request);
}
