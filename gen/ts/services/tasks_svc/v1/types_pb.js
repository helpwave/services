// source: services/tasks_svc/v1/types.proto
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

goog.exportSymbol('proto.services.tasks_svc.v1.TaskStatus', null, global);
/**
 * @enum {number}
 */
proto.services.tasks_svc.v1.TaskStatus = {
  TASK_STATUS_UNSPECIFIED: 0,
  TASK_STATUS_TODO: 1,
  TASK_STATUS_IN_PROGRESS: 2,
  TASK_STATUS_DONE: 3
};

goog.object.extend(exports, proto.services.tasks_svc.v1);
