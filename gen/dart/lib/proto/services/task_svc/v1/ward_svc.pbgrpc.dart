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

import 'ward_svc.pb.dart' as $7;

export 'ward_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
class WardServiceClient extends $grpc.Client {
  static final _$createWard = $grpc.ClientMethod<$7.CreateWardRequest, $7.CreateWardResponse>(
      '/proto.services.task_svc.v1.WardService/CreateWard',
      ($7.CreateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateWardResponse.fromBuffer(value));
  static final _$getWard = $grpc.ClientMethod<$7.GetWardRequest, $7.GetWardResponse>(
      '/proto.services.task_svc.v1.WardService/GetWard',
      ($7.GetWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetWardResponse.fromBuffer(value));
  static final _$getWards = $grpc.ClientMethod<$7.GetWardsRequest, $7.GetWardsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWards',
      ($7.GetWardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetWardsResponse.fromBuffer(value));
  static final _$updateWard = $grpc.ClientMethod<$7.UpdateWardRequest, $7.UpdateWardResponse>(
      '/proto.services.task_svc.v1.WardService/UpdateWard',
      ($7.UpdateWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateWardResponse.fromBuffer(value));
  static final _$deleteWard = $grpc.ClientMethod<$7.DeleteWardRequest, $7.DeleteWardResponse>(
      '/proto.services.task_svc.v1.WardService/DeleteWard',
      ($7.DeleteWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteWardResponse.fromBuffer(value));
  static final _$getWardOverviews = $grpc.ClientMethod<$7.GetWardOverviewsRequest, $7.GetWardOverviewsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardOverviews',
      ($7.GetWardOverviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetWardOverviewsResponse.fromBuffer(value));
  static final _$getWardDetails = $grpc.ClientMethod<$7.GetWardDetailsRequest, $7.GetWardDetailsResponse>(
      '/proto.services.task_svc.v1.WardService/GetWardDetails',
      ($7.GetWardDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetWardDetailsResponse.fromBuffer(value));

  WardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateWardResponse> createWard($7.CreateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetWardResponse> getWard($7.GetWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetWardsResponse> getWards($7.GetWardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWards, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateWardResponse> updateWard($7.UpdateWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteWardResponse> deleteWard($7.DeleteWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetWardOverviewsResponse> getWardOverviews($7.GetWardOverviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardOverviews, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetWardDetailsResponse> getWardDetails($7.GetWardDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWardDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.WardService')
abstract class WardServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.WardService';

  WardServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateWardRequest, $7.CreateWardResponse>(
        'CreateWard',
        createWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateWardRequest.fromBuffer(value),
        ($7.CreateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetWardRequest, $7.GetWardResponse>(
        'GetWard',
        getWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetWardRequest.fromBuffer(value),
        ($7.GetWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetWardsRequest, $7.GetWardsResponse>(
        'GetWards',
        getWards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetWardsRequest.fromBuffer(value),
        ($7.GetWardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateWardRequest, $7.UpdateWardResponse>(
        'UpdateWard',
        updateWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateWardRequest.fromBuffer(value),
        ($7.UpdateWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteWardRequest, $7.DeleteWardResponse>(
        'DeleteWard',
        deleteWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteWardRequest.fromBuffer(value),
        ($7.DeleteWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetWardOverviewsRequest, $7.GetWardOverviewsResponse>(
        'GetWardOverviews',
        getWardOverviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetWardOverviewsRequest.fromBuffer(value),
        ($7.GetWardOverviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetWardDetailsRequest, $7.GetWardDetailsResponse>(
        'GetWardDetails',
        getWardDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetWardDetailsRequest.fromBuffer(value),
        ($7.GetWardDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateWardResponse> createWard_Pre($grpc.ServiceCall call, $async.Future<$7.CreateWardRequest> request) async {
    return createWard(call, await request);
  }

  $async.Future<$7.GetWardResponse> getWard_Pre($grpc.ServiceCall call, $async.Future<$7.GetWardRequest> request) async {
    return getWard(call, await request);
  }

  $async.Future<$7.GetWardsResponse> getWards_Pre($grpc.ServiceCall call, $async.Future<$7.GetWardsRequest> request) async {
    return getWards(call, await request);
  }

  $async.Future<$7.UpdateWardResponse> updateWard_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateWardRequest> request) async {
    return updateWard(call, await request);
  }

  $async.Future<$7.DeleteWardResponse> deleteWard_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteWardRequest> request) async {
    return deleteWard(call, await request);
  }

  $async.Future<$7.GetWardOverviewsResponse> getWardOverviews_Pre($grpc.ServiceCall call, $async.Future<$7.GetWardOverviewsRequest> request) async {
    return getWardOverviews(call, await request);
  }

  $async.Future<$7.GetWardDetailsResponse> getWardDetails_Pre($grpc.ServiceCall call, $async.Future<$7.GetWardDetailsRequest> request) async {
    return getWardDetails(call, await request);
  }

  $async.Future<$7.CreateWardResponse> createWard($grpc.ServiceCall call, $7.CreateWardRequest request);
  $async.Future<$7.GetWardResponse> getWard($grpc.ServiceCall call, $7.GetWardRequest request);
  $async.Future<$7.GetWardsResponse> getWards($grpc.ServiceCall call, $7.GetWardsRequest request);
  $async.Future<$7.UpdateWardResponse> updateWard($grpc.ServiceCall call, $7.UpdateWardRequest request);
  $async.Future<$7.DeleteWardResponse> deleteWard($grpc.ServiceCall call, $7.DeleteWardRequest request);
  $async.Future<$7.GetWardOverviewsResponse> getWardOverviews($grpc.ServiceCall call, $7.GetWardOverviewsRequest request);
  $async.Future<$7.GetWardDetailsResponse> getWardDetails($grpc.ServiceCall call, $7.GetWardDetailsRequest request);
}
