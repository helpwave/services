// source: proto/services/property_svc/v1/types.proto
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

goog.exportSymbol('proto.proto.services.property_svc.v1.FieldType', null, global);
goog.exportSymbol('proto.proto.services.property_svc.v1.SubjectType', null, global);
/**
 * @enum {number}
 */
proto.proto.services.property_svc.v1.SubjectType = {
  SUBJECT_TYPE_UNSPECIFIED: 0,
  SUBJECT_TYPE_PATIENT: 1
};

/**
 * @enum {number}
 */
proto.proto.services.property_svc.v1.FieldType = {
  FIELD_TYPE_UNSPECIFIED: 0,
  FIELD_TYPE_TEXT: 1,
  FIELD_TYPE_NUMBER: 2,
  FIELD_TYPE_CHECKBOX: 3,
  FIELD_TYPE_DATE: 4,
  FIELD_TYPE_DATE_TIME: 5,
  FIELD_TYPE_SELECT: 6
};

goog.object.extend(exports, proto.proto.services.property_svc.v1);
