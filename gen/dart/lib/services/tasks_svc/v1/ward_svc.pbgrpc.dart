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

import 'ward_svc.pb.dart' as $17;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$17.CreateWardRequest, $17.CreateWardResponse>(
      '/services.tasks_svc.v1.WardService/CreateWard',
      ($17.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$17.GetWardRequest, $17.GetWardResponse>(
      '/services.tasks_svc.v1.WardService/GetWard',
      ($17.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$17.GetWardsRequest, $17.GetWardsResponse>(
      '/services.tasks_svc.v1.WardService/GetWards',
      ($17.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetWardsResponse.fromBuffer(value));
  static final _$getRecentWards = $grpc.ClientMethod<$17.GetRecentWardsRequest, $17.GetRecentWardsResponse>(
      '/services.tasks_svc.v1.WardService/GetRecentWards',
      ($17.GetRecentWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetRecentWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$17.UpdateWardRequest, $17.UpdateWardResponse>(
      '/services.tasks_svc.v1.WardService/UpdateWard',
      ($17.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$17.DeleteWardRequest, $17.DeleteWardResponse>(
      '/services.tasks_svc.v1.WardService/DeleteWard',
      ($17.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteWardResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$17.GetWardDetailsRequest, $17.GetWardDetailsResponse>(
      '/services.tasks_svc.v1.WardService/GetWardDetails',
      ($17.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetWardDetailsResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$17.GetWardOverviewsRequest, $17.GetWardOverviewsResponse>(
      '/services.tasks_svc.v1.WardService/GetWardOverviews',
      ($17.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetWardOverviewsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateWardResponse> createWard($17.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetWardResponse> getWard($17.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetWardsResponse> getWards($17.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetRecentWardsResponse> getRecentWards($17.GetRecentWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentWards, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateWardResponse> updateWard($17.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteWardResponse> deleteWard($17.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetWardDetailsResponse> getWardDetails($17.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetWardOverviewsResponse> getWardOverviews($17.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateWardRequest, $17.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateWardRequest.fromBuffer(value),
        ($17.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetWardRequest, $17.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetWardRequest.fromBuffer(value),
        ($17.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetWardsRequest, $17.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetWardsRequest.fromBuffer(value),
        ($17.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetRecentWardsRequest, $17.GetRecentWardsResponse>(
        'GetRecentWards',
        getRecentWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetRecentWardsRequest.fromBuffer(value),
        ($17.GetRecentWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateWardRequest, $17.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateWardRequest.fromBuffer(value),
        ($17.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteWardRequest, $17.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteWardRequest.fromBuffer(value),
        ($17.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetWardDetailsRequest, $17.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetWardDetailsRequest.fromBuffer(value),
        ($17.GetWardDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetWardOverviewsRequest, $17.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetWardOverviewsRequest.fromBuffer(value),
        ($17.GetWardOverviewsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$17.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$17.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$17.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$17.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$17.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$17.GetRecentWardsResponse> getRecentWards_Pre($grpc.ServiceCall call, $async.Future<$17.GetRecentWardsRequest> request) async {
    return getRecentWards(call, await request);
  }

  $async.Future<$17.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$17.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$17.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$17.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$17.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$17.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$17.CreateWardResponse> createWard($grpc.ServiceCall call, $17.CreateWardRequest request);
  $async.Future<$17.GetWardResponse> getWard($grpc.ServiceCall call, $17.GetWardRequest request);
  $async.Future<$17.GetWardsResponse> getWards($grpc.ServiceCall call, $17.GetWardsRequest request);
  $async.Future<$17.GetRecentWardsResponse> getRecentWards($grpc.ServiceCall call, $17.GetRecentWardsRequest request);
  $async.Future<$17.UpdateWardResponse> updateWard($grpc.ServiceCall call, $17.UpdateWardRequest request);
  $async.Future<$17.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $17.DeleteWardRequest request);
  $async.Future<$17.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $17.GetWardDetailsRequest request);
  $async.Future<$17.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $17.GetWardOverviewsRequest request);
}
