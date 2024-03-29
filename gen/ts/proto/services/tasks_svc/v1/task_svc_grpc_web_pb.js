/**
 * @fileoverview gRPC-Web generated client stub for proto.services.tasks_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.5.0
// 	protoc              v0.0.0
// source: proto/services/tasks_svc/v1/task_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');


var google_protobuf_timestamp_pb = require('google-protobuf/google/protobuf/timestamp_pb.js')
const proto = {};
proto.proto = {};
proto.proto.services = {};
proto.proto.services.tasks_svc = {};
proto.proto.services.tasks_svc.v1 = require('./task_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient =
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
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient =
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
 *   !proto.proto.services.tasks_svc.v1.CreateTaskRequest,
 *   !proto.proto.services.tasks_svc.v1.CreateTaskResponse>}
 */
const methodDescriptor_TaskService_CreateTask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/CreateTask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.CreateTaskRequest,
  proto.proto.services.tasks_svc.v1.CreateTaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.CreateTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.CreateTaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.CreateTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.CreateTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.CreateTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.createTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/CreateTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_CreateTask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.CreateTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.CreateTaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.createTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/CreateTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_CreateTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.UpdateTaskRequest,
 *   !proto.proto.services.tasks_svc.v1.UpdateTaskResponse>}
 */
const methodDescriptor_TaskService_UpdateTask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.UpdateTaskRequest,
  proto.proto.services.tasks_svc.v1.UpdateTaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.UpdateTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.UpdateTaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.UpdateTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.UpdateTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.UpdateTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.updateTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UpdateTask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.UpdateTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.UpdateTaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.updateTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UpdateTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.GetTaskRequest,
 *   !proto.proto.services.tasks_svc.v1.GetTaskResponse>}
 */
const methodDescriptor_TaskService_GetTask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/GetTask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.GetTaskRequest,
  proto.proto.services.tasks_svc.v1.GetTaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.GetTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.GetTaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.GetTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.GetTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.GetTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.getTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_GetTask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.GetTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.GetTaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.getTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_GetTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.AssignTaskRequest,
 *   !proto.proto.services.tasks_svc.v1.AssignTaskResponse>}
 */
const methodDescriptor_TaskService_AssignTask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/AssignTask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.AssignTaskRequest,
  proto.proto.services.tasks_svc.v1.AssignTaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.AssignTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.AssignTaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.AssignTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.AssignTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.AssignTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.assignTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/AssignTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_AssignTask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.AssignTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.AssignTaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.assignTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/AssignTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_AssignTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.UnassignTaskRequest,
 *   !proto.proto.services.tasks_svc.v1.UnassignTaskResponse>}
 */
const methodDescriptor_TaskService_UnassignTask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/UnassignTask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.UnassignTaskRequest,
  proto.proto.services.tasks_svc.v1.UnassignTaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.UnassignTaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.UnassignTaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.UnassignTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.UnassignTaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.UnassignTaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.unassignTask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UnassignTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UnassignTask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.UnassignTaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.UnassignTaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.unassignTask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UnassignTask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UnassignTask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.CreateSubtaskRequest,
 *   !proto.proto.services.tasks_svc.v1.CreateSubtaskResponse>}
 */
const methodDescriptor_TaskService_CreateSubtask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.CreateSubtaskRequest,
  proto.proto.services.tasks_svc.v1.CreateSubtaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.CreateSubtaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.CreateSubtaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.CreateSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.CreateSubtaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.CreateSubtaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.createSubtask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_CreateSubtask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.CreateSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.CreateSubtaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.createSubtask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_CreateSubtask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.UpdateSubtaskRequest,
 *   !proto.proto.services.tasks_svc.v1.UpdateSubtaskResponse>}
 */
const methodDescriptor_TaskService_UpdateSubtask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.UpdateSubtaskRequest,
  proto.proto.services.tasks_svc.v1.UpdateSubtaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.UpdateSubtaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.UpdateSubtaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.UpdateSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.UpdateSubtaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.UpdateSubtaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.updateSubtask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UpdateSubtask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.UpdateSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.UpdateSubtaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.updateSubtask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UpdateSubtask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.CompleteSubtaskRequest,
 *   !proto.proto.services.tasks_svc.v1.CompleteSubtaskResponse>}
 */
const methodDescriptor_TaskService_CompleteSubtask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.CompleteSubtaskRequest,
  proto.proto.services.tasks_svc.v1.CompleteSubtaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.CompleteSubtaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.CompleteSubtaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.CompleteSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.CompleteSubtaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.CompleteSubtaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.completeSubtask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_CompleteSubtask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.CompleteSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.CompleteSubtaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.completeSubtask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_CompleteSubtask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.UncompleteSubtaskRequest,
 *   !proto.proto.services.tasks_svc.v1.UncompleteSubtaskResponse>}
 */
const methodDescriptor_TaskService_UncompleteSubtask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.UncompleteSubtaskRequest,
  proto.proto.services.tasks_svc.v1.UncompleteSubtaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.UncompleteSubtaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.UncompleteSubtaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.UncompleteSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.UncompleteSubtaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.UncompleteSubtaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.uncompleteSubtask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UncompleteSubtask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.UncompleteSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.UncompleteSubtaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.uncompleteSubtask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_UncompleteSubtask);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.tasks_svc.v1.DeleteSubtaskRequest,
 *   !proto.proto.services.tasks_svc.v1.DeleteSubtaskResponse>}
 */
const methodDescriptor_TaskService_DeleteSubtask = new grpc.web.MethodDescriptor(
  '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
  grpc.web.MethodType.UNARY,
  proto.proto.services.tasks_svc.v1.DeleteSubtaskRequest,
  proto.proto.services.tasks_svc.v1.DeleteSubtaskResponse,
  /**
   * @param {!proto.proto.services.tasks_svc.v1.DeleteSubtaskRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.tasks_svc.v1.DeleteSubtaskResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.tasks_svc.v1.DeleteSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.tasks_svc.v1.DeleteSubtaskResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.tasks_svc.v1.DeleteSubtaskResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.tasks_svc.v1.TaskServiceClient.prototype.deleteSubtask =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_DeleteSubtask,
      callback);
};


/**
 * @param {!proto.proto.services.tasks_svc.v1.DeleteSubtaskRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.tasks_svc.v1.DeleteSubtaskResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.tasks_svc.v1.TaskServicePromiseClient.prototype.deleteSubtask =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
      request,
      metadata || {},
      methodDescriptor_TaskService_DeleteSubtask);
};


module.exports = proto.proto.services.tasks_svc.v1;

