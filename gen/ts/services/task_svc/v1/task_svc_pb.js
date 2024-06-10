// source: services/task_svc/v1/task_svc.proto
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

var google_protobuf_timestamp_pb = require('google-protobuf/google/protobuf/timestamp_pb.js');
goog.object.extend(proto, google_protobuf_timestamp_pb);
goog.exportSymbol('proto.services.task_svc.v1.AddSubTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.AddSubTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.AssignTaskToUserRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.AssignTaskToUserResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.CreateTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.CreateTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.DeleteTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.DeleteTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetAssignedTasksRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetAssignedTasksResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetAssignedTasksResponse.Task', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTaskResponse.Patient', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTaskResponse.SubTask', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientResponse.Task', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', null, global);
goog.exportSymbol('proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask', null, global);
goog.exportSymbol('proto.services.task_svc.v1.PublishTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.PublishTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.RemoveSubTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.RemoveSubTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.SubTaskToDoneRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.SubTaskToDoneResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.SubTaskToToDoRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.SubTaskToToDoResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskStatus', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskToDoneRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskToDoneResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskToInProgressRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskToInProgressResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskToToDoRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.TaskToToDoResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UnassignTaskFromUserRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UnassignTaskFromUserResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UnpublishTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UnpublishTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UpdateSubTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UpdateSubTaskResponse', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UpdateTaskRequest', null, global);
goog.exportSymbol('proto.services.task_svc.v1.UpdateTaskResponse', null, global);
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
proto.services.task_svc.v1.CreateTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.CreateTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.CreateTaskRequest.displayName = 'proto.services.task_svc.v1.CreateTaskRequest';
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
proto.services.task_svc.v1.CreateTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.CreateTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.CreateTaskResponse.displayName = 'proto.services.task_svc.v1.CreateTaskResponse';
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
proto.services.task_svc.v1.GetTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTaskRequest.displayName = 'proto.services.task_svc.v1.GetTaskRequest';
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
proto.services.task_svc.v1.GetTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetTaskResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTaskResponse.displayName = 'proto.services.task_svc.v1.GetTaskResponse';
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
proto.services.task_svc.v1.GetTaskResponse.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTaskResponse.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTaskResponse.SubTask.displayName = 'proto.services.task_svc.v1.GetTaskResponse.SubTask';
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
proto.services.task_svc.v1.GetTaskResponse.Patient = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTaskResponse.Patient, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTaskResponse.Patient.displayName = 'proto.services.task_svc.v1.GetTaskResponse.Patient';
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
proto.services.task_svc.v1.GetTasksByPatientRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientRequest.displayName = 'proto.services.task_svc.v1.GetTasksByPatientRequest';
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
proto.services.task_svc.v1.GetTasksByPatientResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetTasksByPatientResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientResponse.displayName = 'proto.services.task_svc.v1.GetTasksByPatientResponse';
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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetTasksByPatientResponse.Task.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientResponse.Task, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientResponse.Task.displayName = 'proto.services.task_svc.v1.GetTasksByPatientResponse.Task';
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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.displayName = 'proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask';
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.displayName = 'proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest';
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.displayName = 'proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse';
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.displayName = 'proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task';
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.displayName = 'proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask';
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
proto.services.task_svc.v1.GetAssignedTasksRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetAssignedTasksRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetAssignedTasksRequest.displayName = 'proto.services.task_svc.v1.GetAssignedTasksRequest';
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
proto.services.task_svc.v1.GetAssignedTasksResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetAssignedTasksResponse.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetAssignedTasksResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetAssignedTasksResponse.displayName = 'proto.services.task_svc.v1.GetAssignedTasksResponse';
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.services.task_svc.v1.GetAssignedTasksResponse.Task.repeatedFields_, null);
};
goog.inherits(proto.services.task_svc.v1.GetAssignedTasksResponse.Task, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetAssignedTasksResponse.Task.displayName = 'proto.services.task_svc.v1.GetAssignedTasksResponse.Task';
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.displayName = 'proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient';
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.displayName = 'proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask';
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
proto.services.task_svc.v1.UpdateTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UpdateTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UpdateTaskRequest.displayName = 'proto.services.task_svc.v1.UpdateTaskRequest';
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
proto.services.task_svc.v1.UpdateTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UpdateTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UpdateTaskResponse.displayName = 'proto.services.task_svc.v1.UpdateTaskResponse';
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
proto.services.task_svc.v1.AddSubTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.AddSubTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.AddSubTaskRequest.displayName = 'proto.services.task_svc.v1.AddSubTaskRequest';
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
proto.services.task_svc.v1.AddSubTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.AddSubTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.AddSubTaskResponse.displayName = 'proto.services.task_svc.v1.AddSubTaskResponse';
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
proto.services.task_svc.v1.RemoveSubTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.RemoveSubTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.RemoveSubTaskRequest.displayName = 'proto.services.task_svc.v1.RemoveSubTaskRequest';
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
proto.services.task_svc.v1.RemoveSubTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.RemoveSubTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.RemoveSubTaskResponse.displayName = 'proto.services.task_svc.v1.RemoveSubTaskResponse';
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
proto.services.task_svc.v1.UpdateSubTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UpdateSubTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UpdateSubTaskRequest.displayName = 'proto.services.task_svc.v1.UpdateSubTaskRequest';
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
proto.services.task_svc.v1.UpdateSubTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UpdateSubTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UpdateSubTaskResponse.displayName = 'proto.services.task_svc.v1.UpdateSubTaskResponse';
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
proto.services.task_svc.v1.SubTaskToToDoRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.SubTaskToToDoRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.SubTaskToToDoRequest.displayName = 'proto.services.task_svc.v1.SubTaskToToDoRequest';
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
proto.services.task_svc.v1.SubTaskToToDoResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.SubTaskToToDoResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.SubTaskToToDoResponse.displayName = 'proto.services.task_svc.v1.SubTaskToToDoResponse';
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
proto.services.task_svc.v1.SubTaskToDoneRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.SubTaskToDoneRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.SubTaskToDoneRequest.displayName = 'proto.services.task_svc.v1.SubTaskToDoneRequest';
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
proto.services.task_svc.v1.SubTaskToDoneResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.SubTaskToDoneResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.SubTaskToDoneResponse.displayName = 'proto.services.task_svc.v1.SubTaskToDoneResponse';
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
proto.services.task_svc.v1.TaskToToDoRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.TaskToToDoRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.TaskToToDoRequest.displayName = 'proto.services.task_svc.v1.TaskToToDoRequest';
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
proto.services.task_svc.v1.TaskToToDoResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.TaskToToDoResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.TaskToToDoResponse.displayName = 'proto.services.task_svc.v1.TaskToToDoResponse';
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
proto.services.task_svc.v1.TaskToInProgressRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.TaskToInProgressRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.TaskToInProgressRequest.displayName = 'proto.services.task_svc.v1.TaskToInProgressRequest';
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
proto.services.task_svc.v1.TaskToInProgressResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.TaskToInProgressResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.TaskToInProgressResponse.displayName = 'proto.services.task_svc.v1.TaskToInProgressResponse';
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
proto.services.task_svc.v1.TaskToDoneRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.TaskToDoneRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.TaskToDoneRequest.displayName = 'proto.services.task_svc.v1.TaskToDoneRequest';
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
proto.services.task_svc.v1.TaskToDoneResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.TaskToDoneResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.TaskToDoneResponse.displayName = 'proto.services.task_svc.v1.TaskToDoneResponse';
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
proto.services.task_svc.v1.AssignTaskToUserRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.AssignTaskToUserRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.AssignTaskToUserRequest.displayName = 'proto.services.task_svc.v1.AssignTaskToUserRequest';
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
proto.services.task_svc.v1.AssignTaskToUserResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.AssignTaskToUserResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.AssignTaskToUserResponse.displayName = 'proto.services.task_svc.v1.AssignTaskToUserResponse';
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
proto.services.task_svc.v1.UnassignTaskFromUserRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UnassignTaskFromUserRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UnassignTaskFromUserRequest.displayName = 'proto.services.task_svc.v1.UnassignTaskFromUserRequest';
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
proto.services.task_svc.v1.UnassignTaskFromUserResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UnassignTaskFromUserResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UnassignTaskFromUserResponse.displayName = 'proto.services.task_svc.v1.UnassignTaskFromUserResponse';
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
proto.services.task_svc.v1.PublishTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.PublishTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.PublishTaskRequest.displayName = 'proto.services.task_svc.v1.PublishTaskRequest';
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
proto.services.task_svc.v1.PublishTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.PublishTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.PublishTaskResponse.displayName = 'proto.services.task_svc.v1.PublishTaskResponse';
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
proto.services.task_svc.v1.UnpublishTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UnpublishTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UnpublishTaskRequest.displayName = 'proto.services.task_svc.v1.UnpublishTaskRequest';
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
proto.services.task_svc.v1.UnpublishTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.UnpublishTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.UnpublishTaskResponse.displayName = 'proto.services.task_svc.v1.UnpublishTaskResponse';
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
proto.services.task_svc.v1.DeleteTaskRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.DeleteTaskRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.DeleteTaskRequest.displayName = 'proto.services.task_svc.v1.DeleteTaskRequest';
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
proto.services.task_svc.v1.DeleteTaskResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.services.task_svc.v1.DeleteTaskResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.services.task_svc.v1.DeleteTaskResponse.displayName = 'proto.services.task_svc.v1.DeleteTaskResponse';
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
proto.services.task_svc.v1.CreateTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.CreateTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.CreateTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreateTaskRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    description: jspb.Message.getFieldWithDefault(msg, 2, ""),
    patientId: jspb.Message.getFieldWithDefault(msg, 3, ""),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 4, false),
    dueAt: (f = msg.getDueAt()) && google_protobuf_timestamp_pb.Timestamp.toObject(includeInstance, f),
    initialStatus: jspb.Message.getFieldWithDefault(msg, 6, 0)
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
 * @return {!proto.services.task_svc.v1.CreateTaskRequest}
 */
proto.services.task_svc.v1.CreateTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.CreateTaskRequest;
  return proto.services.task_svc.v1.CreateTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.CreateTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.CreateTaskRequest}
 */
proto.services.task_svc.v1.CreateTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setPatientId(value);
      break;
    case 4:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setPublic(value);
      break;
    case 5:
      var value = new google_protobuf_timestamp_pb.Timestamp;
      reader.readMessage(value,google_protobuf_timestamp_pb.Timestamp.deserializeBinaryFromReader);
      msg.setDueAt(value);
      break;
    case 6:
      var value = /** @type {!proto.services.task_svc.v1.TaskStatus} */ (reader.readEnum());
      msg.setInitialStatus(value);
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
proto.services.task_svc.v1.CreateTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.CreateTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.CreateTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreateTaskRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getName();
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
  f = message.getPatientId();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getPublic();
  if (f) {
    writer.writeBool(
      4,
      f
    );
  }
  f = message.getDueAt();
  if (f != null) {
    writer.writeMessage(
      5,
      f,
      google_protobuf_timestamp_pb.Timestamp.serializeBinaryToWriter
    );
  }
  f = /** @type {!proto.services.task_svc.v1.TaskStatus} */ (jspb.Message.getField(message, 6));
  if (f != null) {
    writer.writeEnum(
      6,
      f
    );
  }
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string description = 2;
 * @return {string}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional string patient_id = 3;
 * @return {string}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional bool public = 4;
 * @return {boolean}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 4, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 4, value);
};


/**
 * optional google.protobuf.Timestamp due_at = 5;
 * @return {?proto.google.protobuf.Timestamp}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.getDueAt = function() {
  return /** @type{?proto.google.protobuf.Timestamp} */ (
    jspb.Message.getWrapperField(this, google_protobuf_timestamp_pb.Timestamp, 5));
};


/**
 * @param {?proto.google.protobuf.Timestamp|undefined} value
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
*/
proto.services.task_svc.v1.CreateTaskRequest.prototype.setDueAt = function(value) {
  return jspb.Message.setWrapperField(this, 5, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.clearDueAt = function() {
  return this.setDueAt(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.hasDueAt = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional TaskStatus initial_status = 6;
 * @return {!proto.services.task_svc.v1.TaskStatus}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.getInitialStatus = function() {
  return /** @type {!proto.services.task_svc.v1.TaskStatus} */ (jspb.Message.getFieldWithDefault(this, 6, 0));
};


/**
 * @param {!proto.services.task_svc.v1.TaskStatus} value
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.setInitialStatus = function(value) {
  return jspb.Message.setField(this, 6, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.CreateTaskRequest} returns this
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.clearInitialStatus = function() {
  return jspb.Message.setField(this, 6, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.CreateTaskRequest.prototype.hasInitialStatus = function() {
  return jspb.Message.getField(this, 6) != null;
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
proto.services.task_svc.v1.CreateTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.CreateTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.CreateTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreateTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.CreateTaskResponse}
 */
proto.services.task_svc.v1.CreateTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.CreateTaskResponse;
  return proto.services.task_svc.v1.CreateTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.CreateTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.CreateTaskResponse}
 */
proto.services.task_svc.v1.CreateTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.CreateTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.CreateTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.CreateTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.CreateTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.CreateTaskResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.CreateTaskResponse} returns this
 */
proto.services.task_svc.v1.CreateTaskResponse.prototype.setId = function(value) {
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
proto.services.task_svc.v1.GetTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.GetTaskRequest}
 */
proto.services.task_svc.v1.GetTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTaskRequest;
  return proto.services.task_svc.v1.GetTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTaskRequest}
 */
proto.services.task_svc.v1.GetTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.GetTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.GetTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskRequest} returns this
 */
proto.services.task_svc.v1.GetTaskRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetTaskResponse.repeatedFields_ = [10];



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
proto.services.task_svc.v1.GetTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    status: jspb.Message.getFieldWithDefault(msg, 4, 0),
    assignedUserId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    patient: (f = msg.getPatient()) && proto.services.task_svc.v1.GetTaskResponse.Patient.toObject(includeInstance, f),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    dueAt: (f = msg.getDueAt()) && google_protobuf_timestamp_pb.Timestamp.toObject(includeInstance, f),
    createdBy: jspb.Message.getFieldWithDefault(msg, 9, ""),
    subtasksList: jspb.Message.toObjectList(msg.getSubtasksList(),
    proto.services.task_svc.v1.GetTaskResponse.SubTask.toObject, includeInstance),
    organizationId: jspb.Message.getFieldWithDefault(msg, 11, "")
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
 * @return {!proto.services.task_svc.v1.GetTaskResponse}
 */
proto.services.task_svc.v1.GetTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTaskResponse;
  return proto.services.task_svc.v1.GetTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTaskResponse}
 */
proto.services.task_svc.v1.GetTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.services.task_svc.v1.TaskStatus} */ (reader.readEnum());
      msg.setStatus(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setAssignedUserId(value);
      break;
    case 6:
      var value = new proto.services.task_svc.v1.GetTaskResponse.Patient;
      reader.readMessage(value,proto.services.task_svc.v1.GetTaskResponse.Patient.deserializeBinaryFromReader);
      msg.setPatient(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setPublic(value);
      break;
    case 8:
      var value = new google_protobuf_timestamp_pb.Timestamp;
      reader.readMessage(value,google_protobuf_timestamp_pb.Timestamp.deserializeBinaryFromReader);
      msg.setDueAt(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
      break;
    case 10:
      var value = new proto.services.task_svc.v1.GetTaskResponse.SubTask;
      reader.readMessage(value,proto.services.task_svc.v1.GetTaskResponse.SubTask.deserializeBinaryFromReader);
      msg.addSubtasks(value);
      break;
    case 11:
      var value = /** @type {string} */ (reader.readString());
      msg.setOrganizationId(value);
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
proto.services.task_svc.v1.GetTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getAssignedUserId();
  if (f.length > 0) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getPatient();
  if (f != null) {
    writer.writeMessage(
      6,
      f,
      proto.services.task_svc.v1.GetTaskResponse.Patient.serializeBinaryToWriter
    );
  }
  f = message.getPublic();
  if (f) {
    writer.writeBool(
      7,
      f
    );
  }
  f = message.getDueAt();
  if (f != null) {
    writer.writeMessage(
      8,
      f,
      google_protobuf_timestamp_pb.Timestamp.serializeBinaryToWriter
    );
  }
  f = message.getCreatedBy();
  if (f.length > 0) {
    writer.writeString(
      9,
      f
    );
  }
  f = message.getSubtasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      10,
      f,
      proto.services.task_svc.v1.GetTaskResponse.SubTask.serializeBinaryToWriter
    );
  }
  f = message.getOrganizationId();
  if (f.length > 0) {
    writer.writeString(
      11,
      f
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
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTaskResponse.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTaskResponse.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    done: jspb.Message.getBooleanFieldWithDefault(msg, 3, false),
    createdBy: jspb.Message.getFieldWithDefault(msg, 4, "")
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
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask}
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTaskResponse.SubTask;
  return proto.services.task_svc.v1.GetTaskResponse.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTaskResponse.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask}
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.deserializeBinaryFromReader = function(msg, reader) {
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
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
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
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTaskResponse.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTaskResponse.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getCreatedBy();
  if (f.length > 0) {
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
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.setDone = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string created_by = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.SubTask.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
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
proto.services.task_svc.v1.GetTaskResponse.Patient.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTaskResponse.Patient.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTaskResponse.Patient} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.GetTaskResponse.Patient}
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTaskResponse.Patient;
  return proto.services.task_svc.v1.GetTaskResponse.Patient.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTaskResponse.Patient} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTaskResponse.Patient}
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.GetTaskResponse.Patient.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTaskResponse.Patient.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTaskResponse.Patient} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.GetTaskResponse.Patient.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse.Patient} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.Patient.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional TaskStatus status = 4;
 * @return {!proto.services.task_svc.v1.TaskStatus}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getStatus = function() {
  return /** @type {!proto.services.task_svc.v1.TaskStatus} */ (jspb.Message.getFieldWithDefault(this, 4, 0));
};


/**
 * @param {!proto.services.task_svc.v1.TaskStatus} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setStatus = function(value) {
  return jspb.Message.setProto3EnumField(this, 4, value);
};


/**
 * optional string assigned_user_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getAssignedUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setAssignedUserId = function(value) {
  return jspb.Message.setProto3StringField(this, 5, value);
};


/**
 * optional Patient patient = 6;
 * @return {?proto.services.task_svc.v1.GetTaskResponse.Patient}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getPatient = function() {
  return /** @type{?proto.services.task_svc.v1.GetTaskResponse.Patient} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetTaskResponse.Patient, 6));
};


/**
 * @param {?proto.services.task_svc.v1.GetTaskResponse.Patient|undefined} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
*/
proto.services.task_svc.v1.GetTaskResponse.prototype.setPatient = function(value) {
  return jspb.Message.setWrapperField(this, 6, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.clearPatient = function() {
  return this.setPatient(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.hasPatient = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional bool public = 7;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 7, value);
};


/**
 * optional google.protobuf.Timestamp due_at = 8;
 * @return {?proto.google.protobuf.Timestamp}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getDueAt = function() {
  return /** @type{?proto.google.protobuf.Timestamp} */ (
    jspb.Message.getWrapperField(this, google_protobuf_timestamp_pb.Timestamp, 8));
};


/**
 * @param {?proto.google.protobuf.Timestamp|undefined} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
*/
proto.services.task_svc.v1.GetTaskResponse.prototype.setDueAt = function(value) {
  return jspb.Message.setWrapperField(this, 8, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.clearDueAt = function() {
  return this.setDueAt(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.hasDueAt = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional string created_by = 9;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 9, value);
};


/**
 * repeated SubTask subtasks = 10;
 * @return {!Array<!proto.services.task_svc.v1.GetTaskResponse.SubTask>}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getSubtasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTaskResponse.SubTask>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTaskResponse.SubTask, 10));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTaskResponse.SubTask>} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
*/
proto.services.task_svc.v1.GetTaskResponse.prototype.setSubtasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 10, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTaskResponse.SubTask=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTaskResponse.SubTask}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.addSubtasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 10, opt_value, proto.services.task_svc.v1.GetTaskResponse.SubTask, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.clearSubtasksList = function() {
  return this.setSubtasksList([]);
};


/**
 * optional string organization_id = 11;
 * @return {string}
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.getOrganizationId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 11, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTaskResponse} returns this
 */
proto.services.task_svc.v1.GetTaskResponse.prototype.setOrganizationId = function(value) {
  return jspb.Message.setProto3StringField(this, 11, value);
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
proto.services.task_svc.v1.GetTasksByPatientRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientRequest}
 */
proto.services.task_svc.v1.GetTasksByPatientRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientRequest;
  return proto.services.task_svc.v1.GetTasksByPatientRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientRequest}
 */
proto.services.task_svc.v1.GetTasksByPatientRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.GetTasksByPatientRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.GetTasksByPatientRequest.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientRequest} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientRequest.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.repeatedFields_ = [1];



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
proto.services.task_svc.v1.GetTasksByPatientResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    tasksList: jspb.Message.toObjectList(msg.getTasksList(),
    proto.services.task_svc.v1.GetTasksByPatientResponse.Task.toObject, includeInstance)
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientResponse;
  return proto.services.task_svc.v1.GetTasksByPatientResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetTasksByPatientResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetTasksByPatientResponse.Task.deserializeBinaryFromReader);
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
proto.services.task_svc.v1.GetTasksByPatientResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getTasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetTasksByPatientResponse.Task.serializeBinaryToWriter
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.repeatedFields_ = [10];



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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientResponse.Task.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    status: jspb.Message.getFieldWithDefault(msg, 4, 0),
    assignedUserId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    patientId: jspb.Message.getFieldWithDefault(msg, 6, ""),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    dueAt: (f = msg.getDueAt()) && google_protobuf_timestamp_pb.Timestamp.toObject(includeInstance, f),
    createdBy: jspb.Message.getFieldWithDefault(msg, 9, ""),
    subtasksList: jspb.Message.toObjectList(msg.getSubtasksList(),
    proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.toObject, includeInstance)
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientResponse.Task;
  return proto.services.task_svc.v1.GetTasksByPatientResponse.Task.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.services.task_svc.v1.TaskStatus} */ (reader.readEnum());
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
      var value = new google_protobuf_timestamp_pb.Timestamp;
      reader.readMessage(value,google_protobuf_timestamp_pb.Timestamp.deserializeBinaryFromReader);
      msg.setDueAt(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
      break;
    case 10:
      var value = new proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask;
      reader.readMessage(value,proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.deserializeBinaryFromReader);
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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientResponse.Task.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getDueAt();
  if (f != null) {
    writer.writeMessage(
      8,
      f,
      google_protobuf_timestamp_pb.Timestamp.serializeBinaryToWriter
    );
  }
  f = message.getCreatedBy();
  if (f.length > 0) {
    writer.writeString(
      9,
      f
    );
  }
  f = message.getSubtasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      10,
      f,
      proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.serializeBinaryToWriter
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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    done: jspb.Message.getBooleanFieldWithDefault(msg, 3, false),
    createdBy: jspb.Message.getFieldWithDefault(msg, 4, "")
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask;
  return proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.deserializeBinaryFromReader = function(msg, reader) {
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
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getCreatedBy();
  if (f.length > 0) {
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
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.setDone = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string created_by = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional TaskStatus status = 4;
 * @return {!proto.services.task_svc.v1.TaskStatus}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getStatus = function() {
  return /** @type {!proto.services.task_svc.v1.TaskStatus} */ (jspb.Message.getFieldWithDefault(this, 4, 0));
};


/**
 * @param {!proto.services.task_svc.v1.TaskStatus} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setStatus = function(value) {
  return jspb.Message.setProto3EnumField(this, 4, value);
};


/**
 * optional string assigned_user_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getAssignedUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setAssignedUserId = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.clearAssignedUserId = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.hasAssignedUserId = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional string patient_id = 6;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 6, value);
};


/**
 * optional bool public = 7;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 7, value);
};


/**
 * optional google.protobuf.Timestamp due_at = 8;
 * @return {?proto.google.protobuf.Timestamp}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getDueAt = function() {
  return /** @type{?proto.google.protobuf.Timestamp} */ (
    jspb.Message.getWrapperField(this, google_protobuf_timestamp_pb.Timestamp, 8));
};


/**
 * @param {?proto.google.protobuf.Timestamp|undefined} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setDueAt = function(value) {
  return jspb.Message.setWrapperField(this, 8, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.clearDueAt = function() {
  return this.setDueAt(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.hasDueAt = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional string created_by = 9;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 9, value);
};


/**
 * repeated SubTask subtasks = 10;
 * @return {!Array<!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask>}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.getSubtasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask, 10));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask>} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.setSubtasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 10, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.addSubtasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 10, opt_value, proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.Task.prototype.clearSubtasksList = function() {
  return this.setSubtasksList([]);
};


/**
 * repeated Task tasks = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetTasksByPatientResponse.Task>}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.prototype.getTasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTasksByPatientResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTasksByPatientResponse.Task, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTasksByPatientResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientResponse.prototype.setTasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.prototype.addTasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetTasksByPatientResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientResponse} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientResponse.prototype.clearTasksList = function() {
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest;
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.repeatedFields_ = [1,2,3];



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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    todoList: jspb.Message.toObjectList(msg.getTodoList(),
    proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.toObject, includeInstance),
    inProgressList: jspb.Message.toObjectList(msg.getInProgressList(),
    proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.toObject, includeInstance),
    doneList: jspb.Message.toObjectList(msg.getDoneList(),
    proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.toObject, includeInstance)
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse;
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.deserializeBinaryFromReader);
      msg.addTodo(value);
      break;
    case 2:
      var value = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.deserializeBinaryFromReader);
      msg.addInProgress(value);
      break;
    case 3:
      var value = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.deserializeBinaryFromReader);
      msg.addDone(value);
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getTodoList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.serializeBinaryToWriter
    );
  }
  f = message.getInProgressList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.serializeBinaryToWriter
    );
  }
  f = message.getDoneList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      3,
      f,
      proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.serializeBinaryToWriter
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.repeatedFields_ = [10];



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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    assignedUserId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    patientId: jspb.Message.getFieldWithDefault(msg, 6, ""),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    dueAt: (f = msg.getDueAt()) && google_protobuf_timestamp_pb.Timestamp.toObject(includeInstance, f),
    createdBy: jspb.Message.getFieldWithDefault(msg, 9, ""),
    subtasksList: jspb.Message.toObjectList(msg.getSubtasksList(),
    proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.toObject, includeInstance)
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task;
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = new google_protobuf_timestamp_pb.Timestamp;
      reader.readMessage(value,google_protobuf_timestamp_pb.Timestamp.deserializeBinaryFromReader);
      msg.setDueAt(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
      break;
    case 10:
      var value = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask;
      reader.readMessage(value,proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.deserializeBinaryFromReader);
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getDueAt();
  if (f != null) {
    writer.writeMessage(
      8,
      f,
      google_protobuf_timestamp_pb.Timestamp.serializeBinaryToWriter
    );
  }
  f = message.getCreatedBy();
  if (f.length > 0) {
    writer.writeString(
      9,
      f
    );
  }
  f = message.getSubtasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      10,
      f,
      proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.serializeBinaryToWriter
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    done: jspb.Message.getBooleanFieldWithDefault(msg, 3, false),
    createdBy: jspb.Message.getFieldWithDefault(msg, 4, "")
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
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask;
  return proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.deserializeBinaryFromReader = function(msg, reader) {
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
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getCreatedBy();
  if (f.length > 0) {
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
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.setDone = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string created_by = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string assigned_user_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getAssignedUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setAssignedUserId = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.clearAssignedUserId = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.hasAssignedUserId = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional string patient_id = 6;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setPatientId = function(value) {
  return jspb.Message.setProto3StringField(this, 6, value);
};


/**
 * optional bool public = 7;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 7, value);
};


/**
 * optional google.protobuf.Timestamp due_at = 8;
 * @return {?proto.google.protobuf.Timestamp}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getDueAt = function() {
  return /** @type{?proto.google.protobuf.Timestamp} */ (
    jspb.Message.getWrapperField(this, google_protobuf_timestamp_pb.Timestamp, 8));
};


/**
 * @param {?proto.google.protobuf.Timestamp|undefined} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setDueAt = function(value) {
  return jspb.Message.setWrapperField(this, 8, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.clearDueAt = function() {
  return this.setDueAt(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.hasDueAt = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional string created_by = 9;
 * @return {string}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 9, value);
};


/**
 * repeated SubTask subtasks = 10;
 * @return {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask>}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.getSubtasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask, 10));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask>} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.setSubtasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 10, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.addSubtasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 10, opt_value, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.prototype.clearSubtasksList = function() {
  return this.setSubtasksList([]);
};


/**
 * repeated Task todo = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.getTodoList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.setTodoList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.addTodo = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.clearTodoList = function() {
  return this.setTodoList([]);
};


/**
 * repeated Task in_progress = 2;
 * @return {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.getInProgressList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, 2));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.setInProgressList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.addInProgress = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.clearInProgressList = function() {
  return this.setInProgressList([]);
};


/**
 * repeated Task done = 3;
 * @return {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.getDoneList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, 3));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} returns this
*/
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.setDoneList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 3, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task}
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.addDone = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 3, opt_value, proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse} returns this
 */
proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.prototype.clearDoneList = function() {
  return this.setDoneList([]);
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
proto.services.task_svc.v1.GetAssignedTasksRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetAssignedTasksRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetAssignedTasksRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.GetAssignedTasksRequest}
 */
proto.services.task_svc.v1.GetAssignedTasksRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetAssignedTasksRequest;
  return proto.services.task_svc.v1.GetAssignedTasksRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksRequest}
 */
proto.services.task_svc.v1.GetAssignedTasksRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.GetAssignedTasksRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetAssignedTasksRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.repeatedFields_ = [1];



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
proto.services.task_svc.v1.GetAssignedTasksResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetAssignedTasksResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    tasksList: jspb.Message.toObjectList(msg.getTasksList(),
    proto.services.task_svc.v1.GetAssignedTasksResponse.Task.toObject, includeInstance)
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
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetAssignedTasksResponse;
  return proto.services.task_svc.v1.GetAssignedTasksResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.services.task_svc.v1.GetAssignedTasksResponse.Task;
      reader.readMessage(value,proto.services.task_svc.v1.GetAssignedTasksResponse.Task.deserializeBinaryFromReader);
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
proto.services.task_svc.v1.GetAssignedTasksResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetAssignedTasksResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getTasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.services.task_svc.v1.GetAssignedTasksResponse.Task.serializeBinaryToWriter
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.repeatedFields_ = [10];



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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetAssignedTasksResponse.Task.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    status: jspb.Message.getFieldWithDefault(msg, 4, 0),
    assignedUserId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    patient: (f = msg.getPatient()) && proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.toObject(includeInstance, f),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    dueAt: (f = msg.getDueAt()) && google_protobuf_timestamp_pb.Timestamp.toObject(includeInstance, f),
    createdBy: jspb.Message.getFieldWithDefault(msg, 9, ""),
    subtasksList: jspb.Message.toObjectList(msg.getSubtasksList(),
    proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.toObject, includeInstance)
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
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetAssignedTasksResponse.Task;
  return proto.services.task_svc.v1.GetAssignedTasksResponse.Task.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.services.task_svc.v1.TaskStatus} */ (reader.readEnum());
      msg.setStatus(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setAssignedUserId(value);
      break;
    case 6:
      var value = new proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient;
      reader.readMessage(value,proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.deserializeBinaryFromReader);
      msg.setPatient(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setPublic(value);
      break;
    case 8:
      var value = new google_protobuf_timestamp_pb.Timestamp;
      reader.readMessage(value,google_protobuf_timestamp_pb.Timestamp.deserializeBinaryFromReader);
      msg.setDueAt(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
      break;
    case 10:
      var value = new proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask;
      reader.readMessage(value,proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.deserializeBinaryFromReader);
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetAssignedTasksResponse.Task.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getAssignedUserId();
  if (f.length > 0) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getPatient();
  if (f != null) {
    writer.writeMessage(
      6,
      f,
      proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.serializeBinaryToWriter
    );
  }
  f = message.getPublic();
  if (f) {
    writer.writeBool(
      7,
      f
    );
  }
  f = message.getDueAt();
  if (f != null) {
    writer.writeMessage(
      8,
      f,
      google_protobuf_timestamp_pb.Timestamp.serializeBinaryToWriter
    );
  }
  f = message.getCreatedBy();
  if (f.length > 0) {
    writer.writeString(
      9,
      f
    );
  }
  f = message.getSubtasksList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      10,
      f,
      proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.serializeBinaryToWriter
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient;
  return proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient.prototype.setName = function(value) {
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    done: jspb.Message.getBooleanFieldWithDefault(msg, 3, false),
    createdBy: jspb.Message.getFieldWithDefault(msg, 4, "")
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
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask;
  return proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.deserializeBinaryFromReader = function(msg, reader) {
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
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setCreatedBy(value);
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getCreatedBy();
  if (f.length > 0) {
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
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.setDone = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string created_by = 4;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional TaskStatus status = 4;
 * @return {!proto.services.task_svc.v1.TaskStatus}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getStatus = function() {
  return /** @type {!proto.services.task_svc.v1.TaskStatus} */ (jspb.Message.getFieldWithDefault(this, 4, 0));
};


/**
 * @param {!proto.services.task_svc.v1.TaskStatus} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setStatus = function(value) {
  return jspb.Message.setProto3EnumField(this, 4, value);
};


/**
 * optional string assigned_user_id = 5;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getAssignedUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setAssignedUserId = function(value) {
  return jspb.Message.setProto3StringField(this, 5, value);
};


/**
 * optional Patient patient = 6;
 * @return {?proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getPatient = function() {
  return /** @type{?proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient} */ (
    jspb.Message.getWrapperField(this, proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient, 6));
};


/**
 * @param {?proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient|undefined} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
*/
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setPatient = function(value) {
  return jspb.Message.setWrapperField(this, 6, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.clearPatient = function() {
  return this.setPatient(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.hasPatient = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional bool public = 7;
 * @return {boolean}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 7, value);
};


/**
 * optional google.protobuf.Timestamp due_at = 8;
 * @return {?proto.google.protobuf.Timestamp}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getDueAt = function() {
  return /** @type{?proto.google.protobuf.Timestamp} */ (
    jspb.Message.getWrapperField(this, google_protobuf_timestamp_pb.Timestamp, 8));
};


/**
 * @param {?proto.google.protobuf.Timestamp|undefined} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
*/
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setDueAt = function(value) {
  return jspb.Message.setWrapperField(this, 8, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.clearDueAt = function() {
  return this.setDueAt(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.hasDueAt = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional string created_by = 9;
 * @return {string}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getCreatedBy = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setCreatedBy = function(value) {
  return jspb.Message.setProto3StringField(this, 9, value);
};


/**
 * repeated SubTask subtasks = 10;
 * @return {!Array<!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask>}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.getSubtasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask, 10));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask>} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
*/
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.setSubtasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 10, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.addSubtasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 10, opt_value, proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.Task.prototype.clearSubtasksList = function() {
  return this.setSubtasksList([]);
};


/**
 * repeated Task tasks = 1;
 * @return {!Array<!proto.services.task_svc.v1.GetAssignedTasksResponse.Task>}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.prototype.getTasksList = function() {
  return /** @type{!Array<!proto.services.task_svc.v1.GetAssignedTasksResponse.Task>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.services.task_svc.v1.GetAssignedTasksResponse.Task, 1));
};


/**
 * @param {!Array<!proto.services.task_svc.v1.GetAssignedTasksResponse.Task>} value
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse} returns this
*/
proto.services.task_svc.v1.GetAssignedTasksResponse.prototype.setTasksList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task=} opt_value
 * @param {number=} opt_index
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse.Task}
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.prototype.addTasks = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.services.task_svc.v1.GetAssignedTasksResponse.Task, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.services.task_svc.v1.GetAssignedTasksResponse} returns this
 */
proto.services.task_svc.v1.GetAssignedTasksResponse.prototype.clearTasksList = function() {
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
proto.services.task_svc.v1.UpdateTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UpdateTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UpdateTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateTaskRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    dueAt: (f = msg.getDueAt()) && google_protobuf_timestamp_pb.Timestamp.toObject(includeInstance, f),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 5, false)
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
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest}
 */
proto.services.task_svc.v1.UpdateTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UpdateTaskRequest;
  return proto.services.task_svc.v1.UpdateTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UpdateTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest}
 */
proto.services.task_svc.v1.UpdateTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = new google_protobuf_timestamp_pb.Timestamp;
      reader.readMessage(value,google_protobuf_timestamp_pb.Timestamp.deserializeBinaryFromReader);
      msg.setDueAt(value);
      break;
    case 5:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setPublic(value);
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
proto.services.task_svc.v1.UpdateTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UpdateTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UpdateTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getDueAt();
  if (f != null) {
    writer.writeMessage(
      4,
      f,
      google_protobuf_timestamp_pb.Timestamp.serializeBinaryToWriter
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 5));
  if (f != null) {
    writer.writeBool(
      5,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.setName = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.clearName = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.hasName = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 3, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 3, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional google.protobuf.Timestamp due_at = 4;
 * @return {?proto.google.protobuf.Timestamp}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.getDueAt = function() {
  return /** @type{?proto.google.protobuf.Timestamp} */ (
    jspb.Message.getWrapperField(this, google_protobuf_timestamp_pb.Timestamp, 4));
};


/**
 * @param {?proto.google.protobuf.Timestamp|undefined} value
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
*/
proto.services.task_svc.v1.UpdateTaskRequest.prototype.setDueAt = function(value) {
  return jspb.Message.setWrapperField(this, 4, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.clearDueAt = function() {
  return this.setDueAt(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.hasDueAt = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional bool public = 5;
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 5, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.setPublic = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdateTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.clearPublic = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdateTaskRequest.prototype.hasPublic = function() {
  return jspb.Message.getField(this, 5) != null;
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
proto.services.task_svc.v1.UpdateTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UpdateTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UpdateTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UpdateTaskResponse}
 */
proto.services.task_svc.v1.UpdateTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UpdateTaskResponse;
  return proto.services.task_svc.v1.UpdateTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UpdateTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UpdateTaskResponse}
 */
proto.services.task_svc.v1.UpdateTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UpdateTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UpdateTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UpdateTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.AddSubTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.AddSubTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.AddSubTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AddSubTaskRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    taskId: jspb.Message.getFieldWithDefault(msg, 2, ""),
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
 * @return {!proto.services.task_svc.v1.AddSubTaskRequest}
 */
proto.services.task_svc.v1.AddSubTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.AddSubTaskRequest;
  return proto.services.task_svc.v1.AddSubTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.AddSubTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.AddSubTaskRequest}
 */
proto.services.task_svc.v1.AddSubTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setTaskId(value);
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
proto.services.task_svc.v1.AddSubTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.AddSubTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.AddSubTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AddSubTaskRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getTaskId();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 3));
  if (f != null) {
    writer.writeBool(
      3,
      f
    );
  }
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AddSubTaskRequest} returns this
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string task_id = 2;
 * @return {string}
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.getTaskId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AddSubTaskRequest} returns this
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.setTaskId = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool done = 3;
 * @return {boolean}
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.getDone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.services.task_svc.v1.AddSubTaskRequest} returns this
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.setDone = function(value) {
  return jspb.Message.setField(this, 3, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.AddSubTaskRequest} returns this
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.clearDone = function() {
  return jspb.Message.setField(this, 3, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.AddSubTaskRequest.prototype.hasDone = function() {
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
proto.services.task_svc.v1.AddSubTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.AddSubTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.AddSubTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AddSubTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.AddSubTaskResponse}
 */
proto.services.task_svc.v1.AddSubTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.AddSubTaskResponse;
  return proto.services.task_svc.v1.AddSubTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.AddSubTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.AddSubTaskResponse}
 */
proto.services.task_svc.v1.AddSubTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.AddSubTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.AddSubTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.AddSubTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AddSubTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.AddSubTaskResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AddSubTaskResponse} returns this
 */
proto.services.task_svc.v1.AddSubTaskResponse.prototype.setId = function(value) {
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
proto.services.task_svc.v1.RemoveSubTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.RemoveSubTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.RemoveSubTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.RemoveSubTaskRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.RemoveSubTaskRequest}
 */
proto.services.task_svc.v1.RemoveSubTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.RemoveSubTaskRequest;
  return proto.services.task_svc.v1.RemoveSubTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.RemoveSubTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.RemoveSubTaskRequest}
 */
proto.services.task_svc.v1.RemoveSubTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.RemoveSubTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.RemoveSubTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.RemoveSubTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.RemoveSubTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.RemoveSubTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.RemoveSubTaskRequest} returns this
 */
proto.services.task_svc.v1.RemoveSubTaskRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.RemoveSubTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.RemoveSubTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.RemoveSubTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.RemoveSubTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.RemoveSubTaskResponse}
 */
proto.services.task_svc.v1.RemoveSubTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.RemoveSubTaskResponse;
  return proto.services.task_svc.v1.RemoveSubTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.RemoveSubTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.RemoveSubTaskResponse}
 */
proto.services.task_svc.v1.RemoveSubTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.RemoveSubTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.RemoveSubTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.RemoveSubTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.RemoveSubTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UpdateSubTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UpdateSubTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UpdateSubTaskRequest}
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UpdateSubTaskRequest;
  return proto.services.task_svc.v1.UpdateSubTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UpdateSubTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UpdateSubTaskRequest}
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UpdateSubTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UpdateSubTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdateSubTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UpdateSubTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.setName = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.services.task_svc.v1.UpdateSubTaskRequest} returns this
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.clearName = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.services.task_svc.v1.UpdateSubTaskRequest.prototype.hasName = function() {
  return jspb.Message.getField(this, 2) != null;
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
proto.services.task_svc.v1.UpdateSubTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UpdateSubTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UpdateSubTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateSubTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UpdateSubTaskResponse}
 */
proto.services.task_svc.v1.UpdateSubTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UpdateSubTaskResponse;
  return proto.services.task_svc.v1.UpdateSubTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UpdateSubTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UpdateSubTaskResponse}
 */
proto.services.task_svc.v1.UpdateSubTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UpdateSubTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UpdateSubTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UpdateSubTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UpdateSubTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.SubTaskToToDoRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.SubTaskToToDoRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.SubTaskToToDoRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToToDoRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.SubTaskToToDoRequest}
 */
proto.services.task_svc.v1.SubTaskToToDoRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.SubTaskToToDoRequest;
  return proto.services.task_svc.v1.SubTaskToToDoRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.SubTaskToToDoRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.SubTaskToToDoRequest}
 */
proto.services.task_svc.v1.SubTaskToToDoRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.SubTaskToToDoRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.SubTaskToToDoRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.SubTaskToToDoRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToToDoRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.SubTaskToToDoRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.SubTaskToToDoRequest} returns this
 */
proto.services.task_svc.v1.SubTaskToToDoRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.SubTaskToToDoResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.SubTaskToToDoResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.SubTaskToToDoResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToToDoResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.SubTaskToToDoResponse}
 */
proto.services.task_svc.v1.SubTaskToToDoResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.SubTaskToToDoResponse;
  return proto.services.task_svc.v1.SubTaskToToDoResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.SubTaskToToDoResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.SubTaskToToDoResponse}
 */
proto.services.task_svc.v1.SubTaskToToDoResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.SubTaskToToDoResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.SubTaskToToDoResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.SubTaskToToDoResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToToDoResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.SubTaskToDoneRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.SubTaskToDoneRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.SubTaskToDoneRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToDoneRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.SubTaskToDoneRequest}
 */
proto.services.task_svc.v1.SubTaskToDoneRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.SubTaskToDoneRequest;
  return proto.services.task_svc.v1.SubTaskToDoneRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.SubTaskToDoneRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.SubTaskToDoneRequest}
 */
proto.services.task_svc.v1.SubTaskToDoneRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.SubTaskToDoneRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.SubTaskToDoneRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.SubTaskToDoneRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToDoneRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.SubTaskToDoneRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.SubTaskToDoneRequest} returns this
 */
proto.services.task_svc.v1.SubTaskToDoneRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.SubTaskToDoneResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.SubTaskToDoneResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.SubTaskToDoneResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToDoneResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.SubTaskToDoneResponse}
 */
proto.services.task_svc.v1.SubTaskToDoneResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.SubTaskToDoneResponse;
  return proto.services.task_svc.v1.SubTaskToDoneResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.SubTaskToDoneResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.SubTaskToDoneResponse}
 */
proto.services.task_svc.v1.SubTaskToDoneResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.SubTaskToDoneResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.SubTaskToDoneResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.SubTaskToDoneResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.SubTaskToDoneResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.TaskToToDoRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.TaskToToDoRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.TaskToToDoRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToToDoRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.TaskToToDoRequest}
 */
proto.services.task_svc.v1.TaskToToDoRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.TaskToToDoRequest;
  return proto.services.task_svc.v1.TaskToToDoRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.TaskToToDoRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.TaskToToDoRequest}
 */
proto.services.task_svc.v1.TaskToToDoRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.TaskToToDoRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.TaskToToDoRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.TaskToToDoRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToToDoRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.TaskToToDoRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.TaskToToDoRequest} returns this
 */
proto.services.task_svc.v1.TaskToToDoRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.TaskToToDoResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.TaskToToDoResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.TaskToToDoResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToToDoResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.TaskToToDoResponse}
 */
proto.services.task_svc.v1.TaskToToDoResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.TaskToToDoResponse;
  return proto.services.task_svc.v1.TaskToToDoResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.TaskToToDoResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.TaskToToDoResponse}
 */
proto.services.task_svc.v1.TaskToToDoResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.TaskToToDoResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.TaskToToDoResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.TaskToToDoResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToToDoResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.TaskToInProgressRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.TaskToInProgressRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.TaskToInProgressRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToInProgressRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.TaskToInProgressRequest}
 */
proto.services.task_svc.v1.TaskToInProgressRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.TaskToInProgressRequest;
  return proto.services.task_svc.v1.TaskToInProgressRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.TaskToInProgressRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.TaskToInProgressRequest}
 */
proto.services.task_svc.v1.TaskToInProgressRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.TaskToInProgressRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.TaskToInProgressRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.TaskToInProgressRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToInProgressRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.TaskToInProgressRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.TaskToInProgressRequest} returns this
 */
proto.services.task_svc.v1.TaskToInProgressRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.TaskToInProgressResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.TaskToInProgressResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.TaskToInProgressResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToInProgressResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.TaskToInProgressResponse}
 */
proto.services.task_svc.v1.TaskToInProgressResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.TaskToInProgressResponse;
  return proto.services.task_svc.v1.TaskToInProgressResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.TaskToInProgressResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.TaskToInProgressResponse}
 */
proto.services.task_svc.v1.TaskToInProgressResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.TaskToInProgressResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.TaskToInProgressResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.TaskToInProgressResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToInProgressResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.TaskToDoneRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.TaskToDoneRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.TaskToDoneRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToDoneRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.TaskToDoneRequest}
 */
proto.services.task_svc.v1.TaskToDoneRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.TaskToDoneRequest;
  return proto.services.task_svc.v1.TaskToDoneRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.TaskToDoneRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.TaskToDoneRequest}
 */
proto.services.task_svc.v1.TaskToDoneRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.TaskToDoneRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.TaskToDoneRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.TaskToDoneRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToDoneRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.TaskToDoneRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.TaskToDoneRequest} returns this
 */
proto.services.task_svc.v1.TaskToDoneRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.TaskToDoneResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.TaskToDoneResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.TaskToDoneResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToDoneResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.TaskToDoneResponse}
 */
proto.services.task_svc.v1.TaskToDoneResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.TaskToDoneResponse;
  return proto.services.task_svc.v1.TaskToDoneResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.TaskToDoneResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.TaskToDoneResponse}
 */
proto.services.task_svc.v1.TaskToDoneResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.TaskToDoneResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.TaskToDoneResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.TaskToDoneResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.TaskToDoneResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.AssignTaskToUserRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.AssignTaskToUserRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.AssignTaskToUserRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    userId: jspb.Message.getFieldWithDefault(msg, 2, "")
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
 * @return {!proto.services.task_svc.v1.AssignTaskToUserRequest}
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.AssignTaskToUserRequest;
  return proto.services.task_svc.v1.AssignTaskToUserRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.AssignTaskToUserRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.AssignTaskToUserRequest}
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.deserializeBinaryFromReader = function(msg, reader) {
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
      msg.setUserId(value);
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
proto.services.task_svc.v1.AssignTaskToUserRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.AssignTaskToUserRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.AssignTaskToUserRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getUserId();
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
proto.services.task_svc.v1.AssignTaskToUserRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AssignTaskToUserRequest} returns this
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string user_id = 2;
 * @return {string}
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.prototype.getUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.AssignTaskToUserRequest} returns this
 */
proto.services.task_svc.v1.AssignTaskToUserRequest.prototype.setUserId = function(value) {
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
proto.services.task_svc.v1.AssignTaskToUserResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.AssignTaskToUserResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.AssignTaskToUserResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignTaskToUserResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.AssignTaskToUserResponse}
 */
proto.services.task_svc.v1.AssignTaskToUserResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.AssignTaskToUserResponse;
  return proto.services.task_svc.v1.AssignTaskToUserResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.AssignTaskToUserResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.AssignTaskToUserResponse}
 */
proto.services.task_svc.v1.AssignTaskToUserResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.AssignTaskToUserResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.AssignTaskToUserResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.AssignTaskToUserResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.AssignTaskToUserResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.UnassignTaskFromUserRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UnassignTaskFromUserRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UnassignTaskFromUserRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignTaskFromUserRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UnassignTaskFromUserRequest}
 */
proto.services.task_svc.v1.UnassignTaskFromUserRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UnassignTaskFromUserRequest;
  return proto.services.task_svc.v1.UnassignTaskFromUserRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UnassignTaskFromUserRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UnassignTaskFromUserRequest}
 */
proto.services.task_svc.v1.UnassignTaskFromUserRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UnassignTaskFromUserRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UnassignTaskFromUserRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UnassignTaskFromUserRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignTaskFromUserRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.UnassignTaskFromUserRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UnassignTaskFromUserRequest} returns this
 */
proto.services.task_svc.v1.UnassignTaskFromUserRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.UnassignTaskFromUserResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UnassignTaskFromUserResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UnassignTaskFromUserResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignTaskFromUserResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UnassignTaskFromUserResponse}
 */
proto.services.task_svc.v1.UnassignTaskFromUserResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UnassignTaskFromUserResponse;
  return proto.services.task_svc.v1.UnassignTaskFromUserResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UnassignTaskFromUserResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UnassignTaskFromUserResponse}
 */
proto.services.task_svc.v1.UnassignTaskFromUserResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UnassignTaskFromUserResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UnassignTaskFromUserResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UnassignTaskFromUserResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnassignTaskFromUserResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.PublishTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.PublishTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.PublishTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.PublishTaskRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.PublishTaskRequest}
 */
proto.services.task_svc.v1.PublishTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.PublishTaskRequest;
  return proto.services.task_svc.v1.PublishTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.PublishTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.PublishTaskRequest}
 */
proto.services.task_svc.v1.PublishTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.PublishTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.PublishTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.PublishTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.PublishTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.PublishTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.PublishTaskRequest} returns this
 */
proto.services.task_svc.v1.PublishTaskRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.PublishTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.PublishTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.PublishTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.PublishTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.PublishTaskResponse}
 */
proto.services.task_svc.v1.PublishTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.PublishTaskResponse;
  return proto.services.task_svc.v1.PublishTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.PublishTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.PublishTaskResponse}
 */
proto.services.task_svc.v1.PublishTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.PublishTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.PublishTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.PublishTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.PublishTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.UnpublishTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UnpublishTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UnpublishTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnpublishTaskRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UnpublishTaskRequest}
 */
proto.services.task_svc.v1.UnpublishTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UnpublishTaskRequest;
  return proto.services.task_svc.v1.UnpublishTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UnpublishTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UnpublishTaskRequest}
 */
proto.services.task_svc.v1.UnpublishTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UnpublishTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UnpublishTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UnpublishTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnpublishTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.UnpublishTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.UnpublishTaskRequest} returns this
 */
proto.services.task_svc.v1.UnpublishTaskRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.UnpublishTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.UnpublishTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.UnpublishTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnpublishTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.UnpublishTaskResponse}
 */
proto.services.task_svc.v1.UnpublishTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.UnpublishTaskResponse;
  return proto.services.task_svc.v1.UnpublishTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.UnpublishTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.UnpublishTaskResponse}
 */
proto.services.task_svc.v1.UnpublishTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.UnpublishTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.UnpublishTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.UnpublishTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.UnpublishTaskResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.DeleteTaskRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.DeleteTaskRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.DeleteTaskRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeleteTaskRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.DeleteTaskRequest}
 */
proto.services.task_svc.v1.DeleteTaskRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.DeleteTaskRequest;
  return proto.services.task_svc.v1.DeleteTaskRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.DeleteTaskRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.DeleteTaskRequest}
 */
proto.services.task_svc.v1.DeleteTaskRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.DeleteTaskRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.DeleteTaskRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.DeleteTaskRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeleteTaskRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.services.task_svc.v1.DeleteTaskRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.services.task_svc.v1.DeleteTaskRequest} returns this
 */
proto.services.task_svc.v1.DeleteTaskRequest.prototype.setId = function(value) {
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
proto.services.task_svc.v1.DeleteTaskResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.services.task_svc.v1.DeleteTaskResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.services.task_svc.v1.DeleteTaskResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeleteTaskResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.services.task_svc.v1.DeleteTaskResponse}
 */
proto.services.task_svc.v1.DeleteTaskResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.services.task_svc.v1.DeleteTaskResponse;
  return proto.services.task_svc.v1.DeleteTaskResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.services.task_svc.v1.DeleteTaskResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.services.task_svc.v1.DeleteTaskResponse}
 */
proto.services.task_svc.v1.DeleteTaskResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.services.task_svc.v1.DeleteTaskResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.services.task_svc.v1.DeleteTaskResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.services.task_svc.v1.DeleteTaskResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.services.task_svc.v1.DeleteTaskResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};


/**
 * @enum {number}
 */
proto.services.task_svc.v1.TaskStatus = {
  TASK_STATUS_UNSPECIFIED: 0,
  TASK_STATUS_TODO: 1,
  TASK_STATUS_IN_PROGRESS: 2,
  TASK_STATUS_DONE: 3
};

goog.object.extend(exports, proto.services.task_svc.v1);
