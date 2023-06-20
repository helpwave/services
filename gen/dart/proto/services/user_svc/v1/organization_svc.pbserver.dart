///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'organization_svc.pb.dart' as $8;
import 'organization_svc.pbjson.dart';

export 'organization_svc.pb.dart';

abstract class OrganizationServiceBase extends $pb.GeneratedService {
  $async.Future<$8.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $8.CreateOrganizationRequest request);
  $async.Future<$8.CreateOrganizationForUserResponse> createOrganizationForUser($pb.ServerContext ctx, $8.CreateOrganizationForUserRequest request);
  $async.Future<$8.GetOrganizationResponse> getOrganization($pb.ServerContext ctx, $8.GetOrganizationRequest request);
  $async.Future<$8.GetOrganizationsByUserResponse> getOrganizationsByUser($pb.ServerContext ctx, $8.GetOrganizationsByUserRequest request);
  $async.Future<$8.UpdateOrganizationResponse> updateOrganization($pb.ServerContext ctx, $8.UpdateOrganizationRequest request);
  $async.Future<$8.DeleteOrganizationResponse> deleteOrganization($pb.ServerContext ctx, $8.DeleteOrganizationRequest request);
  $async.Future<$8.AddMemberResponse> addMember($pb.ServerContext ctx, $8.AddMemberRequest request);
  $async.Future<$8.RemoveMemberResponse> removeMember($pb.ServerContext ctx, $8.RemoveMemberRequest request);
  $async.Future<$8.InviteMemberResponse> inviteMember($pb.ServerContext ctx, $8.InviteMemberRequest request);
  $async.Future<$8.AcceptInvitationResponse> acceptInvitation($pb.ServerContext ctx, $8.AcceptInvitationRequest request);
  $async.Future<$8.GetInvitationsByUserResponse> getInvitationsByUser($pb.ServerContext ctx, $8.GetInvitationsByUserRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateOrganization': return $8.CreateOrganizationRequest();
      case 'CreateOrganizationForUser': return $8.CreateOrganizationForUserRequest();
      case 'GetOrganization': return $8.GetOrganizationRequest();
      case 'GetOrganizationsByUser': return $8.GetOrganizationsByUserRequest();
      case 'UpdateOrganization': return $8.UpdateOrganizationRequest();
      case 'DeleteOrganization': return $8.DeleteOrganizationRequest();
      case 'AddMember': return $8.AddMemberRequest();
      case 'RemoveMember': return $8.RemoveMemberRequest();
      case 'InviteMember': return $8.InviteMemberRequest();
      case 'AcceptInvitation': return $8.AcceptInvitationRequest();
      case 'GetInvitationsByUser': return $8.GetInvitationsByUserRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateOrganization': return this.createOrganization(ctx, request as $8.CreateOrganizationRequest);
      case 'CreateOrganizationForUser': return this.createOrganizationForUser(ctx, request as $8.CreateOrganizationForUserRequest);
      case 'GetOrganization': return this.getOrganization(ctx, request as $8.GetOrganizationRequest);
      case 'GetOrganizationsByUser': return this.getOrganizationsByUser(ctx, request as $8.GetOrganizationsByUserRequest);
      case 'UpdateOrganization': return this.updateOrganization(ctx, request as $8.UpdateOrganizationRequest);
      case 'DeleteOrganization': return this.deleteOrganization(ctx, request as $8.DeleteOrganizationRequest);
      case 'AddMember': return this.addMember(ctx, request as $8.AddMemberRequest);
      case 'RemoveMember': return this.removeMember(ctx, request as $8.RemoveMemberRequest);
      case 'InviteMember': return this.inviteMember(ctx, request as $8.InviteMemberRequest);
      case 'AcceptInvitation': return this.acceptInvitation(ctx, request as $8.AcceptInvitationRequest);
      case 'GetInvitationsByUser': return this.getInvitationsByUser(ctx, request as $8.GetInvitationsByUserRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OrganizationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => OrganizationServiceBase$messageJson;
}

