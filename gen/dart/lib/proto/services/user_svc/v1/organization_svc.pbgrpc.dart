//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
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

import 'organization_svc.pb.dart' as $15;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$15.CreateOrganizationRequest, $15.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($15.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$15.CreateOrganizationForUserRequest, $15.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($15.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$15.GetOrganizationRequest, $15.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($15.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$15.GetOrganizationsByUserRequest, $15.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($15.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$15.GetOrganizationsForUserRequest, $15.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($15.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$15.UpdateOrganizationRequest, $15.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($15.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$15.DeleteOrganizationRequest, $15.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($15.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$15.GetMembersByOrganizationRequest, $15.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($15.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$15.AddMemberRequest, $15.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($15.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$15.RemoveMemberRequest, $15.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($15.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$15.InviteMemberRequest, $15.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($15.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$15.GetInvitationsByOrganizationRequest, $15.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($15.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$15.GetInvitationsByUserRequest, $15.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($15.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$15.AcceptInvitationRequest, $15.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($15.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$15.DeclineInvitationRequest, $15.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($15.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$15.RevokeInvitationRequest, $15.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($15.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateOrganizationResponse> createOrganization($15.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateOrganizationForUserResponse> createOrganizationForUser($15.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetOrganizationResponse> getOrganization($15.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetOrganizationsByUserResponse> getOrganizationsByUser($15.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetOrganizationsForUserResponse> getOrganizationsForUser($15.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateOrganizationResponse> updateOrganization($15.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteOrganizationResponse> deleteOrganization($15.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetMembersByOrganizationResponse> getMembersByOrganization($15.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddMemberResponse> addMember($15.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$15.RemoveMemberResponse> removeMember($15.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$15.InviteMemberResponse> inviteMember($15.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($15.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetInvitationsByUserResponse> getInvitationsByUser($15.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.AcceptInvitationResponse> acceptInvitation($15.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeclineInvitationResponse> declineInvitation($15.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$15.RevokeInvitationResponse> revokeInvitation($15.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateOrganizationRequest, $15.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateOrganizationRequest.fromBuffer(value),
        ($15.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateOrganizationForUserRequest, $15.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateOrganizationForUserRequest.fromBuffer(value),
        ($15.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetOrganizationRequest, $15.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetOrganizationRequest.fromBuffer(value),
        ($15.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetOrganizationsByUserRequest, $15.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetOrganizationsByUserRequest.fromBuffer(value),
        ($15.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetOrganizationsForUserRequest, $15.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetOrganizationsForUserRequest.fromBuffer(value),
        ($15.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateOrganizationRequest, $15.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateOrganizationRequest.fromBuffer(value),
        ($15.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteOrganizationRequest, $15.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteOrganizationRequest.fromBuffer(value),
        ($15.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetMembersByOrganizationRequest, $15.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetMembersByOrganizationRequest.fromBuffer(value),
        ($15.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddMemberRequest, $15.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddMemberRequest.fromBuffer(value),
        ($15.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.RemoveMemberRequest, $15.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.RemoveMemberRequest.fromBuffer(value),
        ($15.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.InviteMemberRequest, $15.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.InviteMemberRequest.fromBuffer(value),
        ($15.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetInvitationsByOrganizationRequest, $15.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($15.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetInvitationsByUserRequest, $15.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetInvitationsByUserRequest.fromBuffer(value),
        ($15.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AcceptInvitationRequest, $15.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AcceptInvitationRequest.fromBuffer(value),
        ($15.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeclineInvitationRequest, $15.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeclineInvitationRequest.fromBuffer(value),
        ($15.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.RevokeInvitationRequest, $15.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.RevokeInvitationRequest.fromBuffer(value),
        ($15.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$15.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$15.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$15.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$15.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$15.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$15.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$15.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$15.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$15.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$15.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$15.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$15.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$15.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$15.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$15.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$15.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$15.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$15.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$15.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$15.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$15.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$15.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$15.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$15.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$15.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$15.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$15.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$15.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$15.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$15.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $15.CreateOrganizationRequest request);
  $async.Future<$15.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $15.CreateOrganizationForUserRequest request);
  $async.Future<$15.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $15.GetOrganizationRequest request);
  $async.Future<$15.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $15.GetOrganizationsByUserRequest request);
  $async.Future<$15.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $15.GetOrganizationsForUserRequest request);
  $async.Future<$15.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $15.UpdateOrganizationRequest request);
  $async.Future<$15.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $15.DeleteOrganizationRequest request);
  $async.Future<$15.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $15.GetMembersByOrganizationRequest request);
  $async.Future<$15.AddMemberResponse> addMember($grpc.ServiceCall call, $15.AddMemberRequest request);
  $async.Future<$15.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $15.RemoveMemberRequest request);
  $async.Future<$15.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $15.InviteMemberRequest request);
  $async.Future<$15.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $15.GetInvitationsByOrganizationRequest request);
  $async.Future<$15.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $15.GetInvitationsByUserRequest request);
  $async.Future<$15.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $15.AcceptInvitationRequest request);
  $async.Future<$15.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $15.DeclineInvitationRequest request);
  $async.Future<$15.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $15.RevokeInvitationRequest request);
}
