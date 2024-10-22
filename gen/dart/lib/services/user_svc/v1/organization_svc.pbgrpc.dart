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

import 'organization_svc.pb.dart' as $18;

export 'organization_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
class OrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<$18.CreateOrganizationRequest, $18.CreateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/CreateOrganization',
      ($18.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateOrganizationResponse.fromBuffer(value));
  static final _$getOrganization = $grpc.ClientMethod<$18.GetOrganizationRequest, $18.GetOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganization',
      ($18.GetOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetOrganizationResponse.fromBuffer(value));
  static final _$getOrganizationsByUser = $grpc.ClientMethod<$18.GetOrganizationsByUserRequest, $18.GetOrganizationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      ($18.GetOrganizationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetOrganizationsByUserResponse.fromBuffer(value));
  static final _$getOrganizationsForUser = $grpc.ClientMethod<$18.GetOrganizationsForUserRequest, $18.GetOrganizationsForUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      ($18.GetOrganizationsForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetOrganizationsForUserResponse.fromBuffer(value));
  static final _$updateOrganization = $grpc.ClientMethod<$18.UpdateOrganizationRequest, $18.UpdateOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/UpdateOrganization',
      ($18.UpdateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateOrganizationResponse.fromBuffer(value));
  static final _$deleteOrganization = $grpc.ClientMethod<$18.DeleteOrganizationRequest, $18.DeleteOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/DeleteOrganization',
      ($18.DeleteOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteOrganizationResponse.fromBuffer(value));
  static final _$getMembersByOrganization = $grpc.ClientMethod<$18.GetMembersByOrganizationRequest, $18.GetMembersByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      ($18.GetMembersByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetMembersByOrganizationResponse.fromBuffer(value));
  static final _$addMember = $grpc.ClientMethod<$18.AddMemberRequest, $18.AddMemberResponse>(
      '/services.user_svc.v1.OrganizationService/AddMember',
      ($18.AddMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AddMemberResponse.fromBuffer(value));
  static final _$removeMember = $grpc.ClientMethod<$18.RemoveMemberRequest, $18.RemoveMemberResponse>(
      '/services.user_svc.v1.OrganizationService/RemoveMember',
      ($18.RemoveMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.RemoveMemberResponse.fromBuffer(value));
  static final _$inviteMember = $grpc.ClientMethod<$18.InviteMemberRequest, $18.InviteMemberResponse>(
      '/services.user_svc.v1.OrganizationService/InviteMember',
      ($18.InviteMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.InviteMemberResponse.fromBuffer(value));
  static final _$getInvitationsByOrganization = $grpc.ClientMethod<$18.GetInvitationsByOrganizationRequest, $18.GetInvitationsByOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      ($18.GetInvitationsByOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetInvitationsByOrganizationResponse.fromBuffer(value));
  static final _$getInvitationsByUser = $grpc.ClientMethod<$18.GetInvitationsByUserRequest, $18.GetInvitationsByUserResponse>(
      '/services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      ($18.GetInvitationsByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetInvitationsByUserResponse.fromBuffer(value));
  static final _$acceptInvitation = $grpc.ClientMethod<$18.AcceptInvitationRequest, $18.AcceptInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/AcceptInvitation',
      ($18.AcceptInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AcceptInvitationResponse.fromBuffer(value));
  static final _$declineInvitation = $grpc.ClientMethod<$18.DeclineInvitationRequest, $18.DeclineInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/DeclineInvitation',
      ($18.DeclineInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeclineInvitationResponse.fromBuffer(value));
  static final _$revokeInvitation = $grpc.ClientMethod<$18.RevokeInvitationRequest, $18.RevokeInvitationResponse>(
      '/services.user_svc.v1.OrganizationService/RevokeInvitation',
      ($18.RevokeInvitationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.RevokeInvitationResponse.fromBuffer(value));
  static final _$createPersonalOrganization = $grpc.ClientMethod<$18.CreatePersonalOrganizationRequest, $18.CreatePersonalOrganizationResponse>(
      '/services.user_svc.v1.OrganizationService/CreatePersonalOrganization',
      ($18.CreatePersonalOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreatePersonalOrganizationResponse.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.CreateOrganizationResponse> createOrganization($18.CreateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetOrganizationResponse> getOrganization($18.GetOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetOrganizationsByUserResponse> getOrganizationsByUser($18.GetOrganizationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetOrganizationsForUserResponse> getOrganizationsForUser($18.GetOrganizationsForUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrganizationsForUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateOrganizationResponse> updateOrganization($18.UpdateOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteOrganizationResponse> deleteOrganization($18.DeleteOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetMembersByOrganizationResponse> getMembersByOrganization($18.GetMembersByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembersByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$18.AddMemberResponse> addMember($18.AddMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMember, request, options: options);
  }

  $grpc.ResponseFuture<$18.RemoveMemberResponse> removeMember($18.RemoveMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$18.InviteMemberResponse> inviteMember($18.InviteMemberRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteMember, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($18.GetInvitationsByOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetInvitationsByUserResponse> getInvitationsByUser($18.GetInvitationsByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInvitationsByUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.AcceptInvitationResponse> acceptInvitation($18.AcceptInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeclineInvitationResponse> declineInvitation($18.DeclineInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declineInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$18.RevokeInvitationResponse> revokeInvitation($18.RevokeInvitationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeInvitation, request, options: options);
  }

  $grpc.ResponseFuture<$18.CreatePersonalOrganizationResponse> createPersonalOrganization($18.CreatePersonalOrganizationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPersonalOrganization, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.OrganizationService')
abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.CreateOrganizationRequest, $18.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateOrganizationRequest.fromBuffer(value),
        ($18.CreateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetOrganizationRequest, $18.GetOrganizationResponse>(
        'GetOrganization',
        getOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetOrganizationRequest.fromBuffer(value),
        ($18.GetOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetOrganizationsByUserRequest, $18.GetOrganizationsByUserResponse>(
        'GetOrganizationsByUser',
        getOrganizationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetOrganizationsByUserRequest.fromBuffer(value),
        ($18.GetOrganizationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetOrganizationsForUserRequest, $18.GetOrganizationsForUserResponse>(
        'GetOrganizationsForUser',
        getOrganizationsForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetOrganizationsForUserRequest.fromBuffer(value),
        ($18.GetOrganizationsForUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateOrganizationRequest, $18.UpdateOrganizationResponse>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateOrganizationRequest.fromBuffer(value),
        ($18.UpdateOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteOrganizationRequest, $18.DeleteOrganizationResponse>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteOrganizationRequest.fromBuffer(value),
        ($18.DeleteOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetMembersByOrganizationRequest, $18.GetMembersByOrganizationResponse>(
        'GetMembersByOrganization',
        getMembersByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetMembersByOrganizationRequest.fromBuffer(value),
        ($18.GetMembersByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AddMemberRequest, $18.AddMemberResponse>(
        'AddMember',
        addMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AddMemberRequest.fromBuffer(value),
        ($18.AddMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.RemoveMemberRequest, $18.RemoveMemberResponse>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.RemoveMemberRequest.fromBuffer(value),
        ($18.RemoveMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.InviteMemberRequest, $18.InviteMemberResponse>(
        'InviteMember',
        inviteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.InviteMemberRequest.fromBuffer(value),
        ($18.InviteMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetInvitationsByOrganizationRequest, $18.GetInvitationsByOrganizationResponse>(
        'GetInvitationsByOrganization',
        getInvitationsByOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetInvitationsByOrganizationRequest.fromBuffer(value),
        ($18.GetInvitationsByOrganizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetInvitationsByUserRequest, $18.GetInvitationsByUserResponse>(
        'GetInvitationsByUser',
        getInvitationsByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetInvitationsByUserRequest.fromBuffer(value),
        ($18.GetInvitationsByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AcceptInvitationRequest, $18.AcceptInvitationResponse>(
        'AcceptInvitation',
        acceptInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AcceptInvitationRequest.fromBuffer(value),
        ($18.AcceptInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeclineInvitationRequest, $18.DeclineInvitationResponse>(
        'DeclineInvitation',
        declineInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeclineInvitationRequest.fromBuffer(value),
        ($18.DeclineInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.RevokeInvitationRequest, $18.RevokeInvitationResponse>(
        'RevokeInvitation',
        revokeInvitation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.RevokeInvitationRequest.fromBuffer(value),
        ($18.RevokeInvitationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.CreatePersonalOrganizationRequest, $18.CreatePersonalOrganizationResponse>(
        'CreatePersonalOrganization',
        createPersonalOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreatePersonalOrganizationRequest.fromBuffer(value),
        ($18.CreatePersonalOrganizationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.CreateOrganizationResponse> createOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$18.GetOrganizationResponse> getOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.GetOrganizationRequest> request) async {
    return getOrganization(call, await request);
  }

  $async.Future<$18.GetOrganizationsByUserResponse> getOrganizationsByUser_Pre($grpc.ServiceCall call, $async.Future<$18.GetOrganizationsByUserRequest> request) async {
    return getOrganizationsByUser(call, await request);
  }

  $async.Future<$18.GetOrganizationsForUserResponse> getOrganizationsForUser_Pre($grpc.ServiceCall call, $async.Future<$18.GetOrganizationsForUserRequest> request) async {
    return getOrganizationsForUser(call, await request);
  }

  $async.Future<$18.UpdateOrganizationResponse> updateOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateOrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$18.DeleteOrganizationResponse> deleteOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteOrganizationRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$18.GetMembersByOrganizationResponse> getMembersByOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.GetMembersByOrganizationRequest> request) async {
    return getMembersByOrganization(call, await request);
  }

  $async.Future<$18.AddMemberResponse> addMember_Pre($grpc.ServiceCall call, $async.Future<$18.AddMemberRequest> request) async {
    return addMember(call, await request);
  }

  $async.Future<$18.RemoveMemberResponse> removeMember_Pre($grpc.ServiceCall call, $async.Future<$18.RemoveMemberRequest> request) async {
    return removeMember(call, await request);
  }

  $async.Future<$18.InviteMemberResponse> inviteMember_Pre($grpc.ServiceCall call, $async.Future<$18.InviteMemberRequest> request) async {
    return inviteMember(call, await request);
  }

  $async.Future<$18.GetInvitationsByOrganizationResponse> getInvitationsByOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.GetInvitationsByOrganizationRequest> request) async {
    return getInvitationsByOrganization(call, await request);
  }

  $async.Future<$18.GetInvitationsByUserResponse> getInvitationsByUser_Pre($grpc.ServiceCall call, $async.Future<$18.GetInvitationsByUserRequest> request) async {
    return getInvitationsByUser(call, await request);
  }

  $async.Future<$18.AcceptInvitationResponse> acceptInvitation_Pre($grpc.ServiceCall call, $async.Future<$18.AcceptInvitationRequest> request) async {
    return acceptInvitation(call, await request);
  }

  $async.Future<$18.DeclineInvitationResponse> declineInvitation_Pre($grpc.ServiceCall call, $async.Future<$18.DeclineInvitationRequest> request) async {
    return declineInvitation(call, await request);
  }

  $async.Future<$18.RevokeInvitationResponse> revokeInvitation_Pre($grpc.ServiceCall call, $async.Future<$18.RevokeInvitationRequest> request) async {
    return revokeInvitation(call, await request);
  }

  $async.Future<$18.CreatePersonalOrganizationResponse> createPersonalOrganization_Pre($grpc.ServiceCall call, $async.Future<$18.CreatePersonalOrganizationRequest> request) async {
    return createPersonalOrganization(call, await request);
  }

  $async.Future<$18.CreateOrganizationResponse> createOrganization($grpc.ServiceCall call, $18.CreateOrganizationRequest request);
  $async.Future<$18.GetOrganizationResponse> getOrganization($grpc.ServiceCall call, $18.GetOrganizationRequest request);
  $async.Future<$18.GetOrganizationsByUserResponse> getOrganizationsByUser($grpc.ServiceCall call, $18.GetOrganizationsByUserRequest request);
  $async.Future<$18.GetOrganizationsForUserResponse> getOrganizationsForUser($grpc.ServiceCall call, $18.GetOrganizationsForUserRequest request);
  $async.Future<$18.UpdateOrganizationResponse> updateOrganization($grpc.ServiceCall call, $18.UpdateOrganizationRequest request);
  $async.Future<$18.DeleteOrganizationResponse> deleteOrganization($grpc.ServiceCall call, $18.DeleteOrganizationRequest request);
  $async.Future<$18.GetMembersByOrganizationResponse> getMembersByOrganization($grpc.ServiceCall call, $18.GetMembersByOrganizationRequest request);
  $async.Future<$18.AddMemberResponse> addMember($grpc.ServiceCall call, $18.AddMemberRequest request);
  $async.Future<$18.RemoveMemberResponse> removeMember($grpc.ServiceCall call, $18.RemoveMemberRequest request);
  $async.Future<$18.InviteMemberResponse> inviteMember($grpc.ServiceCall call, $18.InviteMemberRequest request);
  $async.Future<$18.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($grpc.ServiceCall call, $18.GetInvitationsByOrganizationRequest request);
  $async.Future<$18.GetInvitationsByUserResponse> getInvitationsByUser($grpc.ServiceCall call, $18.GetInvitationsByUserRequest request);
  $async.Future<$18.AcceptInvitationResponse> acceptInvitation($grpc.ServiceCall call, $18.AcceptInvitationRequest request);
  $async.Future<$18.DeclineInvitationResponse> declineInvitation($grpc.ServiceCall call, $18.DeclineInvitationRequest request);
  $async.Future<$18.RevokeInvitationResponse> revokeInvitation($grpc.ServiceCall call, $18.RevokeInvitationRequest request);
  $async.Future<$18.CreatePersonalOrganizationResponse> createPersonalOrganization($grpc.ServiceCall call, $18.CreatePersonalOrganizationRequest request);
}
