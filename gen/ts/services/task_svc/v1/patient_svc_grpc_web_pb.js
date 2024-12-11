/**
 * @fileoverview gRPC-Web generated client stub for services.task_svc.v1
 * @enhanceable
 * @public
 */

// Code generated by protoc-gen-grpc-web. DO NOT EDIT.
// versions:
// 	protoc-gen-grpc-web v1.5.0
// 	protoc              v0.0.0
// source: services/task_svc/v1/patient_svc.proto


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');


var libs_common_v1_types_pb = require('../../../libs/common/v1/types_pb.js')
const proto = {};
proto.services = {};
proto.services.task_svc = {};
proto.services.task_svc.v1 = require('./patient_svc_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.services.task_svc.v1.PatientServiceClient =
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
proto.services.task_svc.v1.PatientServicePromiseClient =
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
 *   !proto.services.task_svc.v1.CreatePatientRequest,
 *   !proto.services.task_svc.v1.CreatePatientResponse>}
 */
const methodDescriptor_PatientService_CreatePatient = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/CreatePatient',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.CreatePatientRequest,
  proto.services.task_svc.v1.CreatePatientResponse,
  /**
   * @param {!proto.services.task_svc.v1.CreatePatientRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.CreatePatientResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.CreatePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.CreatePatientResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.CreatePatientResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.createPatient =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/CreatePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_CreatePatient,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.CreatePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.CreatePatientResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.createPatient =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/CreatePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_CreatePatient);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetPatientRequest,
 *   !proto.services.task_svc.v1.GetPatientResponse>}
 */
const methodDescriptor_PatientService_GetPatient = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetPatient',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetPatientRequest,
  proto.services.task_svc.v1.GetPatientResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetPatientRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetPatientResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetPatientRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetPatientResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetPatientResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getPatient =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatient,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetPatientResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getPatient =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatient);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetPatientByBedRequest,
 *   !proto.services.task_svc.v1.GetPatientByBedResponse>}
 */
const methodDescriptor_PatientService_GetPatientByBed = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetPatientByBed',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetPatientByBedRequest,
  proto.services.task_svc.v1.GetPatientByBedResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetPatientByBedRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetPatientByBedResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetPatientByBedRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetPatientByBedResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetPatientByBedResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getPatientByBed =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientByBed',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientByBed,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientByBedRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetPatientByBedResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getPatientByBed =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientByBed',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientByBed);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetPatientsByWardRequest,
 *   !proto.services.task_svc.v1.GetPatientsByWardResponse>}
 */
const methodDescriptor_PatientService_GetPatientsByWard = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetPatientsByWard',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetPatientsByWardRequest,
  proto.services.task_svc.v1.GetPatientsByWardResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetPatientsByWardRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetPatientsByWardResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetPatientsByWardRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetPatientsByWardResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetPatientsByWardResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getPatientsByWard =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientsByWard',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientsByWard,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientsByWardRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetPatientsByWardResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getPatientsByWard =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientsByWard',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientsByWard);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetPatientAssignmentByWardRequest,
 *   !proto.services.task_svc.v1.GetPatientAssignmentByWardResponse>}
 */
const methodDescriptor_PatientService_GetPatientAssignmentByWard = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetPatientAssignmentByWardRequest,
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetPatientAssignmentByWardResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getPatientAssignmentByWard =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientAssignmentByWard,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getPatientAssignmentByWard =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientAssignmentByWard);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetRecentPatientsRequest,
 *   !proto.services.task_svc.v1.GetRecentPatientsResponse>}
 */
const methodDescriptor_PatientService_GetRecentPatients = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetRecentPatients',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetRecentPatientsRequest,
  proto.services.task_svc.v1.GetRecentPatientsResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetRecentPatientsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetRecentPatientsResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetRecentPatientsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetRecentPatientsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetRecentPatientsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getRecentPatients =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetRecentPatients',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetRecentPatients,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetRecentPatientsRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetRecentPatientsResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getRecentPatients =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetRecentPatients',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetRecentPatients);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.UpdatePatientRequest,
 *   !proto.services.task_svc.v1.UpdatePatientResponse>}
 */
const methodDescriptor_PatientService_UpdatePatient = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/UpdatePatient',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.UpdatePatientRequest,
  proto.services.task_svc.v1.UpdatePatientResponse,
  /**
   * @param {!proto.services.task_svc.v1.UpdatePatientRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.UpdatePatientResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.UpdatePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.UpdatePatientResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.UpdatePatientResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.updatePatient =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/UpdatePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_UpdatePatient,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.UpdatePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.UpdatePatientResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.updatePatient =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/UpdatePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_UpdatePatient);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.AssignBedRequest,
 *   !proto.services.task_svc.v1.AssignBedResponse>}
 */
const methodDescriptor_PatientService_AssignBed = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/AssignBed',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.AssignBedRequest,
  proto.services.task_svc.v1.AssignBedResponse,
  /**
   * @param {!proto.services.task_svc.v1.AssignBedRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.AssignBedResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.AssignBedRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.AssignBedResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.AssignBedResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.assignBed =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/AssignBed',
      request,
      metadata || {},
      methodDescriptor_PatientService_AssignBed,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.AssignBedRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.AssignBedResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.assignBed =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/AssignBed',
      request,
      metadata || {},
      methodDescriptor_PatientService_AssignBed);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.UnassignBedRequest,
 *   !proto.services.task_svc.v1.UnassignBedResponse>}
 */
const methodDescriptor_PatientService_UnassignBed = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/UnassignBed',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.UnassignBedRequest,
  proto.services.task_svc.v1.UnassignBedResponse,
  /**
   * @param {!proto.services.task_svc.v1.UnassignBedRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.UnassignBedResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.UnassignBedRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.UnassignBedResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.UnassignBedResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.unassignBed =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/UnassignBed',
      request,
      metadata || {},
      methodDescriptor_PatientService_UnassignBed,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.UnassignBedRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.UnassignBedResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.unassignBed =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/UnassignBed',
      request,
      metadata || {},
      methodDescriptor_PatientService_UnassignBed);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.DischargePatientRequest,
 *   !proto.services.task_svc.v1.DischargePatientResponse>}
 */
const methodDescriptor_PatientService_DischargePatient = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/DischargePatient',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.DischargePatientRequest,
  proto.services.task_svc.v1.DischargePatientResponse,
  /**
   * @param {!proto.services.task_svc.v1.DischargePatientRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.DischargePatientResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.DischargePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.DischargePatientResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.DischargePatientResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.dischargePatient =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/DischargePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_DischargePatient,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.DischargePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.DischargePatientResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.dischargePatient =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/DischargePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_DischargePatient);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetPatientDetailsRequest,
 *   !proto.services.task_svc.v1.GetPatientDetailsResponse>}
 */
const methodDescriptor_PatientService_GetPatientDetails = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetPatientDetails',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetPatientDetailsRequest,
  proto.services.task_svc.v1.GetPatientDetailsResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetPatientDetailsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetPatientDetailsResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetPatientDetailsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetPatientDetailsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetPatientDetailsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getPatientDetails =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientDetails',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientDetails,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientDetailsRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetPatientDetailsResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getPatientDetails =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientDetails',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientDetails);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.GetPatientListRequest,
 *   !proto.services.task_svc.v1.GetPatientListResponse>}
 */
const methodDescriptor_PatientService_GetPatientList = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/GetPatientList',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.GetPatientListRequest,
  proto.services.task_svc.v1.GetPatientListResponse,
  /**
   * @param {!proto.services.task_svc.v1.GetPatientListRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.GetPatientListResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.GetPatientListRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.GetPatientListResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.GetPatientListResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.getPatientList =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientList',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientList,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.GetPatientListResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.getPatientList =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/GetPatientList',
      request,
      metadata || {},
      methodDescriptor_PatientService_GetPatientList);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.DeletePatientRequest,
 *   !proto.services.task_svc.v1.DeletePatientResponse>}
 */
const methodDescriptor_PatientService_DeletePatient = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/DeletePatient',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.DeletePatientRequest,
  proto.services.task_svc.v1.DeletePatientResponse,
  /**
   * @param {!proto.services.task_svc.v1.DeletePatientRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.DeletePatientResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.DeletePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.DeletePatientResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.DeletePatientResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.deletePatient =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/DeletePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_DeletePatient,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.DeletePatientRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.DeletePatientResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.deletePatient =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/DeletePatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_DeletePatient);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.services.task_svc.v1.ReadmitPatientRequest,
 *   !proto.services.task_svc.v1.ReadmitPatientResponse>}
 */
const methodDescriptor_PatientService_ReadmitPatient = new grpc.web.MethodDescriptor(
  '/services.task_svc.v1.PatientService/ReadmitPatient',
  grpc.web.MethodType.UNARY,
  proto.services.task_svc.v1.ReadmitPatientRequest,
  proto.services.task_svc.v1.ReadmitPatientResponse,
  /**
   * @param {!proto.services.task_svc.v1.ReadmitPatientRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.services.task_svc.v1.ReadmitPatientResponse.deserializeBinary
);


/**
 * @param {!proto.services.task_svc.v1.ReadmitPatientRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.services.task_svc.v1.ReadmitPatientResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.services.task_svc.v1.ReadmitPatientResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.services.task_svc.v1.PatientServiceClient.prototype.readmitPatient =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/ReadmitPatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_ReadmitPatient,
      callback);
};


/**
 * @param {!proto.services.task_svc.v1.ReadmitPatientRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.services.task_svc.v1.ReadmitPatientResponse>}
 *     Promise that resolves to the response
 */
proto.services.task_svc.v1.PatientServicePromiseClient.prototype.readmitPatient =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/services.task_svc.v1.PatientService/ReadmitPatient',
      request,
      metadata || {},
      methodDescriptor_PatientService_ReadmitPatient);
};


module.exports = proto.services.task_svc.v1;

