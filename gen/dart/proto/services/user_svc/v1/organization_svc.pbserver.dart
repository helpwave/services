//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'organization_svc.pb.dart' as $10;
import 'organization_svc.pbjson.dart';

export 'organization_svc.pb.dart';

abstract class OrganizationServiceBase extends $pb.GeneratedService {
  $async.Future<$10.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $10.CreateOrganizationRequest request);
  $async.Future<$10.CreateOrganizationForUserResponse> createOrganizationForUser($pb.ServerContext ctx, $10.CreateOrganizationForUserRequest request);
  $async.Future<$10.GetOrganizationResponse> getOrganization($pb.ServerContext ctx, $10.GetOrganizationRequest request);
  $async.Future<$10.GetOrganizationsByUserResponse> getOrganizationsByUser($pb.ServerContext ctx, $10.GetOrganizationsByUserRequest request);
  $async.Future<$10.UpdateOrganizationResponse> updateOrganization($pb.ServerContext ctx, $10.UpdateOrganizationRequest request);
  $async.Future<$10.DeleteOrganizationResponse> deleteOrganization($pb.ServerContext ctx, $10.DeleteOrganizationRequest request);
  $async.Future<$10.GetMembersByOrganizationResponse> getMembersByOrganization($pb.ServerContext ctx, $10.GetMembersByOrganizationRequest request);
  $async.Future<$10.AddMemberResponse> addMember($pb.ServerContext ctx, $10.AddMemberRequest request);
  $async.Future<$10.RemoveMemberResponse> removeMember($pb.ServerContext ctx, $10.RemoveMemberRequest request);
  $async.Future<$10.InviteMemberResponse> inviteMember($pb.ServerContext ctx, $10.InviteMemberRequest request);
  $async.Future<$10.GetInvitationsByOrganizationResponse> getInvitationsByOrganization($pb.ServerContext ctx, $10.GetInvitationsByOrganizationRequest request);
  $async.Future<$10.GetInvitationsByUserResponse> getInvitationsByUser($pb.ServerContext ctx, $10.GetInvitationsByUserRequest request);
  $async.Future<$10.AcceptInvitationResponse> acceptInvitation($pb.ServerContext ctx, $10.AcceptInvitationRequest request);
  $async.Future<$10.DeclineInvitationResponse> declineInvitation($pb.ServerContext ctx, $10.DeclineInvitationRequest request);
  $async.Future<$10.RevokeInvitationResponse> revokeInvitation($pb.ServerContext ctx, $10.RevokeInvitationRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateOrganization': return $10.CreateOrganizationRequest();
      case 'CreateOrganizationForUser': return $10.CreateOrganizationForUserRequest();
      case 'GetOrganization': return $10.GetOrganizationRequest();
      case 'GetOrganizationsByUser': return $10.GetOrganizationsByUserRequest();
      case 'UpdateOrganization': return $10.UpdateOrganizationRequest();
      case 'DeleteOrganization': return $10.DeleteOrganizationRequest();
      case 'GetMembersByOrganization': return $10.GetMembersByOrganizationRequest();
      case 'AddMember': return $10.AddMemberRequest();
      case 'RemoveMember': return $10.RemoveMemberRequest();
      case 'InviteMember': return $10.InviteMemberRequest();
      case 'GetInvitationsByOrganization': return $10.GetInvitationsByOrganizationRequest();
      case 'GetInvitationsByUser': return $10.GetInvitationsByUserRequest();
      case 'AcceptInvitation': return $10.AcceptInvitationRequest();
      case 'DeclineInvitation': return $10.DeclineInvitationRequest();
      case 'RevokeInvitation': return $10.RevokeInvitationRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateOrganization': return this.createOrganization(ctx, request as $10.CreateOrganizationRequest);
      case 'CreateOrganizationForUser': return this.createOrganizationForUser(ctx, request as $10.CreateOrganizationForUserRequest);
      case 'GetOrganization': return this.getOrganization(ctx, request as $10.GetOrganizationRequest);
      case 'GetOrganizationsByUser': return this.getOrganizationsByUser(ctx, request as $10.GetOrganizationsByUserRequest);
      case 'UpdateOrganization': return this.updateOrganization(ctx, request as $10.UpdateOrganizationRequest);
      case 'DeleteOrganization': return this.deleteOrganization(ctx, request as $10.DeleteOrganizationRequest);
      case 'GetMembersByOrganization': return this.getMembersByOrganization(ctx, request as $10.GetMembersByOrganizationRequest);
      case 'AddMember': return this.addMember(ctx, request as $10.AddMemberRequest);
      case 'RemoveMember': return this.removeMember(ctx, request as $10.RemoveMemberRequest);
      case 'InviteMember': return this.inviteMember(ctx, request as $10.InviteMemberRequest);
      case 'GetInvitationsByOrganization': return this.getInvitationsByOrganization(ctx, request as $10.GetInvitationsByOrganizationRequest);
      case 'GetInvitationsByUser': return this.getInvitationsByUser(ctx, request as $10.GetInvitationsByUserRequest);
      case 'AcceptInvitation': return this.acceptInvitation(ctx, request as $10.AcceptInvitationRequest);
      case 'DeclineInvitation': return this.declineInvitation(ctx, request as $10.DeclineInvitationRequest);
      case 'RevokeInvitation': return this.revokeInvitation(ctx, request as $10.RevokeInvitationRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OrganizationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => OrganizationServiceBase$messageJson;
}

