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


module.exports = proto.proto.services.user_svc.v1;

