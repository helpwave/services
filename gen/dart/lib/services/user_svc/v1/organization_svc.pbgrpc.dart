//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/organization_svc.proto
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

import 'organization_svc.pb.dart' as $0;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$0.CreateOrganizationRequest, $0.CreateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/CreateOrganization',
      ($0.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateOrganizationResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$0.GetOrganizationRequest, $0.GetOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganization',
      ($0.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$0.GetOrganizationsByUserRequest, $0.GetOrganizationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($0.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$0.GetOrganizationsForUserRequest, $0.GetOrganizationsForUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($0.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$0.UpdateOrganizationRequest, $0.UpdateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($0.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$0.DeleteOrganizationRequest, $0.DeleteOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($0.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$0.GetMembersByOrganizationRequest, $0.GetMembersByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($0.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$0.RemoveMemberRequest, $0.RemoveMemberResponse>(
      '/services.user_svc.v1.OrganizationService/RemoveMember',
      ($0.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$0.InviteMemberRequest, $0.InviteMemberResponse>(
      '/services.user_svc.v1.OrganizationService/InviteMember',
      ($0.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$0.GetInvitationsByOrganizationRequest, $0.GetInvitationsByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($0.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$0.GetInvitationsByUserRequest, $0.GetInvitationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($0.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$0.AcceptInvitationRequest, $0.AcceptInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($0.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$0.DeclineInvitationRequest, $0.DeclineInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($0.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$0.RevokeInvitationRequest, $0.RevokeInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($0.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RevokeInvitationResponse.fromBuffer(value));
  static final _$createPersonalOrganization = $grpc.ClientMethod<$0.CreatePersonalOrganizationRequest, $0.CreatePersonalOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/CreatePersonalOrganization',
      ($0.CreatePersonalOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreatePersonalOrganizationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateOrganizationResponse> createOrganization($0.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOrganizationResponse> getOrganization($0.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOrganizationsByUserResponse> getOrganizationsByUser($0.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOrganizationsForUserResponse> getOrganizationsForUser($0.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateOrganizationResponse> updateOrganization($0.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteOrganizationResponse> deleteOrganization($0.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMembersByOrganizationResponse> getMembersByOrganization($0.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveMemberResponse> removeMember($0.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.InviteMemberResponse> inviteMember($0.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($0.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetInvitationsByUserResponse> getInvitationsByUser($0.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.AcceptInvitationResponse> acceptInvitation($0.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeclineInvitationResponse> declineInvitation($0.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$0.RevokeInvitationResponse> revokeInvitation($0.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreatePersonalOrganizationResponse> createPersonalOrganization($0.CreatePersonalOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPersonalOrganization, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateOrganizationRequest, $0.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateOrganizationRequest.fromBuffer(value),
        ($0.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrganizationRequest, $0.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOrganizationRequest.fromBuffer(value),
        ($0.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrganizationsByUserRequest, $0.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOrganizationsByUserRequest.fromBuffer(value),
        ($0.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrganizationsForUserRequest, $0.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOrganizationsForUserRequest.fromBuffer(value),
        ($0.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateOrganizationRequest, $0.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateOrganizationRequest.fromBuffer(value),
        ($0.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteOrganizationRequest, $0.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteOrganizationRequest.fromBuffer(value),
        ($0.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMembersByOrganizationRequest, $0.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMembersByOrganizationRequest.fromBuffer(value),
        ($0.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveMemberRequest, $0.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveMemberRequest.fromBuffer(value),
        ($0.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InviteMemberRequest, $0.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InviteMemberRequest.fromBuffer(value),
        ($0.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInvitationsByOrganizationRequest, $0.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($0.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInvitationsByUserRequest, $0.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetInvitationsByUserRequest.fromBuffer(value),
        ($0.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AcceptInvitationRequest, $0.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AcceptInvitationRequest.fromBuffer(value),
        ($0.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeclineInvitationRequest, $0.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeclineInvitationRequest.fromBuffer(value),
        ($0.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RevokeInvitationRequest, $0.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RevokeInvitationRequest.fromBuffer(value),
        ($0.RevokeInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreatePersonalOrganizationRequest, $0.CreatePersonalOrganizationResponse>(
        'CreatePersonalOrganization',
        createPersonalOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreatePersonalOrganizationRequest.fromBuffer(value),
        ($0.CreatePersonalOrganizationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$0.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$0.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$0.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$0.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$0.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$0.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$0.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$0.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$0.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$0.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$0.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$0.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$0.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$0.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$0.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$0.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$0.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$0.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$0.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$0.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$0.CreatePersonalOrganizationResponse> createPersonalOrganization_Pre($grpc.ServiceCall call, $async.Future<$0.CreatePersonalOrganizationRequest> request) async {
    return createPersonalOrganization(call, await request);
  }

  $async.Future<$0.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $0.CreateOrganizationRequest request);
  $async.Future<$0.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $0.GetOrganizationRequest request);
  $async.Future<$0.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $0.GetOrganizationsByUserRequest request);
  $async.Future<$0.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $0.GetOrganizationsForUserRequest request);
  $async.Future<$0.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $0.UpdateOrganizationRequest request);
  $async.Future<$0.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $0.DeleteOrganizationRequest request);
  $async.Future<$0.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $0.GetMembersByOrganizationRequest request);
  $async.Future<$0.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $0.RemoveMemberRequest request);
  $async.Future<$0.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $0.InviteMemberRequest request);
  $async.Future<$0.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $0.GetInvitationsByOrganizationRequest request);
  $async.Future<$0.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $0.GetInvitationsByUserRequest request);
  $async.Future<$0.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $0.AcceptInvitationRequest request);
  $async.Future<$0.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $0.DeclineInvitationRequest request);
  $async.Future<$0.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $0.RevokeInvitationRequest request);
  $async.Future<$0.CreatePersonalOrganizationResponse> createPersonalOrganization($grpc.ServiceCall call, $0.CreatePersonalOrganizationRequest request);
}
