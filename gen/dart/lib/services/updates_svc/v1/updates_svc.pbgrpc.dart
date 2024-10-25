//
//  Generated code. Do not modify.
//  source: services/updates_svc/v1/updates_svc.proto
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

import 'updates_svc.pb.dart' as $17;

export 'updates_svc.pb.dart';

@$pb.GrpcServiceName('services.updates_svc.v1.UpdatesService')
class UpdatesServiceClient extends $grpc.Client {
  static final _$receiveUpdates = $grpc.ClientMethod<$17.ReceiveUpdatesRequest, $17.ReceiveUpdatesResponse>(
      '/services.updates_svc.v1.UpdatesService/ReceiveUpdates',
      ($17.ReceiveUpdatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ReceiveUpdatesResponse.fromBuffer(value));

  UpdatesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$17.ReceiveUpdatesResponse> receiveUpdates($17.ReceiveUpdatesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$receiveUpdates, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('services.updates_svc.v1.UpdatesService')
abstract class UpdatesServiceBase extends $grpc.Service {
  $core.String get $name => 'services.updates_svc.v1.UpdatesService';

  UpdatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.ReceiveUpdatesRequest, $17.ReceiveUpdatesResponse>(
        'ReceiveUpdates',
        receiveUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $17.ReceiveUpdatesRequest.fromBuffer(value),
        ($17.ReceiveUpdatesResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$17.ReceiveUpdatesResponse> receiveUpdates_Pre($grpc.ServiceCall call, $async.Future<$17.ReceiveUpdatesRequest> request) async* {
    yield* receiveUpdates(call, await request);
  }

  $async.Stream<$17.ReceiveUpdatesResponse> receiveUpdates($grpc.ServiceCall call, $17.ReceiveUpdatesRequest request);
}
