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

import 'organization_svc.pb.dart' as $9;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$9.CreateOrganizationRequest, $9.CreateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      ($9.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateOrganizationResponse.fromBuffer(value));
  static final _$createOrganizationForUser = $grpc.ClientMethod<$9.CreateOrganizationForUserRequest, $9.CreateOrganizationForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      ($9.CreateOrganizationForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateOrganizationForUserResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$9.GetOrganizationRequest, $9.GetOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      ($9.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$9.GetOrganizationsByUserRequest, $9.GetOrganizationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($9.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$9.GetOrganizationsForUserRequest, $9.GetOrganizationsForUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($9.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$9.UpdateOrganizationRequest, $9.UpdateOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($9.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$9.DeleteOrganizationRequest, $9.DeleteOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($9.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$9.GetMembersByOrganizationRequest, $9.GetMembersByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($9.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$9.AddMemberRequest, $9.AddMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      ($9.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$9.RemoveMemberRequest, $9.RemoveMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      ($9.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$9.InviteMemberRequest, $9.InviteMemberResponse>(
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      ($9.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$9.GetInvitationsByOrganizationRequest, $9.GetInvitationsByOrganizationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($9.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$9.GetInvitationsByUserRequest, $9.GetInvitationsByUserResponse>(
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($9.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$9.AcceptInvitationRequest, $9.AcceptInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($9.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$9.DeclineInvitationRequest, $9.DeclineInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($9.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$9.RevokeInvitationRequest, $9.RevokeInvitationResponse>(
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($9.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.RevokeInvitationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateOrganizationResponse> createOrganization($9.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateOrganizationForUserResponse> createOrganizationForUser($9.CreateOrganizationForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganizationForUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetOrganizationResponse> getOrganization($9.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetOrganizationsByUserResponse> getOrganizationsByUser($9.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetOrganizationsForUserResponse> getOrganizationsForUser($9.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateOrganizationResponse> updateOrganization($9.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteOrganizationResponse> deleteOrganization($9.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetMembersByOrganizationResponse> getMembersByOrganization($9.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddMemberResponse> addMember($9.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$9.RemoveMemberResponse> removeMember($9.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$9.InviteMemberResponse> inviteMember($9.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($9.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetInvitationsByUserResponse> getInvitationsByUser($9.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.AcceptInvitationResponse> acceptInvitation($9.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeclineInvitationResponse> declineInvitation($9.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$9.RevokeInvitationResponse> revokeInvitation($9.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateOrganizationRequest, $9.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateOrganizationRequest.fromBuffer(value),
        ($9.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateOrganizationForUserRequest, $9.CreateOrganizationForUserResponse>(
        'CreateOrganizationForUser',
        createOrganizationForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateOrganizationForUserRequest.fromBuffer(value),
        ($9.CreateOrganizationForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetOrganizationRequest, $9.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetOrganizationRequest.fromBuffer(value),
        ($9.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetOrganizationsByUserRequest, $9.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetOrganizationsByUserRequest.fromBuffer(value),
        ($9.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetOrganizationsForUserRequest, $9.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetOrganizationsForUserRequest.fromBuffer(value),
        ($9.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateOrganizationRequest, $9.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateOrganizationRequest.fromBuffer(value),
        ($9.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteOrganizationRequest, $9.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteOrganizationRequest.fromBuffer(value),
        ($9.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetMembersByOrganizationRequest, $9.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetMembersByOrganizationRequest.fromBuffer(value),
        ($9.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddMemberRequest, $9.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddMemberRequest.fromBuffer(value),
        ($9.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.RemoveMemberRequest, $9.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.RemoveMemberRequest.fromBuffer(value),
        ($9.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.InviteMemberRequest, $9.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.InviteMemberRequest.fromBuffer(value),
        ($9.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetInvitationsByOrganizationRequest, $9.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($9.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetInvitationsByUserRequest, $9.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetInvitationsByUserRequest.fromBuffer(value),
        ($9.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AcceptInvitationRequest, $9.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AcceptInvitationRequest.fromBuffer(value),
        ($9.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeclineInvitationRequest, $9.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeclineInvitationRequest.fromBuffer(value),
        ($9.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.RevokeInvitationRequest, $9.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.RevokeInvitationRequest.fromBuffer(value),
        ($9.RevokeInvitationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$9.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$9.CreateOrganizationForUserResponse> createOrganizationForUser_Pre($grpc.ServiceCall call, $async.Future<$9.CreateOrganizationForUserRequest> request) async {
    return createOrganizationForUser(call, await request);
  }

  $async.Future<$9.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$9.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$9.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$9.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$9.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$9.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$9.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$9.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$9.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$9.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$9.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$9.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$9.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$9.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$9.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$9.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$9.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$9.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$9.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$9.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$9.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$9.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$9.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$9.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$9.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$9.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$9.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $9.CreateOrganizationRequest request);
  $async.Future<$9.CreateOrganizationForUserResponse> createOrganizationForUser($grpc.ServiceCall call, $9.CreateOrganizationForUserRequest request);
  $async.Future<$9.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $9.GetOrganizationRequest request);
  $async.Future<$9.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $9.GetOrganizationsByUserRequest request);
  $async.Future<$9.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $9.GetOrganizationsForUserRequest request);
  $async.Future<$9.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $9.UpdateOrganizationRequest request);
  $async.Future<$9.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $9.DeleteOrganizationRequest request);
  $async.Future<$9.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $9.GetMembersByOrganizationRequest request);
  $async.Future<$9.AddMemberResponse> addMember($grpc.ServiceCall call, $9.AddMemberRequest request);
  $async.Future<$9.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $9.RemoveMemberRequest request);
  $async.Future<$9.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $9.InviteMemberRequest request);
  $async.Future<$9.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $9.GetInvitationsByOrganizationRequest request);
  $async.Future<$9.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $9.GetInvitationsByUserRequest request);
  $async.Future<$9.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $9.AcceptInvitationRequest request);
  $async.Future<$9.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $9.DeclineInvitationRequest request);
  $async.Future<$9.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $9.RevokeInvitationRequest request);
}
