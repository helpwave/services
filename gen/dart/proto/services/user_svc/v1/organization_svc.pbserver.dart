///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'organization_svc.pb.dart' as $7;
import 'organization_svc.pbjson.dart';

export 'organization_svc.pb.dart';

abstract class OrganizationServiceBase extends $pb.GeneratedService {
  $async.Future<$7.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $7.CreateOrganizationRequest request);
  $async.Future<$7.CreateOrganizationForUserResponse> createOrganizationForUser($pb.ServerContext ctx, $7.CreateOrganizationForUserRequest request);
  $async.Future<$7.GetOrganizationResponse> getOrganization($pb.ServerContext ctx, $7.GetOrganizationRequest request);
  $async.Future<$7.GetOrganizationsByUserResponse> getOrganizationsByUser($pb.ServerContext ctx, $7.GetOrganizationsByUserRequest request);
  $async.Future<$7.UpdateOrganizationResponse> updateOrganization($pb.ServerContext ctx, $7.UpdateOrganizationRequest request);
  $async.Future<$7.DeleteOrganizationResponse> deleteOrganization($pb.ServerContext ctx, $7.DeleteOrganizationRequest request);
  $async.Future<$7.AddMemberResponse> addMember($pb.ServerContext ctx, $7.AddMemberRequest request);
  $async.Future<$7.RemoveMemberResponse> removeMember($pb.ServerContext ctx, $7.RemoveMemberRequest request);
  $async.Future<$7.InviteMemberResponse> inviteMember($pb.ServerContext ctx, $7.InviteMemberRequest request);
  $async.Future<$7.AcceptInvitationResponse> acceptInvitation($pb.ServerContext ctx, $7.AcceptInvitationRequest request);
  $async.Future<$7.GetInvitationsByUserResponse> getInvitationsByUser($pb.ServerContext ctx, $7.GetInvitationsByUserRequest request);
  $async.Future<$7.DeclineInvitationResponse> declineInvitation($pb.ServerContext ctx, $7.DeclineInvitationRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateOrganization': return $7.CreateOrganizationRequest();
      case 'CreateOrganizationForUser': return $7.CreateOrganizationForUserRequest();
      case 'GetOrganization': return $7.GetOrganizationRequest();
      case 'GetOrganizationsByUser': return $7.GetOrganizationsByUserRequest();
      case 'UpdateOrganization': return $7.UpdateOrganizationRequest();
      case 'DeleteOrganization': return $7.DeleteOrganizationRequest();
      case 'AddMember': return $7.AddMemberRequest();
      case 'RemoveMember': return $7.RemoveMemberRequest();
      case 'InviteMember': return $7.InviteMemberRequest();
      case 'AcceptInvitation': return $7.AcceptInvitationRequest();
      case 'GetInvitationsByUser': return $7.GetInvitationsByUserRequest();
      case 'DeclineInvitation': return $7.DeclineInvitationRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateOrganization': return this.createOrganization(ctx, request as $7.CreateOrganizationRequest);
      case 'CreateOrganizationForUser': return this.createOrganizationForUser(ctx, request as $7.CreateOrganizationForUserRequest);
      case 'GetOrganization': return this.getOrganization(ctx, request as $7.GetOrganizationRequest);
      case 'GetOrganizationsByUser': return this.getOrganizationsByUser(ctx, request as $7.GetOrganizationsByUserRequest);
      case 'UpdateOrganization': return this.updateOrganization(ctx, request as $7.UpdateOrganizationRequest);
      case 'DeleteOrganization': return this.deleteOrganization(ctx, request as $7.DeleteOrganizationRequest);
      case 'AddMember': return this.addMember(ctx, request as $7.AddMemberRequest);
      case 'RemoveMember': return this.removeMember(ctx, request as $7.RemoveMemberRequest);
      case 'InviteMember': return this.inviteMember(ctx, request as $7.InviteMemberRequest);
      case 'AcceptInvitation': return this.acceptInvitation(ctx, request as $7.AcceptInvitationRequest);
      case 'GetInvitationsByUser': return this.getInvitationsByUser(ctx, request as $7.GetInvitationsByUserRequest);
      case 'DeclineInvitation': return this.declineInvitation(ctx, request as $7.DeclineInvitationRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OrganizationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => OrganizationServiceBase$messageJson;
}

