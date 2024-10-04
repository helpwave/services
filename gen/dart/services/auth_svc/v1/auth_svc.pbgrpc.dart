//
//  Generated code. Do not modify.
//  source: services/auth_svc/v1/auth_svc.proto
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

import 'auth_svc.pb.dart' as $0;

export 'auth_svc.pb.dart';

@$pb.GrpcServiceName('services.auth_svc.v1.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$prelimAuthRequest = $grpc.ClientMethod<$0.PrelimAuthRequestRequest, $0.PrelimAuthRequestResponse>(
      '/services.auth_svc.v1.AuthService/PrelimAuthRequest',
      ($0.PrelimAuthRequestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PrelimAuthRequestResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PrelimAuthRequestResponse> prelimAuthRequest($0.PrelimAuthRequestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$prelimAuthRequest, request, options: options);
  }
}

@$pb.GrpcServiceName('services.auth_svc.v1.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'services.auth_svc.v1.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PrelimAuthRequestRequest, $0.PrelimAuthRequestResponse>(
        'PrelimAuthRequest',
        prelimAuthRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PrelimAuthRequestRequest.fromBuffer(value),
        ($0.PrelimAuthRequestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PrelimAuthRequestResponse> prelimAuthRequest_Pre($grpc.ServiceCall call, $async.Future<$0.PrelimAuthRequestRequest> request) async {
    return prelimAuthRequest(call, await request);
  }

  $async.Future<$0.PrelimAuthRequestResponse> prelimAuthRequest($grpc.ServiceCall call, $0.PrelimAuthRequestRequest request);
}
