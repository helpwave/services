/**
 * @fileoverview gRPC-Web generated client stub for proto.services.user_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.4.2
// 	protoc              v0.0.0
// source: proto/services/user_svc/v1/organization_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');

const proto = {};
proto.proto = {};
proto.proto.services = {};
proto.proto.services.user_svc = {};
proto.proto.services.user_svc.v1 = require('./organization_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options.format = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname.replace(/\/+$/, '');

};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options.format = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname.replace(/\/+$/, '');

};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.CreateOrganizationRequest,
 *   !proto.proto.services.user_svc.v1.CreateOrganizationResponse>}
 */
const methodDescriptor_OrganizationService_CreateOrganization = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.CreateOrganizationRequest,
  proto.proto.services.user_svc.v1.CreateOrganizationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.CreateOrganizationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.CreateOrganizationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.CreateOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.CreateOrganizationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.CreateOrganizationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.createOrganization =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_CreateOrganization,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.CreateOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.CreateOrganizationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.createOrganization =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_CreateOrganization);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.CreateOrganizationForUserRequest,
 *   !proto.proto.services.user_svc.v1.CreateOrganizationForUserResponse>}
 */
const methodDescriptor_OrganizationService_CreateOrganizationForUser = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.CreateOrganizationForUserRequest,
  proto.proto.services.user_svc.v1.CreateOrganizationForUserResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.CreateOrganizationForUserRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.CreateOrganizationForUserResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.CreateOrganizationForUserRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.CreateOrganizationForUserResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.CreateOrganizationForUserResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.createOrganizationForUser =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_CreateOrganizationForUser,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.CreateOrganizationForUserRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.CreateOrganizationForUserResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.createOrganizationForUser =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_CreateOrganizationForUser);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.GetOrganizationRequest,
 *   !proto.proto.services.user_svc.v1.GetOrganizationResponse>}
 */
const methodDescriptor_OrganizationService_GetOrganization = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.GetOrganizationRequest,
  proto.proto.services.user_svc.v1.GetOrganizationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.GetOrganizationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.GetOrganizationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.GetOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.GetOrganizationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.GetOrganizationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.getOrganization =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetOrganization,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.GetOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.GetOrganizationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.getOrganization =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetOrganization);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.GetOrganizationsByUserRequest,
 *   !proto.proto.services.user_svc.v1.GetOrganizationsByUserResponse>}
 */
const methodDescriptor_OrganizationService_GetOrganizationsByUser = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.GetOrganizationsByUserRequest,
  proto.proto.services.user_svc.v1.GetOrganizationsByUserResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.GetOrganizationsByUserRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.GetOrganizationsByUserResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.GetOrganizationsByUserRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.GetOrganizationsByUserResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.GetOrganizationsByUserResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.getOrganizationsByUser =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetOrganizationsByUser,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.GetOrganizationsByUserRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.GetOrganizationsByUserResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.getOrganizationsByUser =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetOrganizationsByUser);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.GetOrganizationsForUserRequest,
 *   !proto.proto.services.user_svc.v1.GetOrganizationsForUserResponse>}
 */
const methodDescriptor_OrganizationService_GetOrganizationsForUser = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.GetOrganizationsForUserRequest,
  proto.proto.services.user_svc.v1.GetOrganizationsForUserResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.GetOrganizationsForUserRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.GetOrganizationsForUserResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.GetOrganizationsForUserRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.GetOrganizationsForUserResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.GetOrganizationsForUserResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.getOrganizationsForUser =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetOrganizationsForUser,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.GetOrganizationsForUserRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.GetOrganizationsForUserResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.getOrganizationsForUser =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetOrganizationsForUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetOrganizationsForUser);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.UpdateOrganizationRequest,
 *   !proto.proto.services.user_svc.v1.UpdateOrganizationResponse>}
 */
const methodDescriptor_OrganizationService_UpdateOrganization = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.UpdateOrganizationRequest,
  proto.proto.services.user_svc.v1.UpdateOrganizationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.UpdateOrganizationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.UpdateOrganizationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.UpdateOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.UpdateOrganizationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.UpdateOrganizationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.updateOrganization =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_UpdateOrganization,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.UpdateOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.UpdateOrganizationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.updateOrganization =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/UpdateOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_UpdateOrganization);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.DeleteOrganizationRequest,
 *   !proto.proto.services.user_svc.v1.DeleteOrganizationResponse>}
 */
const methodDescriptor_OrganizationService_DeleteOrganization = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.DeleteOrganizationRequest,
  proto.proto.services.user_svc.v1.DeleteOrganizationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.DeleteOrganizationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.DeleteOrganizationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.DeleteOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.DeleteOrganizationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.DeleteOrganizationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.deleteOrganization =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_DeleteOrganization,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.DeleteOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.DeleteOrganizationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.deleteOrganization =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/DeleteOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_DeleteOrganization);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.GetMembersByOrganizationRequest,
 *   !proto.proto.services.user_svc.v1.GetMembersByOrganizationResponse>}
 */
const methodDescriptor_OrganizationService_GetMembersByOrganization = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.GetMembersByOrganizationRequest,
  proto.proto.services.user_svc.v1.GetMembersByOrganizationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.GetMembersByOrganizationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.GetMembersByOrganizationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.GetMembersByOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.GetMembersByOrganizationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.GetMembersByOrganizationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.getMembersByOrganization =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetMembersByOrganization,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.GetMembersByOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.GetMembersByOrganizationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.getMembersByOrganization =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetMembersByOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetMembersByOrganization);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.AddMemberRequest,
 *   !proto.proto.services.user_svc.v1.AddMemberResponse>}
 */
const methodDescriptor_OrganizationService_AddMember = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/AddMember',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.AddMemberRequest,
  proto.proto.services.user_svc.v1.AddMemberResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.AddMemberRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.AddMemberResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.AddMemberRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.AddMemberResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.AddMemberResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.addMember =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_AddMember,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.AddMemberRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.AddMemberResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.addMember =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/AddMember',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_AddMember);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.RemoveMemberRequest,
 *   !proto.proto.services.user_svc.v1.RemoveMemberResponse>}
 */
const methodDescriptor_OrganizationService_RemoveMember = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.RemoveMemberRequest,
  proto.proto.services.user_svc.v1.RemoveMemberResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.RemoveMemberRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.RemoveMemberResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.RemoveMemberRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.RemoveMemberResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.RemoveMemberResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.removeMember =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_RemoveMember,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.RemoveMemberRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.RemoveMemberResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.removeMember =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/RemoveMember',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_RemoveMember);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.InviteMemberRequest,
 *   !proto.proto.services.user_svc.v1.InviteMemberResponse>}
 */
const methodDescriptor_OrganizationService_InviteMember = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/InviteMember',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.InviteMemberRequest,
  proto.proto.services.user_svc.v1.InviteMemberResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.InviteMemberRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.InviteMemberResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.InviteMemberRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.InviteMemberResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.InviteMemberResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.inviteMember =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_InviteMember,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.InviteMemberRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.InviteMemberResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.inviteMember =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/InviteMember',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_InviteMember);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.GetInvitationsByOrganizationRequest,
 *   !proto.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse>}
 */
const methodDescriptor_OrganizationService_GetInvitationsByOrganization = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.GetInvitationsByOrganizationRequest,
  proto.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.GetInvitationsByOrganizationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.GetInvitationsByOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.getInvitationsByOrganization =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetInvitationsByOrganization,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.GetInvitationsByOrganizationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.GetInvitationsByOrganizationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.getInvitationsByOrganization =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByOrganization',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetInvitationsByOrganization);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.GetInvitationsByUserRequest,
 *   !proto.proto.services.user_svc.v1.GetInvitationsByUserResponse>}
 */
const methodDescriptor_OrganizationService_GetInvitationsByUser = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.GetInvitationsByUserRequest,
  proto.proto.services.user_svc.v1.GetInvitationsByUserResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.GetInvitationsByUserRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.GetInvitationsByUserResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.GetInvitationsByUserRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.GetInvitationsByUserResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.GetInvitationsByUserResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.getInvitationsByUser =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetInvitationsByUser,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.GetInvitationsByUserRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.GetInvitationsByUserResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.getInvitationsByUser =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/GetInvitationsByUser',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_GetInvitationsByUser);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.AcceptInvitationRequest,
 *   !proto.proto.services.user_svc.v1.AcceptInvitationResponse>}
 */
const methodDescriptor_OrganizationService_AcceptInvitation = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.AcceptInvitationRequest,
  proto.proto.services.user_svc.v1.AcceptInvitationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.AcceptInvitationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.AcceptInvitationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.AcceptInvitationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.AcceptInvitationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.AcceptInvitationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.acceptInvitation =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_AcceptInvitation,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.AcceptInvitationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.AcceptInvitationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.acceptInvitation =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/AcceptInvitation',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_AcceptInvitation);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.DeclineInvitationRequest,
 *   !proto.proto.services.user_svc.v1.DeclineInvitationResponse>}
 */
const methodDescriptor_OrganizationService_DeclineInvitation = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.DeclineInvitationRequest,
  proto.proto.services.user_svc.v1.DeclineInvitationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.DeclineInvitationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.DeclineInvitationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.DeclineInvitationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.DeclineInvitationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.DeclineInvitationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.declineInvitation =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_DeclineInvitation,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.DeclineInvitationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.DeclineInvitationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.declineInvitation =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/DeclineInvitation',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_DeclineInvitation);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.user_svc.v1.RevokeInvitationRequest,
 *   !proto.proto.services.user_svc.v1.RevokeInvitationResponse>}
 */
const methodDescriptor_OrganizationService_RevokeInvitation = new grpc.web.MethodDescriptor(
  '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
  grpc.web.MethodType.UNARY,
  proto.proto.services.user_svc.v1.RevokeInvitationRequest,
  proto.proto.services.user_svc.v1.RevokeInvitationResponse,
  /**
   * @param {!proto.proto.services.user_svc.v1.RevokeInvitationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.user_svc.v1.RevokeInvitationResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.user_svc.v1.RevokeInvitationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.user_svc.v1.RevokeInvitationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.user_svc.v1.RevokeInvitationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.user_svc.v1.OrganizationServiceClient.prototype.revokeInvitation =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_RevokeInvitation,
      callback);
};


/**
 * @param {!proto.proto.services.user_svc.v1.RevokeInvitationRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.user_svc.v1.RevokeInvitationResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.user_svc.v1.OrganizationServicePromiseClient.prototype.revokeInvitation =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.user_svc.v1.OrganizationService/RevokeInvitation',
      request,
      metadata || {},
      methodDescriptor_OrganizationService_RevokeInvitation);
};


module.exports = proto.proto.services.user_svc.v1;

