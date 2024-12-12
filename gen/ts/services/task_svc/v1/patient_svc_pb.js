// source: services/task_svc/v1/patient_svc.proto
/**
 * @fileoverview
 * @enhanceable
 * @suppress {missingRequire} reports error on implicit type usages.
 * @suppress {messageConventions} JS Compiler reports an error if a variable or
 *     field starts with 'MSG_' and isn't a translatable message.
 * @public
 */
// GENERATED CODE -- DO NOT EDIT!
/* eslint-disable */
// @ts-nocheck

var jspb = require('google-protobuf');
var goog = jspb;
var global =
    (typeof globalThis !== 'undefined' && globalThis) ||
    (typeof window !== 'undefined' && window) ||
    (typeof global !== 'undefined' && global) ||
    (typeof self !== 'undefined' && self) ||
    (function () { return this; }).call(null) ||
    Function('return this')();

goog.exportSymbol('proto.services.task_svc.v1.AssignBedRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.AssignBedResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.CreatePatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.CreatePatientResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.DeletePatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.DeletePatientResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.DischargePatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.DischargePatientResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientAssignmentByWardRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientAssignmentByWardResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientByBedRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientByBedResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsResponse.Bed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsResponse.Room', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsResponse.Task', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.Bed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.Patient', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.Room', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.Task', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientListResponse.TaskStatus', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientResponse.Bed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientResponse.Room', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientsByWardRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientsByWardResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetPatientsByWardResponse.Patient', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetRecentPatientsRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetRecentPatientsResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetRecentPatientsResponse.Bed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetRecentPatientsResponse.Room', null, global);
goog.exportSymbol('proto.services.task_svc.v1.ReadmitPatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.ReadmitPatientResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UnassignBedRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UnassignBedResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UpdatePatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UpdatePatientResponse', null, global);
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.CreatePatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.CreatePatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.CreatePatientRequest.displayName = 'proto.services.task_svc.v1.CreatePatientRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.CreatePatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.CreatePatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.CreatePatientResponse.displayName = 'proto.services.task_svc.v1.CreatePatientResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientRequest.displayName = 'proto.services.task_svc.v1.GetPatientRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientResponse.displayName = 'proto.services.task_svc.v1.GetPatientResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientResponse.Room = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientResponse.Room, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientResponse.Room.displayName = 'proto.services.task_svc.v1.GetPatientResponse.Room';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientResponse.Bed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientResponse.Bed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientResponse.Bed.displayName = 'proto.services.task_svc.v1.GetPatientResponse.Bed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.DeletePatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.DeletePatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.DeletePatientRequest.displayName = 'proto.services.task_svc.v1.DeletePatientRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.DeletePatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.DeletePatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.DeletePatientResponse.displayName = 'proto.services.task_svc.v1.DeletePatientResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientByBedRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientByBedRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientByBedRequest.displayName = 'proto.services.task_svc.v1.GetPatientByBedRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientByBedResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientByBedResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientByBedResponse.displayName = 'proto.services.task_svc.v1.GetPatientByBedResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientsByWardRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientsByWardRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientsByWardRequest.displayName = 'proto.services.task_svc.v1.GetPatientsByWardRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientsByWardResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientsByWardResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientsByWardResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientsByWardResponse.displayName = 'proto.services.task_svc.v1.GetPatientsByWardResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientsByWardResponse.Patient, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.displayName = 'proto.services.task_svc.v1.GetPatientsByWardResponse.Patient';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientAssignmentByWardRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.displayName = 'proto.services.task_svc.v1.GetPatientAssignmentByWardRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientAssignmentByWardResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.displayName = 'proto.services.task_svc.v1.GetPatientAssignmentByWardResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.displayName = 'proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.displayName = 'proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.displayName = 'proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetRecentPatientsRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetRecentPatientsRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetRecentPatientsRequest.displayName = 'proto.services.task_svc.v1.GetRecentPatientsRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetRecentPatientsResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetRecentPatientsResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetRecentPatientsResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetRecentPatientsResponse.displayName = 'proto.services.task_svc.v1.GetRecentPatientsResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetRecentPatientsResponse.Bed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.displayName = 'proto.services.task_svc.v1.GetRecentPatientsResponse.Bed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetRecentPatientsResponse.Room, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetRecentPatientsResponse.Room.displayName = 'proto.services.task_svc.v1.GetRecentPatientsResponse.Room';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.displayName = 'proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.UpdatePatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UpdatePatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UpdatePatientRequest.displayName = 'proto.services.task_svc.v1.UpdatePatientRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.UpdatePatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UpdatePatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UpdatePatientResponse.displayName = 'proto.services.task_svc.v1.UpdatePatientResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.AssignBedRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.AssignBedRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.AssignBedRequest.displayName = 'proto.services.task_svc.v1.AssignBedRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.AssignBedResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.AssignBedResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.AssignBedResponse.displayName = 'proto.services.task_svc.v1.AssignBedResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.UnassignBedRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UnassignBedRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UnassignBedRequest.displayName = 'proto.services.task_svc.v1.UnassignBedRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.UnassignBedResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UnassignBedResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UnassignBedResponse.displayName = 'proto.services.task_svc.v1.UnassignBedResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.DischargePatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.DischargePatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.DischargePatientRequest.displayName = 'proto.services.task_svc.v1.DischargePatientRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.DischargePatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.DischargePatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.DischargePatientResponse.displayName = 'proto.services.task_svc.v1.DischargePatientResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientDetailsRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientDetailsRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientDetailsRequest.displayName = 'proto.services.task_svc.v1.GetPatientDetailsRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientDetailsResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientDetailsResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientDetailsResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientDetailsResponse.displayName = 'proto.services.task_svc.v1.GetPatientDetailsResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientDetailsResponse.Room, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientDetailsResponse.Room.displayName = 'proto.services.task_svc.v1.GetPatientDetailsResponse.Room';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientDetailsResponse.Bed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.displayName = 'proto.services.task_svc.v1.GetPatientDetailsResponse.Bed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientDetailsResponse.Task.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientDetailsResponse.Task, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientDetailsResponse.Task.displayName = 'proto.services.task_svc.v1.GetPatientDetailsResponse.Task';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.displayName = 'proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListRequest.displayName = 'proto.services.task_svc.v1.GetPatientListRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientListResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.displayName = 'proto.services.task_svc.v1.GetPatientListResponse';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientListResponse.Patient.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse.Patient, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.Patient.displayName = 'proto.services.task_svc.v1.GetPatientListResponse.Patient';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse.Bed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.Bed.displayName = 'proto.services.task_svc.v1.GetPatientListResponse.Bed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse.Room = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse.Room, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.Room.displayName = 'proto.services.task_svc.v1.GetPatientListResponse.Room';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.displayName = 'proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse.Task = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetPatientListResponse.Task.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse.Task, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.Task.displayName = 'proto.services.task_svc.v1.GetPatientListResponse.Task';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.displayName = 'proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.ReadmitPatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.ReadmitPatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.ReadmitPatientRequest.displayName = 'proto.services.task_svc.v1.ReadmitPatientRequest';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.services.task_svc.v1.ReadmitPatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.ReadmitPatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.ReadmitPatientResponse.displayName = 'proto.services.task_svc.v1.ReadmitPatientResponse';
}



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.CreatePatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.CreatePatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.CreatePatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreatePatientRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 1, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.CreatePatientRequest}
 */
proto.services.task_svc.v1.CreatePatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.CreatePatientRequest;
  return proto.services.task_svc.v1.CreatePatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.CreatePatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.CreatePatientRequest}
 */
proto.services.task_svc.v1.CreatePatientRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.CreatePatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.CreatePatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.CreatePatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreatePatientRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string human_readable_identifier = 1;
 * @return {string}
 */
proto.services.task_svc.v1.CreatePatientRequest.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreatePatientRequest} returns this
 */
proto.services.task_svc.v1.CreatePatientRequest.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string notes = 2;
 * @return {string}
 */
proto.services.task_svc.v1.CreatePatientRequest.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreatePatientRequest} returns this
 */
proto.services.task_svc.v1.CreatePatientRequest.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.CreatePatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.CreatePatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.CreatePatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreatePatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.CreatePatientResponse}
 */
proto.services.task_svc.v1.CreatePatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.CreatePatientResponse;
  return proto.services.task_svc.v1.CreatePatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.CreatePatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.CreatePatientResponse}
 */
proto.services.task_svc.v1.CreatePatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.CreatePatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.CreatePatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.CreatePatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreatePatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.CreatePatientResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreatePatientResponse} returns this
 */
proto.services.task_svc.v1.CreatePatientResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientRequest}
 */
proto.services.task_svc.v1.GetPatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientRequest;
  return proto.services.task_svc.v1.GetPatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientRequest}
 */
proto.services.task_svc.v1.GetPatientRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientRequest} returns this
 */
proto.services.task_svc.v1.GetPatientRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 3, ""),
    bedId: jspb.Message.getFieldWithDefault(msg, 4, ""),
    wardId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    room: (f = msg.getRoom()) && proto.services.task_svc.v1.GetPatientResponse.Room.toObject(includeInstance, f),
    bed: (f = msg.getBed()) && proto.services.task_svc.v1.GetPatientResponse.Bed.toObject(includeInstance, f)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientResponse}
 */
proto.services.task_svc.v1.GetPatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientResponse;
  return proto.services.task_svc.v1.GetPatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientResponse}
 */
proto.services.task_svc.v1.GetPatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setBedId(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    case 7:
      var value = new proto.services.task_svc.v1.GetPatientResponse.Room;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientResponse.Room.deserializeBinaryFromReader);
      msg.setRoom(value);
      break;
    case 8:
      var value = new proto.services.task_svc.v1.GetPatientResponse.Bed;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientResponse.Bed.deserializeBinaryFromReader);
      msg.setBed(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 4));
  if (f != null) {
    writer.writeString(
      4,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 5));
  if (f != null) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getRoom();
  if (f != null) {
    writer.writeMessage(
      7,
      f,
      proto.services.task_svc.v1.GetPatientResponse.Room.serializeBinaryToWriter
    );
  }
  f = message.getBed();
  if (f != null) {
    writer.writeMessage(
      8,
      f,
      proto.services.task_svc.v1.GetPatientResponse.Bed.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientResponse.Room.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientResponse.Room} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientResponse.Room.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    wardId: jspb.Message.getFieldWithDefault(msg, 3, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Room}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientResponse.Room;
  return proto.services.task_svc.v1.GetPatientResponse.Room.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientResponse.Room} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Room}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientResponse.Room.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientResponse.Room} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientResponse.Room.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getWardId();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string ward_id = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.Room.prototype.setWardId = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientResponse.Bed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientResponse.Bed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientResponse.Bed;
  return proto.services.task_svc.v1.GetPatientResponse.Bed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientResponse.Bed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientResponse.Bed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientResponse.Bed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.Bed.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string notes = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string bed_id = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getBedId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.setBedId = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.clearBedId = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.hasBedId = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional string ward_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.setWardId = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.clearWardId = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.hasWardId = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional Room room = 7;
 * @return {?proto.services.task_svc.v1.GetPatientResponse.Room}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getRoom = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientResponse.Room} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientResponse.Room, 7));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientResponse.Room|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
*/
proto.services.task_svc.v1.GetPatientResponse.prototype.setRoom = function(value) {
  return jspb.Message.setWrapperField(this, 7, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.clearRoom = function() {
  return this.setRoom(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.hasRoom = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional Bed bed = 8;
 * @return {?proto.services.task_svc.v1.GetPatientResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.getBed = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientResponse.Bed} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientResponse.Bed, 8));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientResponse.Bed|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
*/
proto.services.task_svc.v1.GetPatientResponse.prototype.setBed = function(value) {
  return jspb.Message.setWrapperField(this, 8, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientResponse} returns this
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.clearBed = function() {
  return this.setBed(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientResponse.prototype.hasBed = function() {
  return jspb.Message.getField(this, 8) != null;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.DeletePatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.DeletePatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.DeletePatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeletePatientRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.DeletePatientRequest}
 */
proto.services.task_svc.v1.DeletePatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.DeletePatientRequest;
  return proto.services.task_svc.v1.DeletePatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.DeletePatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.DeletePatientRequest}
 */
proto.services.task_svc.v1.DeletePatientRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.DeletePatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.DeletePatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.DeletePatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeletePatientRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.DeletePatientRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.DeletePatientRequest} returns this
 */
proto.services.task_svc.v1.DeletePatientRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.DeletePatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.DeletePatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.DeletePatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeletePatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.DeletePatientResponse}
 */
proto.services.task_svc.v1.DeletePatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.DeletePatientResponse;
  return proto.services.task_svc.v1.DeletePatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.DeletePatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.DeletePatientResponse}
 */
proto.services.task_svc.v1.DeletePatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.DeletePatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.DeletePatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.DeletePatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeletePatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientByBedRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientByBedRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientByBedRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientByBedRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    bedId: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientByBedRequest}
 */
proto.services.task_svc.v1.GetPatientByBedRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientByBedRequest;
  return proto.services.task_svc.v1.GetPatientByBedRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientByBedRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientByBedRequest}
 */
proto.services.task_svc.v1.GetPatientByBedRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setBedId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientByBedRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientByBedRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientByBedRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientByBedRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getBedId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string bed_id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientByBedRequest.prototype.getBedId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientByBedRequest} returns this
 */
proto.services.task_svc.v1.GetPatientByBedRequest.prototype.setBedId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientByBedResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientByBedResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientByBedResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 3, ""),
    bedId: jspb.Message.getFieldWithDefault(msg, 4, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientByBedResponse;
  return proto.services.task_svc.v1.GetPatientByBedResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientByBedResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setBedId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientByBedResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientByBedResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientByBedResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 4));
  if (f != null) {
    writer.writeString(
      4,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse} returns this
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse} returns this
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string notes = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse} returns this
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string bed_id = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.getBedId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse} returns this
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.setBedId = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientByBedResponse} returns this
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.clearBedId = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientByBedResponse.prototype.hasBedId = function() {
  return jspb.Message.getField(this, 4) != null;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientsByWardRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientsByWardRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    wardId: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardRequest}
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientsByWardRequest;
  return proto.services.task_svc.v1.GetPatientsByWardRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientsByWardRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardRequest}
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientsByWardRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientsByWardRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getWardId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string ward_id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientsByWardRequest} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardRequest.prototype.setWardId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.repeatedFields_ = [1];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientsByWardResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    patientsList: jspb.Message.toObjectList(msg.getPatientsList(),
    proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientsByWardResponse;
  return proto.services.task_svc.v1.GetPatientsByWardResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetPatientsByWardResponse.Patient;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.deserializeBinaryFromReader);
      msg.addPatients(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientsByWardResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPatientsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 3, ""),
    bedId: jspb.Message.getFieldWithDefault(msg, 4, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientsByWardResponse.Patient;
  return proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setBedId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 4));
  if (f != null) {
    writer.writeString(
      4,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string notes = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string bed_id = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.getBedId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.setBedId = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.clearBedId = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.Patient.prototype.hasBedId = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * repeated Patient patients = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient>}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.prototype.getPatientsList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientsByWardResponse.Patient, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient>} value
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse} returns this
*/
proto.services.task_svc.v1.GetPatientsByWardResponse.prototype.setPatientsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.prototype.addPatients = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetPatientsByWardResponse.Patient, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientsByWardResponse} returns this
 */
proto.services.task_svc.v1.GetPatientsByWardResponse.prototype.clearPatientsList = function() {
  return this.setPatientsList([]);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    wardId: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientAssignmentByWardRequest;
  return proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getWardId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string ward_id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardRequest} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardRequest.prototype.setWardId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.repeatedFields_ = [1];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    roomsList: jspb.Message.toObjectList(msg.getRoomsList(),
    proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse;
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.deserializeBinaryFromReader);
      msg.addRooms(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getRoomsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.serializeBinaryToWriter
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.repeatedFields_ = [3];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    bedsList: jspb.Message.toObjectList(msg.getBedsList(),
    proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room;
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.deserializeBinaryFromReader);
      msg.addBeds(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getBedsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      3,
      f,
      proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    patient: (f = msg.getPatient()) && proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.toObject(includeInstance, f)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed;
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.deserializeBinaryFromReader);
      msg.setPatient(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getPatient();
  if (f != null) {
    writer.writeMessage(
      3,
      f,
      proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient;
  return proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional Patient patient = 3;
 * @return {?proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.getPatient = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient, 3));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} returns this
*/
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.setPatient = function(value) {
  return jspb.Message.setWrapperField(this, 3, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.clearPatient = function() {
  return this.setPatient(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.prototype.hasPatient = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * repeated Bed beds = 3;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed>}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.getBedsList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed, 3));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed>} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} returns this
*/
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.setBedsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 3, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.addBeds = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 3, opt_value, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.prototype.clearBedsList = function() {
  return this.setBedsList([]);
};


/**
 * repeated Room rooms = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room>}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.prototype.getRoomsList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room>} value
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse} returns this
*/
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.prototype.setRoomsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room}
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.prototype.addRooms = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientAssignmentByWardResponse} returns this
 */
proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.prototype.clearRoomsList = function() {
  return this.setRoomsList([]);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetRecentPatientsRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetRecentPatientsRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetRecentPatientsRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsRequest.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsRequest}
 */
proto.services.task_svc.v1.GetRecentPatientsRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetRecentPatientsRequest;
  return proto.services.task_svc.v1.GetRecentPatientsRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsRequest}
 */
proto.services.task_svc.v1.GetRecentPatientsRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetRecentPatientsRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetRecentPatientsRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.repeatedFields_ = [1];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetRecentPatientsResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    recentPatientsList: jspb.Message.toObjectList(msg.getRecentPatientsList(),
    proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetRecentPatientsResponse;
  return proto.services.task_svc.v1.GetRecentPatientsResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed;
      reader.readMessage(value,proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.deserializeBinaryFromReader);
      msg.addRecentPatients(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetRecentPatientsResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getRecentPatientsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetRecentPatientsResponse.Bed;
  return proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetRecentPatientsResponse.Room.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    wardId: jspb.Message.getFieldWithDefault(msg, 3, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetRecentPatientsResponse.Room;
  return proto.services.task_svc.v1.GetRecentPatientsResponse.Room.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetRecentPatientsResponse.Room.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getWardId();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string ward_id = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.Room} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.Room.prototype.setWardId = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    room: (f = msg.getRoom()) && proto.services.task_svc.v1.GetRecentPatientsResponse.Room.toObject(includeInstance, f),
    bed: (f = msg.getBed()) && proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.toObject(includeInstance, f)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed;
  return proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = new proto.services.task_svc.v1.GetRecentPatientsResponse.Room;
      reader.readMessage(value,proto.services.task_svc.v1.GetRecentPatientsResponse.Room.deserializeBinaryFromReader);
      msg.setRoom(value);
      break;
    case 4:
      var value = new proto.services.task_svc.v1.GetRecentPatientsResponse.Bed;
      reader.readMessage(value,proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.deserializeBinaryFromReader);
      msg.setBed(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getRoom();
  if (f != null) {
    writer.writeMessage(
      3,
      f,
      proto.services.task_svc.v1.GetRecentPatientsResponse.Room.serializeBinaryToWriter
    );
  }
  f = message.getBed();
  if (f != null) {
    writer.writeMessage(
      4,
      f,
      proto.services.task_svc.v1.GetRecentPatientsResponse.Bed.serializeBinaryToWriter
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional Room room = 3;
 * @return {?proto.services.task_svc.v1.GetRecentPatientsResponse.Room}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.getRoom = function() {
  return /** @type{?proto.services.task_svc.v1.GetRecentPatientsResponse.Room} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetRecentPatientsResponse.Room, 3));
};


/**
 * @param {?proto.services.task_svc.v1.GetRecentPatientsResponse.Room|undefined} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} returns this
*/
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.setRoom = function(value) {
  return jspb.Message.setWrapperField(this, 3, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.clearRoom = function() {
  return this.setRoom(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.hasRoom = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional Bed bed = 4;
 * @return {?proto.services.task_svc.v1.GetRecentPatientsResponse.Bed}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.getBed = function() {
  return /** @type{?proto.services.task_svc.v1.GetRecentPatientsResponse.Bed} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetRecentPatientsResponse.Bed, 4));
};


/**
 * @param {?proto.services.task_svc.v1.GetRecentPatientsResponse.Bed|undefined} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} returns this
*/
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.setBed = function(value) {
  return jspb.Message.setWrapperField(this, 4, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.clearBed = function() {
  return this.setBed(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed.prototype.hasBed = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * repeated PatientWithRoomAndBed recent_patients = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed>}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.prototype.getRecentPatientsList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed>} value
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse} returns this
*/
proto.services.task_svc.v1.GetRecentPatientsResponse.prototype.setRecentPatientsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed}
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.prototype.addRecentPatients = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetRecentPatientsResponse} returns this
 */
proto.services.task_svc.v1.GetRecentPatientsResponse.prototype.clearRecentPatientsList = function() {
  return this.setRecentPatientsList([]);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UpdatePatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UpdatePatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdatePatientRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 3, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest}
 */
proto.services.task_svc.v1.UpdatePatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UpdatePatientRequest;
  return proto.services.task_svc.v1.UpdatePatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UpdatePatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest}
 */
proto.services.task_svc.v1.UpdatePatientRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UpdatePatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UpdatePatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdatePatientRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 2));
  if (f != null) {
    writer.writeString(
      2,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 3));
  if (f != null) {
    writer.writeString(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest} returns this
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest} returns this
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest} returns this
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.clearHumanReadableIdentifier = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.hasHumanReadableIdentifier = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional string notes = 3;
 * @return {string}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest} returns this
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.setNotes = function(value) {
  return jspb.Message.setField(this, 3, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdatePatientRequest} returns this
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.clearNotes = function() {
  return jspb.Message.setField(this, 3, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdatePatientRequest.prototype.hasNotes = function() {
  return jspb.Message.getField(this, 3) != null;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.UpdatePatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UpdatePatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UpdatePatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdatePatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.UpdatePatientResponse}
 */
proto.services.task_svc.v1.UpdatePatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UpdatePatientResponse;
  return proto.services.task_svc.v1.UpdatePatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UpdatePatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UpdatePatientResponse}
 */
proto.services.task_svc.v1.UpdatePatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.UpdatePatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UpdatePatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UpdatePatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdatePatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.AssignBedRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.AssignBedRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.AssignBedRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignBedRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    bedId: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.AssignBedRequest}
 */
proto.services.task_svc.v1.AssignBedRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.AssignBedRequest;
  return proto.services.task_svc.v1.AssignBedRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.AssignBedRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.AssignBedRequest}
 */
proto.services.task_svc.v1.AssignBedRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setBedId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.AssignBedRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.AssignBedRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.AssignBedRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignBedRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getBedId();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.AssignBedRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AssignBedRequest} returns this
 */
proto.services.task_svc.v1.AssignBedRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string bed_id = 2;
 * @return {string}
 */
proto.services.task_svc.v1.AssignBedRequest.prototype.getBedId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AssignBedRequest} returns this
 */
proto.services.task_svc.v1.AssignBedRequest.prototype.setBedId = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.AssignBedResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.AssignBedResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.AssignBedResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignBedResponse.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.AssignBedResponse}
 */
proto.services.task_svc.v1.AssignBedResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.AssignBedResponse;
  return proto.services.task_svc.v1.AssignBedResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.AssignBedResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.AssignBedResponse}
 */
proto.services.task_svc.v1.AssignBedResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.AssignBedResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.AssignBedResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.AssignBedResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignBedResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.UnassignBedRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UnassignBedRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UnassignBedRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignBedRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.UnassignBedRequest}
 */
proto.services.task_svc.v1.UnassignBedRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UnassignBedRequest;
  return proto.services.task_svc.v1.UnassignBedRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UnassignBedRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UnassignBedRequest}
 */
proto.services.task_svc.v1.UnassignBedRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.UnassignBedRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UnassignBedRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UnassignBedRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignBedRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.UnassignBedRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UnassignBedRequest} returns this
 */
proto.services.task_svc.v1.UnassignBedRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.UnassignBedResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UnassignBedResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UnassignBedResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignBedResponse.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.UnassignBedResponse}
 */
proto.services.task_svc.v1.UnassignBedResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UnassignBedResponse;
  return proto.services.task_svc.v1.UnassignBedResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UnassignBedResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UnassignBedResponse}
 */
proto.services.task_svc.v1.UnassignBedResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.UnassignBedResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UnassignBedResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UnassignBedResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignBedResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.DischargePatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.DischargePatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.DischargePatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DischargePatientRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.DischargePatientRequest}
 */
proto.services.task_svc.v1.DischargePatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.DischargePatientRequest;
  return proto.services.task_svc.v1.DischargePatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.DischargePatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.DischargePatientRequest}
 */
proto.services.task_svc.v1.DischargePatientRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.DischargePatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.DischargePatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.DischargePatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DischargePatientRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.DischargePatientRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.DischargePatientRequest} returns this
 */
proto.services.task_svc.v1.DischargePatientRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.DischargePatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.DischargePatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.DischargePatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DischargePatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.DischargePatientResponse}
 */
proto.services.task_svc.v1.DischargePatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.DischargePatientResponse;
  return proto.services.task_svc.v1.DischargePatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.DischargePatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.DischargePatientResponse}
 */
proto.services.task_svc.v1.DischargePatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.DischargePatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.DischargePatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.DischargePatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DischargePatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientDetailsRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientDetailsRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsRequest}
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientDetailsRequest;
  return proto.services.task_svc.v1.GetPatientDetailsRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsRequest}
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientDetailsRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsRequest} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.repeatedFields_ = [5];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientDetailsResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 3, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 4, ""),
    tasksList: jspb.Message.toObjectList(msg.getTasksList(),
    proto.services.task_svc.v1.GetPatientDetailsResponse.Task.toObject, includeInstance),
    wardId: jspb.Message.getFieldWithDefault(msg, 6, ""),
    room: (f = msg.getRoom()) && proto.services.task_svc.v1.GetPatientDetailsResponse.Room.toObject(includeInstance, f),
    bed: (f = msg.getBed()) && proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.toObject(includeInstance, f),
    isDischarged: jspb.Message.getBooleanFieldWithDefault(msg, 9, false)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientDetailsResponse;
  return proto.services.task_svc.v1.GetPatientDetailsResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    case 5:
      var value = new proto.services.task_svc.v1.GetPatientDetailsResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientDetailsResponse.Task.deserializeBinaryFromReader);
      msg.addTasks(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    case 7:
      var value = new proto.services.task_svc.v1.GetPatientDetailsResponse.Room;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientDetailsResponse.Room.deserializeBinaryFromReader);
      msg.setRoom(value);
      break;
    case 8:
      var value = new proto.services.task_svc.v1.GetPatientDetailsResponse.Bed;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.deserializeBinaryFromReader);
      msg.setBed(value);
      break;
    case 9:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsDischarged(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientDetailsResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      4,
      f
    );
  }
  f = message.getTasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      5,
      f,
      proto.services.task_svc.v1.GetPatientDetailsResponse.Task.serializeBinaryToWriter
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 6));
  if (f != null) {
    writer.writeString(
      6,
      f
    );
  }
  f = message.getRoom();
  if (f != null) {
    writer.writeMessage(
      7,
      f,
      proto.services.task_svc.v1.GetPatientDetailsResponse.Room.serializeBinaryToWriter
    );
  }
  f = message.getBed();
  if (f != null) {
    writer.writeMessage(
      8,
      f,
      proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.serializeBinaryToWriter
    );
  }
  f = message.getIsDischarged();
  if (f) {
    writer.writeBool(
      9,
      f
    );
  }
};


/**
 * @enum {number}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus = {
  TASK_STATUS_UNSPECIFIED: 0,
  TASK_STATUS_TODO: 1,
  TASK_STATUS_IN_PROGRESS: 2,
  TASK_STATUS_DONE: 3
};




if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Room.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    wardId: jspb.Message.getFieldWithDefault(msg, 3, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientDetailsResponse.Room;
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Room.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientDetailsResponse.Room.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getWardId();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string ward_id = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Room.prototype.setWardId = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientDetailsResponse.Bed;
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Bed.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.repeatedFields_ = [8];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Task.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    status: jspb.Message.getFieldWithDefault(msg, 4, 0),
    assignedUserId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    patientId: jspb.Message.getFieldWithDefault(msg, 6, ""),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    subtasksList: jspb.Message.toObjectList(msg.getSubtasksList(),
    proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientDetailsResponse.Task;
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Task.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 4:
      var value = /** @type {!proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus} */ (reader.readEnum());
      msg.setStatus(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setAssignedUserId(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setPatientId(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setPublic(value);
      break;
    case 8:
      var value = new proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.deserializeBinaryFromReader);
      msg.addSubtasks(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientDetailsResponse.Task.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getDescription();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getStatus();
  if (f !== 0.0) {
    writer.writeEnum(
      4,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 5));
  if (f != null) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getPatientId();
  if (f.length > 0) {
    writer.writeString(
      6,
      f
    );
  }
  f = message.getPublic();
  if (f) {
    writer.writeBool(
      7,
      f
    );
  }
  f = message.getSubtasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      8,
      f,
      proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    done: jspb.Message.getBooleanFieldWithDefault(msg, 3, false)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask;
  return proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setDone(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getDone();
  if (f) {
    writer.writeBool(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask.prototype.setDone = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional TaskStatus status = 4;
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getStatus = function() {
  return /** @type {!proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus} */ (jspb.Message.getFieldWithDefault(this, 4, 0));
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setStatus = function(value) {
  return jspb.Message.setProto3EnumField(this, 4, value);
};


/**
 * optional string assigned_user_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getAssignedUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setAssignedUserId = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.clearAssignedUserId = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.hasAssignedUserId = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional string patient_id = 6;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 6, value);
};


/**
 * optional bool public = 7;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 7, value);
};


/**
 * repeated SubTask subtasks = 8;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask>}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.getSubtasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask, 8));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask>} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
*/
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.setSubtasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 8, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.addSubtasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 8, opt_value, proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.Task.prototype.clearSubtasksList = function() {
  return this.setSubtasksList([]);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string human_readable_identifier = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string notes = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * repeated Task tasks = 5;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientDetailsResponse.Task>}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getTasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientDetailsResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientDetailsResponse.Task, 5));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientDetailsResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
*/
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setTasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 5, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse.Task}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.addTasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 5, opt_value, proto.services.task_svc.v1.GetPatientDetailsResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.clearTasksList = function() {
  return this.setTasksList([]);
};


/**
 * optional string ward_id = 6;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setWardId = function(value) {
  return jspb.Message.setField(this, 6, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.clearWardId = function() {
  return jspb.Message.setField(this, 6, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.hasWardId = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional Room room = 7;
 * @return {?proto.services.task_svc.v1.GetPatientDetailsResponse.Room}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getRoom = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientDetailsResponse.Room} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientDetailsResponse.Room, 7));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientDetailsResponse.Room|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
*/
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setRoom = function(value) {
  return jspb.Message.setWrapperField(this, 7, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.clearRoom = function() {
  return this.setRoom(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.hasRoom = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional Bed bed = 8;
 * @return {?proto.services.task_svc.v1.GetPatientDetailsResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getBed = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientDetailsResponse.Bed} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientDetailsResponse.Bed, 8));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientDetailsResponse.Bed|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
*/
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setBed = function(value) {
  return jspb.Message.setWrapperField(this, 8, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.clearBed = function() {
  return this.setBed(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.hasBed = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional bool is_discharged = 9;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.getIsDischarged = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 9, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetPatientDetailsResponse} returns this
 */
proto.services.task_svc.v1.GetPatientDetailsResponse.prototype.setIsDischarged = function(value) {
  return jspb.Message.setProto3BooleanField(this, 9, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    wardId: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListRequest}
 */
proto.services.task_svc.v1.GetPatientListRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListRequest;
  return proto.services.task_svc.v1.GetPatientListRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListRequest}
 */
proto.services.task_svc.v1.GetPatientListRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {string} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string ward_id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListRequest.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListRequest} returns this
 */
proto.services.task_svc.v1.GetPatientListRequest.prototype.setWardId = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientListRequest} returns this
 */
proto.services.task_svc.v1.GetPatientListRequest.prototype.clearWardId = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientListRequest.prototype.hasWardId = function() {
  return jspb.Message.getField(this, 1) != null;
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientListResponse.repeatedFields_ = [1,2,3];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    activeList: jspb.Message.toObjectList(msg.getActiveList(),
    proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.toObject, includeInstance),
    unassignedPatientsList: jspb.Message.toObjectList(msg.getUnassignedPatientsList(),
    proto.services.task_svc.v1.GetPatientListResponse.Patient.toObject, includeInstance),
    dischargedPatientsList: jspb.Message.toObjectList(msg.getDischargedPatientsList(),
    proto.services.task_svc.v1.GetPatientListResponse.Patient.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse}
 */
proto.services.task_svc.v1.GetPatientListResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse;
  return proto.services.task_svc.v1.GetPatientListResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse}
 */
proto.services.task_svc.v1.GetPatientListResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.deserializeBinaryFromReader);
      msg.addActive(value);
      break;
    case 2:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Patient;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Patient.deserializeBinaryFromReader);
      msg.addUnassignedPatients(value);
      break;
    case 3:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Patient;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Patient.deserializeBinaryFromReader);
      msg.addDischargedPatients(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getActiveList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.serializeBinaryToWriter
    );
  }
  f = message.getUnassignedPatientsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Patient.serializeBinaryToWriter
    );
  }
  f = message.getDischargedPatientsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      3,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Patient.serializeBinaryToWriter
    );
  }
};


/**
 * @enum {number}
 */
proto.services.task_svc.v1.GetPatientListResponse.TaskStatus = {
  TASK_STATUS_UNSPECIFIED: 0,
  TASK_STATUS_TODO: 1,
  TASK_STATUS_IN_PROGRESS: 2,
  TASK_STATUS_DONE: 3
};


/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.repeatedFields_ = [4];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.Patient.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Patient} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    notes: jspb.Message.getFieldWithDefault(msg, 3, ""),
    tasksList: jspb.Message.toObjectList(msg.getTasksList(),
    proto.services.task_svc.v1.GetPatientListResponse.Task.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse.Patient;
  return proto.services.task_svc.v1.GetPatientListResponse.Patient.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Patient} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    case 4:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Task.deserializeBinaryFromReader);
      msg.addTasks(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.Patient.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Patient} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getTasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      4,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Task.serializeBinaryToWriter
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string notes = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * repeated Task tasks = 4;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task>}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.getTasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Task, 4));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.setTasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 4, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task}
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.addTasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 4, opt_value, proto.services.task_svc.v1.GetPatientListResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Patient.prototype.clearTasksList = function() {
  return this.setTasksList([]);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.Bed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Bed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse.Bed;
  return proto.services.task_svc.v1.GetPatientListResponse.Bed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Bed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.Bed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Bed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Bed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Bed.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.Room.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Room} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    wardId: jspb.Message.getFieldWithDefault(msg, 3, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Room}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse.Room;
  return proto.services.task_svc.v1.GetPatientListResponse.Room.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Room} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Room}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.Room.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Room} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getWardId();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string ward_id = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Room} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Room.prototype.setWardId = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.repeatedFields_ = [6];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    humanReadableIdentifier: jspb.Message.getFieldWithDefault(msg, 2, ""),
    room: (f = msg.getRoom()) && proto.services.task_svc.v1.GetPatientListResponse.Room.toObject(includeInstance, f),
    bed: (f = msg.getBed()) && proto.services.task_svc.v1.GetPatientListResponse.Bed.toObject(includeInstance, f),
    notes: jspb.Message.getFieldWithDefault(msg, 5, ""),
    tasksList: jspb.Message.toObjectList(msg.getTasksList(),
    proto.services.task_svc.v1.GetPatientListResponse.Task.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed;
  return proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setHumanReadableIdentifier(value);
      break;
    case 3:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Room;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Room.deserializeBinaryFromReader);
      msg.setRoom(value);
      break;
    case 4:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Bed;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Bed.deserializeBinaryFromReader);
      msg.setBed(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setNotes(value);
      break;
    case 6:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Task.deserializeBinaryFromReader);
      msg.addTasks(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getHumanReadableIdentifier();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getRoom();
  if (f != null) {
    writer.writeMessage(
      3,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Room.serializeBinaryToWriter
    );
  }
  f = message.getBed();
  if (f != null) {
    writer.writeMessage(
      4,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Bed.serializeBinaryToWriter
    );
  }
  f = message.getNotes();
  if (f.length > 0) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getTasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      6,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Task.serializeBinaryToWriter
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string human_readable_identifier = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.getHumanReadableIdentifier = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.setHumanReadableIdentifier = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional Room room = 3;
 * @return {?proto.services.task_svc.v1.GetPatientListResponse.Room}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.getRoom = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientListResponse.Room} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Room, 3));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientListResponse.Room|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.setRoom = function(value) {
  return jspb.Message.setWrapperField(this, 3, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.clearRoom = function() {
  return this.setRoom(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.hasRoom = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional Bed bed = 4;
 * @return {?proto.services.task_svc.v1.GetPatientListResponse.Bed}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.getBed = function() {
  return /** @type{?proto.services.task_svc.v1.GetPatientListResponse.Bed} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Bed, 4));
};


/**
 * @param {?proto.services.task_svc.v1.GetPatientListResponse.Bed|undefined} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.setBed = function(value) {
  return jspb.Message.setWrapperField(this, 4, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.clearBed = function() {
  return this.setBed(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.hasBed = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional string notes = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.getNotes = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.setNotes = function(value) {
  return jspb.Message.setProto3StringField(this, 5, value);
};


/**
 * repeated Task tasks = 6;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task>}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.getTasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Task, 6));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.setTasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 6, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task}
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.addTasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 6, opt_value, proto.services.task_svc.v1.GetPatientListResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed.prototype.clearTasksList = function() {
  return this.setTasksList([]);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.repeatedFields_ = [8];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.Task.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    status: jspb.Message.getFieldWithDefault(msg, 4, 0),
    assignedUserId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    patientId: jspb.Message.getFieldWithDefault(msg, 6, ""),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    subtasksList: jspb.Message.toObjectList(msg.getSubtasksList(),
    proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse.Task;
  return proto.services.task_svc.v1.GetPatientListResponse.Task.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 4:
      var value = /** @type {!proto.services.task_svc.v1.GetPatientListResponse.TaskStatus} */ (reader.readEnum());
      msg.setStatus(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setAssignedUserId(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setPatientId(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setPublic(value);
      break;
    case 8:
      var value = new proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask;
      reader.readMessage(value,proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.deserializeBinaryFromReader);
      msg.addSubtasks(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.Task.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getDescription();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getStatus();
  if (f !== 0.0) {
    writer.writeEnum(
      4,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 5));
  if (f != null) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getPatientId();
  if (f.length > 0) {
    writer.writeString(
      6,
      f
    );
  }
  f = message.getPublic();
  if (f) {
    writer.writeBool(
      7,
      f
    );
  }
  f = message.getSubtasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      8,
      f,
      proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    done: jspb.Message.getBooleanFieldWithDefault(msg, 3, false)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask;
  return proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setDone(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getDone();
  if (f) {
    writer.writeBool(
      3,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask.prototype.setDone = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional TaskStatus status = 4;
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.TaskStatus}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getStatus = function() {
  return /** @type {!proto.services.task_svc.v1.GetPatientListResponse.TaskStatus} */ (jspb.Message.getFieldWithDefault(this, 4, 0));
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.TaskStatus} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setStatus = function(value) {
  return jspb.Message.setProto3EnumField(this, 4, value);
};


/**
 * optional string assigned_user_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getAssignedUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setAssignedUserId = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.clearAssignedUserId = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.hasAssignedUserId = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional string patient_id = 6;
 * @return {string}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 6, value);
};


/**
 * optional bool public = 7;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 7, value);
};


/**
 * repeated SubTask subtasks = 8;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask>}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.getSubtasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask, 8));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask>} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.setSubtasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 8, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.addSubtasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 8, opt_value, proto.services.task_svc.v1.GetPatientListResponse.Task.SubTask, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Task} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.Task.prototype.clearSubtasksList = function() {
  return this.setSubtasksList([]);
};


/**
 * repeated PatientWithRoomAndBed active = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed>}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.getActiveList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed>} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.prototype.setActiveList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.addActive = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.clearActiveList = function() {
  return this.setActiveList([]);
};


/**
 * repeated Patient unassigned_patients = 2;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Patient>}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.getUnassignedPatientsList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientListResponse.Patient>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Patient, 2));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Patient>} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.prototype.setUnassignedPatientsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Patient=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.addUnassignedPatients = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.services.task_svc.v1.GetPatientListResponse.Patient, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.clearUnassignedPatientsList = function() {
  return this.setUnassignedPatientsList([]);
};


/**
 * repeated Patient discharged_patients = 3;
 * @return {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Patient>}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.getDischargedPatientsList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetPatientListResponse.Patient>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetPatientListResponse.Patient, 3));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetPatientListResponse.Patient>} value
 * @return {!proto.services.task_svc.v1.GetPatientListResponse} returns this
*/
proto.services.task_svc.v1.GetPatientListResponse.prototype.setDischargedPatientsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 3, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetPatientListResponse.Patient=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetPatientListResponse.Patient}
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.addDischargedPatients = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 3, opt_value, proto.services.task_svc.v1.GetPatientListResponse.Patient, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetPatientListResponse} returns this
 */
proto.services.task_svc.v1.GetPatientListResponse.prototype.clearDischargedPatientsList = function() {
  return this.setDischargedPatientsList([]);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.ReadmitPatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.ReadmitPatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.ReadmitPatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.ReadmitPatientRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    patientId: jspb.Message.getFieldWithDefault(msg, 1, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.ReadmitPatientRequest}
 */
proto.services.task_svc.v1.ReadmitPatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.ReadmitPatientRequest;
  return proto.services.task_svc.v1.ReadmitPatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.ReadmitPatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.ReadmitPatientRequest}
 */
proto.services.task_svc.v1.ReadmitPatientRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setPatientId(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.ReadmitPatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.ReadmitPatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.ReadmitPatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.ReadmitPatientRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPatientId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string patient_id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.ReadmitPatientRequest.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.ReadmitPatientRequest} returns this
 */
proto.services.task_svc.v1.ReadmitPatientRequest.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.services.task_svc.v1.ReadmitPatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.ReadmitPatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.ReadmitPatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.ReadmitPatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {

  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.services.task_svc.v1.ReadmitPatientResponse}
 */
proto.services.task_svc.v1.ReadmitPatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.ReadmitPatientResponse;
  return proto.services.task_svc.v1.ReadmitPatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.ReadmitPatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.ReadmitPatientResponse}
 */
proto.services.task_svc.v1.ReadmitPatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.services.task_svc.v1.ReadmitPatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.ReadmitPatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.ReadmitPatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.ReadmitPatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};


goog.object.extend(exports, proto.services.task_svc.v1);
