/**
 * @fileoverview gRPC-Web generated client stub for services.task_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.5.0
// 	protoc              v0.0.0
// source: services/task_svc/v1/task_template_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');

const proto = {};
proto.services = {};
proto.services.task_svc = {};
proto.services.task_svc.v1 = require('./task_template_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.services.task_svc.v1.TaskTemplateServiceClient =
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
proto.services.task_svc.v1.TaskTemplateServicePromiseClient =
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
 *   !proto.services.task_svc.v1.CreateTaskTemplateRequest,
 *   !proto.services.task_svc.v1.CreateTaskTemplateResponse>}
 */
const methodDescriptor_TaskTemplateService_CreateTaskTemplate = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.CreateTaskTemplateRequest,
  proto.services.task_svc.v1.CreateTaskTemplateResponse,
  /**
   * @param {!proto.services.task_svc.v1.CreateTaskTemplateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.CreateTaskTemplateResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.CreateTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.CreateTaskTemplateResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.CreateTaskTemplateResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.createTaskTemplate =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_CreateTaskTemplate,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.CreateTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.CreateTaskTemplateResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.createTaskTemplate =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_CreateTaskTemplate);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetAllTaskTemplatesRequest,
 *   !proto.services.task_svc.v1.GetAllTaskTemplatesResponse>}
 */
const methodDescriptor_TaskTemplateService_GetAllTaskTemplates = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetAllTaskTemplatesRequest,
  proto.services.task_svc.v1.GetAllTaskTemplatesResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetAllTaskTemplatesResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetAllTaskTemplatesResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetAllTaskTemplatesResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.getAllTaskTemplates =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplates,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetAllTaskTemplatesResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.getAllTaskTemplates =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplates);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.DeleteTaskTemplateRequest,
 *   !proto.services.task_svc.v1.DeleteTaskTemplateResponse>}
 */
const methodDescriptor_TaskTemplateService_DeleteTaskTemplate = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.DeleteTaskTemplateRequest,
  proto.services.task_svc.v1.DeleteTaskTemplateResponse,
  /**
   * @param {!proto.services.task_svc.v1.DeleteTaskTemplateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.DeleteTaskTemplateResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.DeleteTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.DeleteTaskTemplateResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.DeleteTaskTemplateResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.deleteTaskTemplate =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_DeleteTaskTemplate,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.DeleteTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.DeleteTaskTemplateResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.deleteTaskTemplate =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_DeleteTaskTemplate);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest,
 *   !proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse>}
 */
const methodDescriptor_TaskTemplateService_DeleteTaskTemplateSubTask = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest,
  proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse,
  /**
   * @param {!proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.deleteTaskTemplateSubTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_DeleteTaskTemplateSubTask,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.deleteTaskTemplateSubTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_DeleteTaskTemplateSubTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.UpdateTaskTemplateRequest,
 *   !proto.services.task_svc.v1.UpdateTaskTemplateResponse>}
 */
const methodDescriptor_TaskTemplateService_UpdateTaskTemplate = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.UpdateTaskTemplateRequest,
  proto.services.task_svc.v1.UpdateTaskTemplateResponse,
  /**
   * @param {!proto.services.task_svc.v1.UpdateTaskTemplateRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.UpdateTaskTemplateResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.UpdateTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.UpdateTaskTemplateResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.UpdateTaskTemplateResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.updateTaskTemplate =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_UpdateTaskTemplate,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.UpdateTaskTemplateRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.UpdateTaskTemplateResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.updateTaskTemplate =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_UpdateTaskTemplate);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest,
 *   !proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse>}
 */
const methodDescriptor_TaskTemplateService_UpdateTaskTemplateSubTask = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest,
  proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse,
  /**
   * @param {!proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.updateTaskTemplateSubTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_UpdateTaskTemplateSubTask,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.updateTaskTemplateSubTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_UpdateTaskTemplateSubTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest,
 *   !proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse>}
 */
const methodDescriptor_TaskTemplateService_CreateTaskTemplateSubTask = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest,
  proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse,
  /**
   * @param {!proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.createTaskTemplateSubTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_CreateTaskTemplateSubTask,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.createTaskTemplateSubTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_CreateTaskTemplateSubTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest,
 *   !proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse>}
 */
const methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByCreator = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest,
  proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.getAllTaskTemplatesByCreator =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByCreator,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.getAllTaskTemplatesByCreator =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByCreator);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest,
 *   !proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse>}
 */
const methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByWard = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest,
  proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.TaskTemplateServiceClient.prototype.getAllTaskTemplatesByWard =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByWard,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.TaskTemplateServicePromiseClient.prototype.getAllTaskTemplatesByWard =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      request,
      metadata || {},
      methodDescriptor_TaskTemplateService_GetAllTaskTemplatesByWard);
};


module.exports = proto.services.task_svc.v1;

