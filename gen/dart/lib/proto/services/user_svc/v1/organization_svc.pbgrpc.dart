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

import 'organization_svc.pb.dart' as $8;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$8.CreateOrganizationRequest, $8.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($8.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$8.CreateOrganizationForUserRequest, $8.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($8.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$8.GetOrganizationRequest, $8.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($8.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$8.GetOrganizationsByUserRequest, $8.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($8.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$8.GetOrganizationsForUserRequest, $8.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($8.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$8.UpdateOrganizationRequest, $8.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($8.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$8.DeleteOrganizationRequest, $8.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($8.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$8.GetMembersByOrganizationRequest, $8.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($8.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$8.AddMemberRequest, $8.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($8.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$8.RemoveMemberRequest, $8.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($8.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$8.InviteMemberRequest, $8.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($8.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$8.GetInvitationsByOrganizationRequest, $8.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($8.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$8.GetInvitationsByUserRequest, $8.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($8.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$8.AcceptInvitationRequest, $8.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($8.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$8.DeclineInvitationRequest, $8.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($8.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$8.RevokeInvitationRequest, $8.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($8.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateOrganizationResponse> createOrganization($8.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$8.CreateOrganizationForUserResponse> createOrganizationForUser($8.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetOrganizationResponse> getOrganization($8.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetOrganizationsByUserResponse> getOrganizationsByUser($8.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetOrganizationsForUserResponse> getOrganizationsForUser($8.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateOrganizationResponse> updateOrganization($8.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteOrganizationResponse> deleteOrganization($8.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetMembersByOrganizationResponse> getMembersByOrganization($8.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$8.AddMemberResponse> addMember($8.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$8.RemoveMemberResponse> removeMember($8.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$8.InviteMemberResponse> inviteMember($8.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($8.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetInvitationsByUserResponse> getInvitationsByUser($8.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.AcceptInvitationResponse> acceptInvitation($8.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeclineInvitationResponse> declineInvitation($8.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$8.RevokeInvitationResponse> revokeInvitation($8.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateOrganizationRequest, $8.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateOrganizationRequest.fromBuffer(value),
        ($8.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateOrganizationForUserRequest, $8.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateOrganizationForUserRequest.fromBuffer(value),
        ($8.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetOrganizationRequest, $8.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetOrganizationRequest.fromBuffer(value),
        ($8.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetOrganizationsByUserRequest, $8.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetOrganizationsByUserRequest.fromBuffer(value),
        ($8.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetOrganizationsForUserRequest, $8.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetOrganizationsForUserRequest.fromBuffer(value),
        ($8.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateOrganizationRequest, $8.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateOrganizationRequest.fromBuffer(value),
        ($8.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteOrganizationRequest, $8.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteOrganizationRequest.fromBuffer(value),
        ($8.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetMembersByOrganizationRequest, $8.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetMembersByOrganizationRequest.fromBuffer(value),
        ($8.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AddMemberRequest, $8.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.AddMemberRequest.fromBuffer(value),
        ($8.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RemoveMemberRequest, $8.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RemoveMemberRequest.fromBuffer(value),
        ($8.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.InviteMemberRequest, $8.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.InviteMemberRequest.fromBuffer(value),
        ($8.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetInvitationsByOrganizationRequest, $8.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($8.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetInvitationsByUserRequest, $8.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetInvitationsByUserRequest.fromBuffer(value),
        ($8.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AcceptInvitationRequest, $8.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.AcceptInvitationRequest.fromBuffer(value),
        ($8.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeclineInvitationRequest, $8.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeclineInvitationRequest.fromBuffer(value),
        ($8.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RevokeInvitationRequest, $8.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RevokeInvitationRequest.fromBuffer(value),
        ($8.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$8.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$8.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$8.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$8.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$8.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$8.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$8.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$8.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$8.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$8.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$8.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$8.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$8.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$8.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$8.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$8.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$8.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$8.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$8.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$8.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$8.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$8.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$8.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$8.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$8.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$8.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$8.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$8.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$8.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$8.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $8.CreateOrganizationRequest request);
  $async.Future<$8.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $8.CreateOrganizationForUserRequest request);
  $async.Future<$8.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $8.GetOrganizationRequest request);
  $async.Future<$8.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $8.GetOrganizationsByUserRequest request);
  $async.Future<$8.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $8.GetOrganizationsForUserRequest request);
  $async.Future<$8.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $8.UpdateOrganizationRequest request);
  $async.Future<$8.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $8.DeleteOrganizationRequest request);
  $async.Future<$8.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $8.GetMembersByOrganizationRequest request);
  $async.Future<$8.AddMemberResponse> addMember($grpc.ServiceCall call, $8.AddMemberRequest request);
  $async.Future<$8.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $8.RemoveMemberRequest request);
  $async.Future<$8.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $8.InviteMemberRequest request);
  $async.Future<$8.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $8.GetInvitationsByOrganizationRequest request);
  $async.Future<$8.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $8.GetInvitationsByUserRequest request);
  $async.Future<$8.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $8.AcceptInvitationRequest request);
  $async.Future<$8.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $8.DeclineInvitationRequest request);
  $async.Future<$8.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $8.RevokeInvitationRequest request);
}
