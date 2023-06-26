/**
 * @fileoverview gRPC-Web generated client stub for proto.services.task_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.4.2
// 	protoc              v0.0.0
// source: proto/services/task_svc/v1/task_template_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');

const proto = {};
proto.proto = {};
proto.proto.services = {};
proto.proto.services.task_svc = {};
proto.proto.services.task_svc.v1 = require('./task_template_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.proto.services.task_svc.v1.TaskTemplateServiceClient =
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
proto.proto.services.task_svc.v1.TaskTemplateServicePromiseClient =
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
 *   !proto.proto.services.task_svc.v1.CreateTaskTemplateRequest,
 *   !proto.proto.services.task_svc.v1.CreateTaskTemplateResponse>}
 */
const methodDescriptor_TaskTemplateService_CreateTaskTemplate = new grpc.web.MethodDescriptor(
  '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
  grpc.web.MethodType.UNARY,
  proto.proto.services.task_svc.v1.CreateTaskTemplateRequest,
  proto.proto.services.task_svc.v1.CreateTaskTemplateResponse,
  /**
   * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.task_svc.v1.CreateTaskTemplateResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.createTaskTemplate =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_CreateTaskTemplate,
      callback);
};


/**
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.createTaskTemplate =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_CreateTaskTemplate);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest,
 *   !proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse>}
 */
const methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByUser = new grpc.web.MethodDescriptor(
  '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByUser',
  grpc.web.MethodType.UNARY,
  proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest,
  proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse,
  /**
   * @param {!proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.getAllTaskTemplatesByUser =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByUser',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByUser,
      callback);
};


/**
 * @param {!proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.getAllTaskTemplatesByUser =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByUser',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByUser);
};


module.exports = proto.proto.services.task_svc.v1;

