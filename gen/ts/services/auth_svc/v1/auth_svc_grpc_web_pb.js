/**
 * @fileoverview gRPC-Web generated client stub for services.auth_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.5.0
// 	protoc              v0.0.0
// source: services/auth_svc/v1/auth_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');

const proto = {};
proto.services = {};
proto.services.auth_svc = {};
proto.services.auth_svc.v1 = require('./auth_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.services.auth_svc.v1.AuthServiceClient =
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
proto.services.auth_svc.v1.AuthServicePromiseClient =
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
 *   !proto.services.auth_svc.v1.PrelimAuthRequestRequest,
 *   !proto.services.auth_svc.v1.PrelimAuthRequestResponse>}
 */
const methodDescriptor_AuthService_PrelimAuthRequest = new grpc.web.MethodDescriptor(
  '/services.auth_svc.v1.AuthService/PrelimAuthRequest',
  grpc.web.MethodType.UNARY,
  proto.services.auth_svc.v1.PrelimAuthRequestRequest,
  proto.services.auth_svc.v1.PrelimAuthRequestResponse,
  /**
   * @param {!proto.services.auth_svc.v1.PrelimAuthRequestRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.auth_svc.v1.PrelimAuthRequestResponse.deserializeBinary
);


/**
 * @param {!proto.services.auth_svc.v1.PrelimAuthRequestRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.auth_svc.v1.PrelimAuthRequestResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.auth_svc.v1.PrelimAuthRequestResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.auth_svc.v1.AuthServiceClient.prototype.prelimAuthRequest =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.auth_svc.v1.AuthService/PrelimAuthRequest',
      request,
      metadata || {},
      methodDescriptor_AuthService_PrelimAuthRequest,
      callback);
};


/**
 * @param {!proto.services.auth_svc.v1.PrelimAuthRequestRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.auth_svc.v1.PrelimAuthRequestResponse>}
 *     Promise that resolves to the response
 */
proto.services.auth_svc.v1.AuthServicePromiseClient.prototype.prelimAuthRequest =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.auth_svc.v1.AuthService/PrelimAuthRequest',
      request,
      metadata || {},
      methodDescriptor_AuthService_PrelimAuthRequest);
};


module.exports = proto.services.auth_svc.v1;

