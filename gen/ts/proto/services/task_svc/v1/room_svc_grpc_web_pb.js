/**
 * @fileoverview gRPC-Web generated client stub for proto.services.task_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.4.2
// 	protoc              v0.0.0
// source: proto/services/task_svc/v1/room_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');

const proto = {};
proto.proto = {};
proto.proto.services = {};
proto.proto.services.task_svc = {};
proto.proto.services.task_svc.v1 = require('./room_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.proto.services.task_svc.v1.RoomServiceClient =
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
proto.proto.services.task_svc.v1.RoomServicePromiseClient =
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
 *   !proto.proto.services.task_svc.v1.CreateRoomRequest,
 *   !proto.proto.services.task_svc.v1.CreateRoomResponse>}
 */
const methodDescriptor_RoomService_CreateRoom = new grpc.web.MethodDescriptor(
  '/proto.services.task_svc.v1.RoomService/CreateRoom',
  grpc.web.MethodType.UNARY,
  proto.proto.services.task_svc.v1.CreateRoomRequest,
  proto.proto.services.task_svc.v1.CreateRoomResponse,
  /**
   * @param {!proto.proto.services.task_svc.v1.CreateRoomRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.task_svc.v1.CreateRoomResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.task_svc.v1.CreateRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.task_svc.v1.CreateRoomResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.task_svc.v1.CreateRoomResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.task_svc.v1.RoomServiceClient.prototype.createRoom =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_CreateRoom,
      callback);
};


/**
 * @param {!proto.proto.services.task_svc.v1.CreateRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.task_svc.v1.CreateRoomResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.task_svc.v1.RoomServicePromiseClient.prototype.createRoom =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_CreateRoom);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.task_svc.v1.GetRoomRequest,
 *   !proto.proto.services.task_svc.v1.GetRoomResponse>}
 */
const methodDescriptor_RoomService_GetRoom = new grpc.web.MethodDescriptor(
  '/proto.services.task_svc.v1.RoomService/GetRoom',
  grpc.web.MethodType.UNARY,
  proto.proto.services.task_svc.v1.GetRoomRequest,
  proto.proto.services.task_svc.v1.GetRoomResponse,
  /**
   * @param {!proto.proto.services.task_svc.v1.GetRoomRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.task_svc.v1.GetRoomResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.task_svc.v1.GetRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.task_svc.v1.GetRoomResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.task_svc.v1.GetRoomResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.task_svc.v1.RoomServiceClient.prototype.getRoom =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_GetRoom,
      callback);
};


/**
 * @param {!proto.proto.services.task_svc.v1.GetRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.task_svc.v1.GetRoomResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.task_svc.v1.RoomServicePromiseClient.prototype.getRoom =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_GetRoom);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.task_svc.v1.UpdateRoomRequest,
 *   !proto.proto.services.task_svc.v1.UpdateRoomResponse>}
 */
const methodDescriptor_RoomService_UpdateRoom = new grpc.web.MethodDescriptor(
  '/proto.services.task_svc.v1.RoomService/UpdateRoom',
  grpc.web.MethodType.UNARY,
  proto.proto.services.task_svc.v1.UpdateRoomRequest,
  proto.proto.services.task_svc.v1.UpdateRoomResponse,
  /**
   * @param {!proto.proto.services.task_svc.v1.UpdateRoomRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.task_svc.v1.UpdateRoomResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.task_svc.v1.UpdateRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.task_svc.v1.UpdateRoomResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.task_svc.v1.UpdateRoomResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.task_svc.v1.RoomServiceClient.prototype.updateRoom =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_UpdateRoom,
      callback);
};


/**
 * @param {!proto.proto.services.task_svc.v1.UpdateRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.task_svc.v1.UpdateRoomResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.task_svc.v1.RoomServicePromiseClient.prototype.updateRoom =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_UpdateRoom);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.proto.services.task_svc.v1.DeleteRoomRequest,
 *   !proto.proto.services.task_svc.v1.DeleteRoomResponse>}
 */
const methodDescriptor_RoomService_DeleteRoom = new grpc.web.MethodDescriptor(
  '/proto.services.task_svc.v1.RoomService/DeleteRoom',
  grpc.web.MethodType.UNARY,
  proto.proto.services.task_svc.v1.DeleteRoomRequest,
  proto.proto.services.task_svc.v1.DeleteRoomResponse,
  /**
   * @param {!proto.proto.services.task_svc.v1.DeleteRoomRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.proto.services.task_svc.v1.DeleteRoomResponse.deserializeBinary
);


/**
 * @param {!proto.proto.services.task_svc.v1.DeleteRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.proto.services.task_svc.v1.DeleteRoomResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.proto.services.task_svc.v1.DeleteRoomResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.proto.services.task_svc.v1.RoomServiceClient.prototype.deleteRoom =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_DeleteRoom,
      callback);
};


/**
 * @param {!proto.proto.services.task_svc.v1.DeleteRoomRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.proto.services.task_svc.v1.DeleteRoomResponse>}
 *     Promise that resolves to the response
 */
proto.proto.services.task_svc.v1.RoomServicePromiseClient.prototype.deleteRoom =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      request,
      metadata || {},
      methodDescriptor_RoomService_DeleteRoom);
};


module.exports = proto.proto.services.task_svc.v1;

