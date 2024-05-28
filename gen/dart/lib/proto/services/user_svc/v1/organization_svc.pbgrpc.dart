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

import 'organization_svc.pb.dart' as $16;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$16.CreateOrganizationRequest, $16.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($16.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$16.CreateOrganizationForUserRequest, $16.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($16.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$16.GetOrganizationRequest, $16.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($16.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$16.GetOrganizationsByUserRequest, $16.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($16.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$16.GetOrganizationsForUserRequest, $16.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($16.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$16.UpdateOrganizationRequest, $16.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($16.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$16.DeleteOrganizationRequest, $16.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($16.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$16.GetMembersByOrganizationRequest, $16.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($16.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$16.AddMemberRequest, $16.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($16.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$16.RemoveMemberRequest, $16.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($16.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$16.InviteMemberRequest, $16.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($16.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$16.GetInvitationsByOrganizationRequest, $16.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($16.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$16.GetInvitationsByUserRequest, $16.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($16.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$16.AcceptInvitationRequest, $16.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($16.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$16.DeclineInvitationRequest, $16.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($16.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$16.RevokeInvitationRequest, $16.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($16.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.CreateOrganizationResponse> createOrganization($16.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$16.CreateOrganizationForUserResponse> createOrganizationForUser($16.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetOrganizationResponse> getOrganization($16.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetOrganizationsByUserResponse> getOrganizationsByUser($16.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetOrganizationsForUserResponse> getOrganizationsForUser($16.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateOrganizationResponse> updateOrganization($16.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteOrganizationResponse> deleteOrganization($16.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetMembersByOrganizationResponse> getMembersByOrganization($16.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddMemberResponse> addMember($16.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$16.RemoveMemberResponse> removeMember($16.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$16.InviteMemberResponse> inviteMember($16.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($16.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetInvitationsByUserResponse> getInvitationsByUser($16.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.AcceptInvitationResponse> acceptInvitation($16.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeclineInvitationResponse> declineInvitation($16.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$16.RevokeInvitationResponse> revokeInvitation($16.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.CreateOrganizationRequest, $16.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateOrganizationRequest.fromBuffer(value),
        ($16.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CreateOrganizationForUserRequest, $16.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateOrganizationForUserRequest.fromBuffer(value),
        ($16.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetOrganizationRequest, $16.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetOrganizationRequest.fromBuffer(value),
        ($16.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetOrganizationsByUserRequest, $16.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetOrganizationsByUserRequest.fromBuffer(value),
        ($16.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetOrganizationsForUserRequest, $16.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetOrganizationsForUserRequest.fromBuffer(value),
        ($16.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateOrganizationRequest, $16.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateOrganizationRequest.fromBuffer(value),
        ($16.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteOrganizationRequest, $16.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteOrganizationRequest.fromBuffer(value),
        ($16.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetMembersByOrganizationRequest, $16.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetMembersByOrganizationRequest.fromBuffer(value),
        ($16.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddMemberRequest, $16.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddMemberRequest.fromBuffer(value),
        ($16.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.RemoveMemberRequest, $16.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.RemoveMemberRequest.fromBuffer(value),
        ($16.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.InviteMemberRequest, $16.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.InviteMemberRequest.fromBuffer(value),
        ($16.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetInvitationsByOrganizationRequest, $16.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($16.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetInvitationsByUserRequest, $16.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetInvitationsByUserRequest.fromBuffer(value),
        ($16.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AcceptInvitationRequest, $16.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AcceptInvitationRequest.fromBuffer(value),
        ($16.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeclineInvitationRequest, $16.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeclineInvitationRequest.fromBuffer(value),
        ($16.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.RevokeInvitationRequest, $16.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.RevokeInvitationRequest.fromBuffer(value),
        ($16.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$16.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$16.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$16.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$16.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$16.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$16.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$16.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$16.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$16.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$16.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$16.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$16.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$16.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$16.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$16.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$16.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$16.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$16.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$16.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$16.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$16.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$16.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$16.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$16.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$16.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$16.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$16.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$16.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$16.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$16.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $16.CreateOrganizationRequest request);
  $async.Future<$16.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $16.CreateOrganizationForUserRequest request);
  $async.Future<$16.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $16.GetOrganizationRequest request);
  $async.Future<$16.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $16.GetOrganizationsByUserRequest request);
  $async.Future<$16.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $16.GetOrganizationsForUserRequest request);
  $async.Future<$16.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $16.UpdateOrganizationRequest request);
  $async.Future<$16.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $16.DeleteOrganizationRequest request);
  $async.Future<$16.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $16.GetMembersByOrganizationRequest request);
  $async.Future<$16.AddMemberResponse> addMember($grpc.ServiceCall call, $16.AddMemberRequest request);
  $async.Future<$16.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $16.RemoveMemberRequest request);
  $async.Future<$16.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $16.InviteMemberRequest request);
  $async.Future<$16.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $16.GetInvitationsByOrganizationRequest request);
  $async.Future<$16.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $16.GetInvitationsByUserRequest request);
  $async.Future<$16.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $16.AcceptInvitationRequest request);
  $async.Future<$16.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $16.DeclineInvitationRequest request);
  $async.Future<$16.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $16.RevokeInvitationRequest request);
}
