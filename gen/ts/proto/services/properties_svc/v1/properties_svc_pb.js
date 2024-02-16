// source: proto/services/properties_svc/v1/properties_svc.proto
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

var proto_services_properties_svc_v1_types_pb = require('../../../../proto/services/properties_svc/v1/types_pb.js');
goog.object.extend(proto, proto_services_properties_svc_v1_types_pb);
goog.exportSymbol('proto.proto.services.properties_svc.v1.AttachPropertyValueRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.ValueCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.AttachPropertyValueResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertyRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertyRequest.FieldTypeDataCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertyResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertySetRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.CreatePropertySetResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.DeletePropertySetRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.DeletePropertySetResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.ValueCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertiesRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertiesResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.FieldTypeDataCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertyRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertyResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertyResponse.FieldTypeDataCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdateOrderRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdateOrderResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.SoftRequiredCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertyRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertyRequest.FieldTypeDataCase', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertyResponse', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertySetRequest', null, global);
goog.exportSymbol('proto.proto.services.properties_svc.v1.UpdatePropertySetResponse', null, global);
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
proto.proto.services.properties_svc.v1.CreatePropertySetRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.CreatePropertySetRequest.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.CreatePropertySetRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.CreatePropertySetRequest.displayName = 'proto.proto.services.properties_svc.v1.CreatePropertySetRequest';
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
proto.proto.services.properties_svc.v1.CreatePropertySetResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.CreatePropertySetResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.CreatePropertySetResponse.displayName = 'proto.proto.services.properties_svc.v1.CreatePropertySetResponse';
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
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePropertySetRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.displayName = 'proto.proto.services.properties_svc.v1.UpdatePropertySetRequest';
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
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePropertySetResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.displayName = 'proto.proto.services.properties_svc.v1.UpdatePropertySetResponse';
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
proto.proto.services.properties_svc.v1.DeletePropertySetRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.DeletePropertySetRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.DeletePropertySetRequest.displayName = 'proto.proto.services.properties_svc.v1.DeletePropertySetRequest';
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
proto.proto.services.properties_svc.v1.DeletePropertySetResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.DeletePropertySetResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.DeletePropertySetResponse.displayName = 'proto.proto.services.properties_svc.v1.DeletePropertySetResponse';
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.CreatePropertyRequest.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.CreatePropertyRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.CreatePropertyRequest.displayName = 'proto.proto.services.properties_svc.v1.CreatePropertyRequest';
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.displayName = 'proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData';
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.displayName = 'proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption';
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
proto.proto.services.properties_svc.v1.CreatePropertyResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.CreatePropertyResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.CreatePropertyResponse.displayName = 'proto.proto.services.properties_svc.v1.CreatePropertyResponse';
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
proto.proto.services.properties_svc.v1.GetPropertyRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertyRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertyRequest.displayName = 'proto.proto.services.properties_svc.v1.GetPropertyRequest';
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
proto.proto.services.properties_svc.v1.GetPropertyResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.GetPropertyResponse.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertyResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertyResponse.displayName = 'proto.proto.services.properties_svc.v1.GetPropertyResponse';
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.displayName = 'proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData';
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.displayName = 'proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption';
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
proto.proto.services.properties_svc.v1.GetPropertiesRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertiesRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertiesRequest.displayName = 'proto.proto.services.properties_svc.v1.GetPropertiesRequest';
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.GetPropertiesResponse.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertiesResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.displayName = 'proto.proto.services.properties_svc.v1.GetPropertiesResponse';
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.displayName = 'proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property';
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.displayName = 'proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData';
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.displayName = 'proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption';
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePropertyRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePropertyRequest.displayName = 'proto.proto.services.properties_svc.v1.UpdatePropertyRequest';
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.displayName = 'proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData';
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.displayName = 'proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption';
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
proto.proto.services.properties_svc.v1.UpdatePropertyResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePropertyResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePropertyResponse.displayName = 'proto.proto.services.properties_svc.v1.UpdatePropertyResponse';
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
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.AttachPropertyValueRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.displayName = 'proto.proto.services.properties_svc.v1.AttachPropertyValueRequest';
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
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.AttachPropertyValueResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.displayName = 'proto.proto.services.properties_svc.v1.AttachPropertyValueResponse';
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.displayName = 'proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest';
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.repeatedFields_, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.displayName = 'proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse';
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.displayName = 'proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value';
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.displayName = 'proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set';
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
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.displayName = 'proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest';
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
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.displayName = 'proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse';
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
proto.proto.services.properties_svc.v1.UpdateOrderRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdateOrderRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdateOrderRequest.displayName = 'proto.proto.services.properties_svc.v1.UpdateOrderRequest';
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
proto.proto.services.properties_svc.v1.UpdateOrderResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.properties_svc.v1.UpdateOrderResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.properties_svc.v1.UpdateOrderResponse.displayName = 'proto.proto.services.properties_svc.v1.UpdateOrderResponse';
}

/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.repeatedFields_ = [3];



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
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.CreatePropertySetRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    propertiesList: (f = jspb.Message.getRepeatedField(msg, 3)) == null ? undefined : f
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
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.CreatePropertySetRequest;
  return proto.proto.services.properties_svc.v1.CreatePropertySetRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.deserializeBinaryFromReader = function(msg, reader) {
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
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.addProperties(value);
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
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.CreatePropertySetRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getPropertiesList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      3,
      f
    );
  }
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * repeated string properties = 3;
 * @return {!Array<string>}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.getPropertiesList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 3));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.setPropertiesList = function(value) {
  return jspb.Message.setField(this, 3, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.addProperties = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 3, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertySetRequest.prototype.clearPropertiesList = function() {
  return this.setPropertiesList([]);
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
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.CreatePropertySetResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertySetResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    propertySetId: jspb.Message.getFieldWithDefault(msg, 1, "")
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
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetResponse}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.CreatePropertySetResponse;
  return proto.proto.services.properties_svc.v1.CreatePropertySetResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertySetResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetResponse}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setPropertySetId(value);
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
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.CreatePropertySetResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertySetResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPropertySetId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string property_set_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.prototype.getPropertySetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertySetResponse} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertySetResponse.prototype.setPropertySetId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.repeatedFields_ = [3,4];



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
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    setId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    addedPropertiesList: (f = jspb.Message.getRepeatedField(msg, 3)) == null ? undefined : f,
    removedPropertiesList: (f = jspb.Message.getRepeatedField(msg, 4)) == null ? undefined : f
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePropertySetRequest;
  return proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.addAddedProperties(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.addRemovedProperties(value);
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
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getSetId();
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
  f = message.getAddedPropertiesList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      3,
      f
    );
  }
  f = message.getRemovedPropertiesList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      4,
      f
    );
  }
};


/**
 * optional string set_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.setSetId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.setName = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.clearName = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.hasName = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * repeated string added_properties = 3;
 * @return {!Array<string>}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.getAddedPropertiesList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 3));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.setAddedPropertiesList = function(value) {
  return jspb.Message.setField(this, 3, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.addAddedProperties = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 3, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.clearAddedPropertiesList = function() {
  return this.setAddedPropertiesList([]);
};


/**
 * repeated string removed_properties = 4;
 * @return {!Array<string>}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.getRemovedPropertiesList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 4));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.setRemovedPropertiesList = function(value) {
  return jspb.Message.setField(this, 4, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.addRemovedProperties = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 4, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetRequest.prototype.clearRemovedPropertiesList = function() {
  return this.setRemovedPropertiesList([]);
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
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertySetResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetResponse}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePropertySetResponse;
  return proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertySetResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertySetResponse}
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertySetResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertySetResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.DeletePropertySetRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.DeletePropertySetRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    setId: jspb.Message.getFieldWithDefault(msg, 1, "")
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
 * @return {!proto.proto.services.properties_svc.v1.DeletePropertySetRequest}
 */
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.DeletePropertySetRequest;
  return proto.proto.services.properties_svc.v1.DeletePropertySetRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.DeletePropertySetRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.DeletePropertySetRequest}
 */
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
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
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.DeletePropertySetRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.DeletePropertySetRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getSetId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string set_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.DeletePropertySetRequest} returns this
 */
proto.proto.services.properties_svc.v1.DeletePropertySetRequest.prototype.setSetId = function(value) {
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
proto.proto.services.properties_svc.v1.DeletePropertySetResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.DeletePropertySetResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.DeletePropertySetResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.DeletePropertySetResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.properties_svc.v1.DeletePropertySetResponse}
 */
proto.proto.services.properties_svc.v1.DeletePropertySetResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.DeletePropertySetResponse;
  return proto.proto.services.properties_svc.v1.DeletePropertySetResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.DeletePropertySetResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.DeletePropertySetResponse}
 */
proto.proto.services.properties_svc.v1.DeletePropertySetResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.DeletePropertySetResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.DeletePropertySetResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.DeletePropertySetResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.DeletePropertySetResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.oneofGroups_ = [[8,9]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.FieldTypeDataCase = {
  FIELD_TYPE_DATA_NOT_SET: 0,
  NONE: 8,
  SELECT_DATA: 9
};

/**
 * @return {proto.proto.services.properties_svc.v1.CreatePropertyRequest.FieldTypeDataCase}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getFieldTypeDataCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.CreatePropertyRequest.FieldTypeDataCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.CreatePropertyRequest.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.CreatePropertyRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    context: jspb.Message.getFieldWithDefault(msg, 1, 0),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, 0),
    fieldType: jspb.Message.getFieldWithDefault(msg, 3, 0),
    name: jspb.Message.getFieldWithDefault(msg, 4, ""),
    description: jspb.Message.getFieldWithDefault(msg, 5, ""),
    setId: jspb.Message.getFieldWithDefault(msg, 6, ""),
    alwaysIncludeForCurrentContext: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    none: jspb.Message.getBooleanFieldWithDefault(msg, 8, false),
    selectData: (f = msg.getSelectData()) && proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.toObject(includeInstance, f)
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
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.CreatePropertyRequest;
  return proto.proto.services.properties_svc.v1.CreatePropertyRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {!proto.proto.services.properties_svc.v1.ViewContext} */ (reader.readEnum());
      msg.setContext(value);
      break;
    case 2:
      var value = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (reader.readEnum());
      msg.setSubjectType(value);
      break;
    case 3:
      var value = /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAlwaysIncludeForCurrentContext(value);
      break;
    case 8:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setNone(value);
      break;
    case 9:
      var value = new proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.deserializeBinaryFromReader);
      msg.setSelectData(value);
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.CreatePropertyRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getContext();
  if (f !== 0.0) {
    writer.writeEnum(
      1,
      f
    );
  }
  f = message.getSubjectType();
  if (f !== 0.0) {
    writer.writeEnum(
      2,
      f
    );
  }
  f = message.getFieldType();
  if (f !== 0.0) {
    writer.writeEnum(
      3,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
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
  f = /** @type {string} */ (jspb.Message.getField(message, 6));
  if (f != null) {
    writer.writeString(
      6,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 7));
  if (f != null) {
    writer.writeBool(
      7,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeBool(
      8,
      f
    );
  }
  f = message.getSelectData();
  if (f != null) {
    writer.writeMessage(
      9,
      f,
      proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.serializeBinaryToWriter
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.repeatedFields_ = [2];



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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.toObject = function(includeInstance, msg) {
  var f, obj = {
    allowFreetext: jspb.Message.getBooleanFieldWithDefault(msg, 1, false),
    optionsList: jspb.Message.toObjectList(msg.getOptionsList(),
    proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.toObject, includeInstance)
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
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData;
  return proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAllowFreetext(value);
      break;
    case 2:
      var value = new proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.deserializeBinaryFromReader);
      msg.addOptions(value);
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {boolean} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeBool(
      1,
      f
    );
  }
  f = message.getOptionsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.serializeBinaryToWriter
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    description: jspb.Message.getFieldWithDefault(msg, 2, "")
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
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption;
  return proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.serializeBinaryToWriter = function(message, writer) {
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
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string description = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional bool allow_freetext = 1;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.getAllowFreetext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 1, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.setAllowFreetext = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.clearAllowFreetext = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.hasAllowFreetext = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * repeated SelectOption options = 2;
 * @return {!Array<!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption>}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.getOptionsList = function() {
  return /** @type{!Array<!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption, 2));
};


/**
 * @param {!Array<!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption>} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} returns this
*/
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.setOptionsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption=} opt_value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.addOptions = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.prototype.clearOptionsList = function() {
  return this.setOptionsList([]);
};


/**
 * optional ViewContext context = 1;
 * @return {!proto.proto.services.properties_svc.v1.ViewContext}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getContext = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.ViewContext} */ (jspb.Message.getFieldWithDefault(this, 1, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.ViewContext} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setContext = function(value) {
  return jspb.Message.setProto3EnumField(this, 1, value);
};


/**
 * optional SubjectType subject_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.SubjectType}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getSubjectType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.SubjectType} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setSubjectType = function(value) {
  return jspb.Message.setProto3EnumField(this, 2, value);
};


/**
 * optional FieldType field_type = 3;
 * @return {!proto.proto.services.properties_svc.v1.FieldType}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.FieldType} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setFieldType = function(value) {
  return jspb.Message.setProto3EnumField(this, 3, value);
};


/**
 * optional string name = 4;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional string description = 5;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional string set_id = 6;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setSetId = function(value) {
  return jspb.Message.setField(this, 6, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.clearSetId = function() {
  return jspb.Message.setField(this, 6, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.hasSetId = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional bool always_include_for_current_context = 7;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getAlwaysIncludeForCurrentContext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setAlwaysIncludeForCurrentContext = function(value) {
  return jspb.Message.setField(this, 7, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.clearAlwaysIncludeForCurrentContext = function() {
  return jspb.Message.setField(this, 7, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.hasAlwaysIncludeForCurrentContext = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional bool none = 8;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getNone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 8, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setNone = function(value) {
  return jspb.Message.setOneofField(this, 8, proto.proto.services.properties_svc.v1.CreatePropertyRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.clearNone = function() {
  return jspb.Message.setOneofField(this, 8, proto.proto.services.properties_svc.v1.CreatePropertyRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.hasNone = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional SelectData select_data = 9;
 * @return {?proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.getSelectData = function() {
  return /** @type{?proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData} */ (
    jspb.Message.getWrapperField(this, proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData, 9));
};


/**
 * @param {?proto.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData|undefined} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
*/
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.setSelectData = function(value) {
  return jspb.Message.setOneofWrapperField(this, 9, proto.proto.services.properties_svc.v1.CreatePropertyRequest.oneofGroups_[0], value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.clearSelectData = function() {
  return this.setSelectData(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.CreatePropertyRequest.prototype.hasSelectData = function() {
  return jspb.Message.getField(this, 9) != null;
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
proto.proto.services.properties_svc.v1.CreatePropertyResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.CreatePropertyResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    propertyId: jspb.Message.getFieldWithDefault(msg, 1, "")
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
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyResponse}
 */
proto.proto.services.properties_svc.v1.CreatePropertyResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.CreatePropertyResponse;
  return proto.proto.services.properties_svc.v1.CreatePropertyResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyResponse}
 */
proto.proto.services.properties_svc.v1.CreatePropertyResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setPropertyId(value);
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
proto.proto.services.properties_svc.v1.CreatePropertyResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.CreatePropertyResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.CreatePropertyResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.CreatePropertyResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPropertyId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string property_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.CreatePropertyResponse.prototype.getPropertyId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.CreatePropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.CreatePropertyResponse.prototype.setPropertyId = function(value) {
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
proto.proto.services.properties_svc.v1.GetPropertyRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertyRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    context: jspb.Message.getFieldWithDefault(msg, 2, 0)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyRequest}
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertyRequest;
  return proto.proto.services.properties_svc.v1.GetPropertyRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyRequest}
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.proto.services.properties_svc.v1.ViewContext} */ (reader.readEnum());
      msg.setContext(value);
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
proto.proto.services.properties_svc.v1.GetPropertyRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertyRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getContext();
  if (f !== 0.0) {
    writer.writeEnum(
      2,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional ViewContext context = 2;
 * @return {!proto.proto.services.properties_svc.v1.ViewContext}
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.prototype.getContext = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.ViewContext} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.ViewContext} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyRequest.prototype.setContext = function(value) {
  return jspb.Message.setProto3EnumField(this, 2, value);
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.oneofGroups_ = [[9,10]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.FieldTypeDataCase = {
  FIELD_TYPE_DATA_NOT_SET: 0,
  NONE: 9,
  SELECT_DATA: 10
};

/**
 * @return {proto.proto.services.properties_svc.v1.GetPropertyResponse.FieldTypeDataCase}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getFieldTypeDataCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.GetPropertyResponse.FieldTypeDataCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.GetPropertyResponse.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertyResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, 0),
    fieldType: jspb.Message.getFieldWithDefault(msg, 3, 0),
    name: jspb.Message.getFieldWithDefault(msg, 4, ""),
    description: jspb.Message.getFieldWithDefault(msg, 5, ""),
    isArchived: jspb.Message.getBooleanFieldWithDefault(msg, 6, false),
    setId: jspb.Message.getFieldWithDefault(msg, 8, ""),
    none: jspb.Message.getBooleanFieldWithDefault(msg, 9, false),
    selectData: (f = msg.getSelectData()) && proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.toObject(includeInstance, f),
    alwaysIncludeForCurrentContext: jspb.Message.getBooleanFieldWithDefault(msg, 11, false)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertyResponse;
  return proto.proto.services.properties_svc.v1.GetPropertyResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (reader.readEnum());
      msg.setSubjectType(value);
      break;
    case 3:
      var value = /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 6:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsArchived(value);
      break;
    case 8:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
      break;
    case 9:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setNone(value);
      break;
    case 10:
      var value = new proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.deserializeBinaryFromReader);
      msg.setSelectData(value);
      break;
    case 11:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAlwaysIncludeForCurrentContext(value);
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertyResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getSubjectType();
  if (f !== 0.0) {
    writer.writeEnum(
      2,
      f
    );
  }
  f = message.getFieldType();
  if (f !== 0.0) {
    writer.writeEnum(
      3,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
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
  f = message.getIsArchived();
  if (f) {
    writer.writeBool(
      6,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeString(
      8,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 9));
  if (f != null) {
    writer.writeBool(
      9,
      f
    );
  }
  f = message.getSelectData();
  if (f != null) {
    writer.writeMessage(
      10,
      f,
      proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.serializeBinaryToWriter
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 11));
  if (f != null) {
    writer.writeBool(
      11,
      f
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.repeatedFields_ = [2];



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
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.toObject = function(includeInstance, msg) {
  var f, obj = {
    allowFreetext: jspb.Message.getBooleanFieldWithDefault(msg, 1, false),
    optionsList: jspb.Message.toObjectList(msg.getOptionsList(),
    proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.toObject, includeInstance)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData;
  return proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAllowFreetext(value);
      break;
    case 2:
      var value = new proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.deserializeBinaryFromReader);
      msg.addOptions(value);
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {boolean} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeBool(
      1,
      f
    );
  }
  f = message.getOptionsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.serializeBinaryToWriter
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    description: jspb.Message.getFieldWithDefault(msg, 2, "")
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption;
  return proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.serializeBinaryToWriter = function(message, writer) {
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
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string description = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional bool allow_freetext = 1;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.getAllowFreetext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 1, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.setAllowFreetext = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.clearAllowFreetext = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.hasAllowFreetext = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * repeated SelectOption options = 2;
 * @return {!Array<!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption>}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.getOptionsList = function() {
  return /** @type{!Array<!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption, 2));
};


/**
 * @param {!Array<!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption>} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} returns this
*/
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.setOptionsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption=} opt_value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.addOptions = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.prototype.clearOptionsList = function() {
  return this.setOptionsList([]);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional SubjectType subject_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.SubjectType}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getSubjectType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.SubjectType} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setSubjectType = function(value) {
  return jspb.Message.setProto3EnumField(this, 2, value);
};


/**
 * optional FieldType field_type = 3;
 * @return {!proto.proto.services.properties_svc.v1.FieldType}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.FieldType} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setFieldType = function(value) {
  return jspb.Message.setProto3EnumField(this, 3, value);
};


/**
 * optional string name = 4;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional string description = 5;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional bool is_archived = 6;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getIsArchived = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 6, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setIsArchived = function(value) {
  return jspb.Message.setProto3BooleanField(this, 6, value);
};


/**
 * optional string set_id = 8;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 8, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setSetId = function(value) {
  return jspb.Message.setField(this, 8, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.clearSetId = function() {
  return jspb.Message.setField(this, 8, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.hasSetId = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional bool none = 9;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getNone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 9, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setNone = function(value) {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.GetPropertyResponse.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.clearNone = function() {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.GetPropertyResponse.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.hasNone = function() {
  return jspb.Message.getField(this, 9) != null;
};


/**
 * optional SelectData select_data = 10;
 * @return {?proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getSelectData = function() {
  return /** @type{?proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData} */ (
    jspb.Message.getWrapperField(this, proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData, 10));
};


/**
 * @param {?proto.proto.services.properties_svc.v1.GetPropertyResponse.SelectData|undefined} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
*/
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setSelectData = function(value) {
  return jspb.Message.setOneofWrapperField(this, 10, proto.proto.services.properties_svc.v1.GetPropertyResponse.oneofGroups_[0], value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.clearSelectData = function() {
  return this.setSelectData(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.hasSelectData = function() {
  return jspb.Message.getField(this, 10) != null;
};


/**
 * optional bool always_include_for_current_context = 11;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.getAlwaysIncludeForCurrentContext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 11, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.setAlwaysIncludeForCurrentContext = function(value) {
  return jspb.Message.setField(this, 11, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.clearAlwaysIncludeForCurrentContext = function() {
  return jspb.Message.setField(this, 11, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertyResponse.prototype.hasAlwaysIncludeForCurrentContext = function() {
  return jspb.Message.getField(this, 11) != null;
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
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertiesRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    setId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, 0)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesRequest}
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertiesRequest;
  return proto.proto.services.properties_svc.v1.GetPropertiesRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesRequest}
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
      break;
    case 2:
      var value = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (reader.readEnum());
      msg.setSubjectType(value);
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
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertiesRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {string} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeString(
      1,
      f
    );
  }
  f = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getField(message, 2));
  if (f != null) {
    writer.writeEnum(
      2,
      f
    );
  }
};


/**
 * optional string set_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.setSetId = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.clearSetId = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.hasSetId = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * optional SubjectType subject_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.SubjectType}
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.getSubjectType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.SubjectType} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.setSubjectType = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.clearSubjectType = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesRequest.prototype.hasSubjectType = function() {
  return jspb.Message.getField(this, 2) != null;
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.repeatedFields_ = [1];



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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    propertiesList: jspb.Message.toObjectList(msg.getPropertiesList(),
    proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.toObject, includeInstance)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertiesResponse;
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.deserializeBinaryFromReader);
      msg.addProperties(value);
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPropertiesList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.serializeBinaryToWriter
    );
  }
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.oneofGroups_ = [[9,10]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.FieldTypeDataCase = {
  FIELD_TYPE_DATA_NOT_SET: 0,
  NONE: 9,
  SELECT_DATA: 10
};

/**
 * @return {proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.FieldTypeDataCase}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getFieldTypeDataCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.FieldTypeDataCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, 0),
    fieldType: jspb.Message.getFieldWithDefault(msg, 3, 0),
    name: jspb.Message.getFieldWithDefault(msg, 4, ""),
    description: jspb.Message.getFieldWithDefault(msg, 5, ""),
    isArchived: jspb.Message.getBooleanFieldWithDefault(msg, 6, false),
    setId: jspb.Message.getFieldWithDefault(msg, 8, ""),
    none: jspb.Message.getBooleanFieldWithDefault(msg, 9, false),
    selectData: (f = msg.getSelectData()) && proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.toObject(includeInstance, f),
    alwaysIncludeForCurrentContext: jspb.Message.getBooleanFieldWithDefault(msg, 11, false)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property;
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (reader.readEnum());
      msg.setSubjectType(value);
      break;
    case 3:
      var value = /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 6:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsArchived(value);
      break;
    case 8:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
      break;
    case 9:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setNone(value);
      break;
    case 10:
      var value = new proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.deserializeBinaryFromReader);
      msg.setSelectData(value);
      break;
    case 11:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAlwaysIncludeForCurrentContext(value);
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getSubjectType();
  if (f !== 0.0) {
    writer.writeEnum(
      2,
      f
    );
  }
  f = message.getFieldType();
  if (f !== 0.0) {
    writer.writeEnum(
      3,
      f
    );
  }
  f = message.getName();
  if (f.length > 0) {
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
  f = message.getIsArchived();
  if (f) {
    writer.writeBool(
      6,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeString(
      8,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 9));
  if (f != null) {
    writer.writeBool(
      9,
      f
    );
  }
  f = message.getSelectData();
  if (f != null) {
    writer.writeMessage(
      10,
      f,
      proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.serializeBinaryToWriter
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 11));
  if (f != null) {
    writer.writeBool(
      11,
      f
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.repeatedFields_ = [2];



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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.toObject = function(includeInstance, msg) {
  var f, obj = {
    allowFreetext: jspb.Message.getBooleanFieldWithDefault(msg, 1, false),
    optionsList: jspb.Message.toObjectList(msg.getOptionsList(),
    proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.toObject, includeInstance)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData;
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAllowFreetext(value);
      break;
    case 2:
      var value = new proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.deserializeBinaryFromReader);
      msg.addOptions(value);
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {boolean} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeBool(
      1,
      f
    );
  }
  f = message.getOptionsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.serializeBinaryToWriter
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    description: jspb.Message.getFieldWithDefault(msg, 2, ""),
    isCustom: jspb.Message.getBooleanFieldWithDefault(msg, 3, false)
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
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption;
  return proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsCustom(value);
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getIsCustom();
  if (f) {
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
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string description = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional bool is_custom = 3;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.getIsCustom = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption.prototype.setIsCustom = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional bool allow_freetext = 1;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.getAllowFreetext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 1, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.setAllowFreetext = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.clearAllowFreetext = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.hasAllowFreetext = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * repeated SelectOption options = 2;
 * @return {!Array<!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption>}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.getOptionsList = function() {
  return /** @type{!Array<!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption, 2));
};


/**
 * @param {!Array<!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption>} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} returns this
*/
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.setOptionsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption=} opt_value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.addOptions = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.prototype.clearOptionsList = function() {
  return this.setOptionsList([]);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional SubjectType subject_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.SubjectType}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getSubjectType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.SubjectType} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setSubjectType = function(value) {
  return jspb.Message.setProto3EnumField(this, 2, value);
};


/**
 * optional FieldType field_type = 3;
 * @return {!proto.proto.services.properties_svc.v1.FieldType}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.FieldType} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setFieldType = function(value) {
  return jspb.Message.setProto3EnumField(this, 3, value);
};


/**
 * optional string name = 4;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional string description = 5;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional bool is_archived = 6;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getIsArchived = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 6, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setIsArchived = function(value) {
  return jspb.Message.setProto3BooleanField(this, 6, value);
};


/**
 * optional string set_id = 8;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 8, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setSetId = function(value) {
  return jspb.Message.setField(this, 8, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.clearSetId = function() {
  return jspb.Message.setField(this, 8, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.hasSetId = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional bool none = 9;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getNone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 9, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setNone = function(value) {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.clearNone = function() {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.hasNone = function() {
  return jspb.Message.getField(this, 9) != null;
};


/**
 * optional SelectData select_data = 10;
 * @return {?proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getSelectData = function() {
  return /** @type{?proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData} */ (
    jspb.Message.getWrapperField(this, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData, 10));
};


/**
 * @param {?proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData|undefined} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
*/
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setSelectData = function(value) {
  return jspb.Message.setOneofWrapperField(this, 10, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.oneofGroups_[0], value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.clearSelectData = function() {
  return this.setSelectData(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.hasSelectData = function() {
  return jspb.Message.getField(this, 10) != null;
};


/**
 * optional bool always_include_for_current_context = 11;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.getAlwaysIncludeForCurrentContext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 11, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.setAlwaysIncludeForCurrentContext = function(value) {
  return jspb.Message.setField(this, 11, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.clearAlwaysIncludeForCurrentContext = function() {
  return jspb.Message.setField(this, 11, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property.prototype.hasAlwaysIncludeForCurrentContext = function() {
  return jspb.Message.getField(this, 11) != null;
};


/**
 * repeated Property properties = 1;
 * @return {!Array<!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property>}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.prototype.getPropertiesList = function() {
  return /** @type{!Array<!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property, 1));
};


/**
 * @param {!Array<!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property>} value
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse} returns this
*/
proto.proto.services.properties_svc.v1.GetPropertiesResponse.prototype.setPropertiesList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property=} opt_value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property}
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.prototype.addProperties = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.proto.services.properties_svc.v1.GetPropertiesResponse.Property, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.GetPropertiesResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetPropertiesResponse.prototype.clearPropertiesList = function() {
  return this.setPropertiesList([]);
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.oneofGroups_ = [[9,10]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.FieldTypeDataCase = {
  FIELD_TYPE_DATA_NOT_SET: 0,
  NONE: 9,
  SELECT_DATA: 10
};

/**
 * @return {proto.proto.services.properties_svc.v1.UpdatePropertyRequest.FieldTypeDataCase}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getFieldTypeDataCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.UpdatePropertyRequest.FieldTypeDataCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePropertyRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, 0),
    fieldType: jspb.Message.getFieldWithDefault(msg, 3, 0),
    name: jspb.Message.getFieldWithDefault(msg, 4, ""),
    description: jspb.Message.getFieldWithDefault(msg, 5, ""),
    isArchived: jspb.Message.getBooleanFieldWithDefault(msg, 6, false),
    setId: jspb.Message.getFieldWithDefault(msg, 8, ""),
    none: jspb.Message.getBooleanFieldWithDefault(msg, 9, false),
    selectData: (f = msg.getSelectData()) && proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.toObject(includeInstance, f)
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePropertyRequest;
  return proto.proto.services.properties_svc.v1.UpdatePropertyRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (reader.readEnum());
      msg.setSubjectType(value);
      break;
    case 3:
      var value = /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 6:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsArchived(value);
      break;
    case 8:
      var value = /** @type {string} */ (reader.readString());
      msg.setSetId(value);
      break;
    case 9:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setNone(value);
      break;
    case 10:
      var value = new proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.deserializeBinaryFromReader);
      msg.setSelectData(value);
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePropertyRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getField(message, 2));
  if (f != null) {
    writer.writeEnum(
      2,
      f
    );
  }
  f = /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (jspb.Message.getField(message, 3));
  if (f != null) {
    writer.writeEnum(
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
  f = /** @type {boolean} */ (jspb.Message.getField(message, 6));
  if (f != null) {
    writer.writeBool(
      6,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeString(
      8,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 9));
  if (f != null) {
    writer.writeBool(
      9,
      f
    );
  }
  f = message.getSelectData();
  if (f != null) {
    writer.writeMessage(
      10,
      f,
      proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.serializeBinaryToWriter
    );
  }
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.repeatedFields_ = [2,3];



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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.toObject = function(includeInstance, msg) {
  var f, obj = {
    allowFreetext: jspb.Message.getBooleanFieldWithDefault(msg, 1, false),
    removeOptionsList: (f = jspb.Message.getRepeatedField(msg, 2)) == null ? undefined : f,
    upsertOptionsList: jspb.Message.toObjectList(msg.getUpsertOptionsList(),
    proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.toObject, includeInstance)
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData;
  return proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setAllowFreetext(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.addRemoveOptions(value);
      break;
    case 3:
      var value = new proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.deserializeBinaryFromReader);
      msg.addUpsertOptions(value);
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {boolean} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeBool(
      1,
      f
    );
  }
  f = message.getRemoveOptionsList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      2,
      f
    );
  }
  f = message.getUpsertOptionsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      3,
      f,
      proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.serializeBinaryToWriter
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    description: jspb.Message.getFieldWithDefault(msg, 3, ""),
    isCustom: jspb.Message.getBooleanFieldWithDefault(msg, 4, false)
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption;
  return proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsCustom(value);
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
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.serializeBinaryToWriter = function(message, writer) {
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
  f = /** @type {boolean} */ (jspb.Message.getField(message, 4));
  if (f != null) {
    writer.writeBool(
      4,
      f
    );
  }
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.setName = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.clearName = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.hasName = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional string description = 3;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 3, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 3, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional bool is_custom = 4;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.getIsCustom = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 4, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.setIsCustom = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.clearIsCustom = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption.prototype.hasIsCustom = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional bool allow_freetext = 1;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.getAllowFreetext = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 1, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.setAllowFreetext = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.clearAllowFreetext = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.hasAllowFreetext = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * repeated string remove_options = 2;
 * @return {!Array<string>}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.getRemoveOptionsList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 2));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.setRemoveOptionsList = function(value) {
  return jspb.Message.setField(this, 2, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.addRemoveOptions = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 2, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.clearRemoveOptionsList = function() {
  return this.setRemoveOptionsList([]);
};


/**
 * repeated SelectOption upsert_options = 3;
 * @return {!Array<!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption>}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.getUpsertOptionsList = function() {
  return /** @type{!Array<!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption, 3));
};


/**
 * @param {!Array<!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption>} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
*/
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.setUpsertOptionsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 3, value);
};


/**
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption=} opt_value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.addUpsertOptions = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 3, opt_value, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.prototype.clearUpsertOptionsList = function() {
  return this.setUpsertOptionsList([]);
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional SubjectType subject_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.SubjectType}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getSubjectType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.SubjectType} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setSubjectType = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearSubjectType = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasSubjectType = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional FieldType field_type = 3;
 * @return {!proto.proto.services.properties_svc.v1.FieldType}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.FieldType} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setFieldType = function(value) {
  return jspb.Message.setField(this, 3, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearFieldType = function() {
  return jspb.Message.setField(this, 3, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasFieldType = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional string name = 4;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setName = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearName = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasName = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional string description = 5;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional bool is_archived = 6;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getIsArchived = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 6, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setIsArchived = function(value) {
  return jspb.Message.setField(this, 6, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearIsArchived = function() {
  return jspb.Message.setField(this, 6, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasIsArchived = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional string set_id = 8;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getSetId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 8, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setSetId = function(value) {
  return jspb.Message.setField(this, 8, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearSetId = function() {
  return jspb.Message.setField(this, 8, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasSetId = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional bool none = 9;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getNone = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 9, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setNone = function(value) {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearNone = function() {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasNone = function() {
  return jspb.Message.getField(this, 9) != null;
};


/**
 * optional SelectData select_data = 10;
 * @return {?proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.getSelectData = function() {
  return /** @type{?proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData} */ (
    jspb.Message.getWrapperField(this, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData, 10));
};


/**
 * @param {?proto.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData|undefined} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
*/
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.setSelectData = function(value) {
  return jspb.Message.setOneofWrapperField(this, 10, proto.proto.services.properties_svc.v1.UpdatePropertyRequest.oneofGroups_[0], value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.clearSelectData = function() {
  return this.setSelectData(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyRequest.prototype.hasSelectData = function() {
  return jspb.Message.getField(this, 10) != null;
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
proto.proto.services.properties_svc.v1.UpdatePropertyResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePropertyResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyResponse}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePropertyResponse;
  return proto.proto.services.properties_svc.v1.UpdatePropertyResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePropertyResponse}
 */
proto.proto.services.properties_svc.v1.UpdatePropertyResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.UpdatePropertyResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePropertyResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePropertyResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePropertyResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_ = [[4,5,6,7,8,9,10]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.ValueCase = {
  VALUE_NOT_SET: 0,
  IS_UNDEFINED: 4,
  TEXT_VALUE: 5,
  NUMBER_VALUE: 6,
  BOOL_VALUE: 7,
  DATE_VALUE: 8,
  DATE_TIME_VALUE: 9,
  SELECT_VALUE: 10
};

/**
 * @return {proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.ValueCase}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getValueCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.ValueCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    subjectId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, 0),
    propertyId: jspb.Message.getFieldWithDefault(msg, 3, ""),
    isUndefined: jspb.Message.getBooleanFieldWithDefault(msg, 4, false),
    textValue: jspb.Message.getFieldWithDefault(msg, 5, ""),
    numberValue: jspb.Message.getFloatingPointFieldWithDefault(msg, 6, 0.0),
    boolValue: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    dateValue: jspb.Message.getFieldWithDefault(msg, 8, ""),
    dateTimeValue: jspb.Message.getFieldWithDefault(msg, 9, ""),
    selectValue: jspb.Message.getFieldWithDefault(msg, 10, "")
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
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.AttachPropertyValueRequest;
  return proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setSubjectId(value);
      break;
    case 2:
      var value = /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (reader.readEnum());
      msg.setSubjectType(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setPropertyId(value);
      break;
    case 4:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsUndefined(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setTextValue(value);
      break;
    case 6:
      var value = /** @type {number} */ (reader.readFloat());
      msg.setNumberValue(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setBoolValue(value);
      break;
    case 8:
      var value = /** @type {string} */ (reader.readString());
      msg.setDateValue(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setDateTimeValue(value);
      break;
    case 10:
      var value = /** @type {string} */ (reader.readString());
      msg.setSelectValue(value);
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
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getSubjectId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getSubjectType();
  if (f !== 0.0) {
    writer.writeEnum(
      2,
      f
    );
  }
  f = message.getPropertyId();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 4));
  if (f != null) {
    writer.writeBool(
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
  f = /** @type {number} */ (jspb.Message.getField(message, 6));
  if (f != null) {
    writer.writeFloat(
      6,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 7));
  if (f != null) {
    writer.writeBool(
      7,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeString(
      8,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 9));
  if (f != null) {
    writer.writeString(
      9,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 10));
  if (f != null) {
    writer.writeString(
      10,
      f
    );
  }
};


/**
 * optional string subject_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getSubjectId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setSubjectId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional SubjectType subject_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.SubjectType}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getSubjectType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.SubjectType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.SubjectType} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setSubjectType = function(value) {
  return jspb.Message.setProto3EnumField(this, 2, value);
};


/**
 * optional string property_id = 3;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getPropertyId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setPropertyId = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional bool is_undefined = 4;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getIsUndefined = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 4, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setIsUndefined = function(value) {
  return jspb.Message.setOneofField(this, 4, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearIsUndefined = function() {
  return jspb.Message.setOneofField(this, 4, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasIsUndefined = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional string text_value = 5;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getTextValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setTextValue = function(value) {
  return jspb.Message.setOneofField(this, 5, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearTextValue = function() {
  return jspb.Message.setOneofField(this, 5, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasTextValue = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional float number_value = 6;
 * @return {number}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getNumberValue = function() {
  return /** @type {number} */ (jspb.Message.getFloatingPointFieldWithDefault(this, 6, 0.0));
};


/**
 * @param {number} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setNumberValue = function(value) {
  return jspb.Message.setOneofField(this, 6, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearNumberValue = function() {
  return jspb.Message.setOneofField(this, 6, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasNumberValue = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional bool bool_value = 7;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getBoolValue = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setBoolValue = function(value) {
  return jspb.Message.setOneofField(this, 7, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearBoolValue = function() {
  return jspb.Message.setOneofField(this, 7, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasBoolValue = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional string date_value = 8;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getDateValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 8, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setDateValue = function(value) {
  return jspb.Message.setOneofField(this, 8, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearDateValue = function() {
  return jspb.Message.setOneofField(this, 8, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasDateValue = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional string date_time_value = 9;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getDateTimeValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setDateTimeValue = function(value) {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearDateTimeValue = function() {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasDateTimeValue = function() {
  return jspb.Message.getField(this, 9) != null;
};


/**
 * optional string select_value = 10;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.getSelectValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 10, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.setSelectValue = function(value) {
  return jspb.Message.setOneofField(this, 10, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueRequest} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.clearSelectValue = function() {
  return jspb.Message.setOneofField(this, 10, proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueRequest.prototype.hasSelectValue = function() {
  return jspb.Message.getField(this, 10) != null;
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
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.AttachPropertyValueResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    propertyValueId: jspb.Message.getFieldWithDefault(msg, 1, "")
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
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueResponse}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.AttachPropertyValueResponse;
  return proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.AttachPropertyValueResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueResponse}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setPropertyValueId(value);
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
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.AttachPropertyValueResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPropertyValueId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string property_value_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.prototype.getPropertyValueId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.AttachPropertyValueResponse} returns this
 */
proto.proto.services.properties_svc.v1.AttachPropertyValueResponse.prototype.setPropertyValueId = function(value) {
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    subjectId: jspb.Message.getFieldWithDefault(msg, 1, "")
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
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest;
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setSubjectId(value);
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getSubjectId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string subject_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.prototype.getSubjectId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesRequest.prototype.setSubjectId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.repeatedFields_ = [1];



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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    valuesList: jspb.Message.toObjectList(msg.getValuesList(),
    proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.toObject, includeInstance)
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
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse;
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = new proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.deserializeBinaryFromReader);
      msg.addValues(value);
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getValuesList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      1,
      f,
      proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.serializeBinaryToWriter
    );
  }
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_ = [[8,9,10,11,12,13,14]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.ValueCase = {
  VALUE_NOT_SET: 0,
  IS_UNDEFINED: 8,
  TEXT_VALUE: 9,
  NUMBER_VALUE: 10,
  BOOL_VALUE: 11,
  DATE_VALUE: 12,
  DATE_TIME_VALUE: 13,
  SELECT_VALUE: 14
};

/**
 * @return {proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.ValueCase}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getValueCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.ValueCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.toObject = function(includeInstance, msg) {
  var f, obj = {
    propertyId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    fieldType: jspb.Message.getFieldWithDefault(msg, 2, 0),
    name: jspb.Message.getFieldWithDefault(msg, 3, ""),
    description: jspb.Message.getFieldWithDefault(msg, 4, ""),
    isArchived: jspb.Message.getBooleanFieldWithDefault(msg, 5, false),
    set: (f = msg.getSet()) && proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.toObject(includeInstance, f),
    isUndefined: jspb.Message.getBooleanFieldWithDefault(msg, 8, false),
    textValue: jspb.Message.getFieldWithDefault(msg, 9, ""),
    numberValue: jspb.Message.getFloatingPointFieldWithDefault(msg, 10, 0.0),
    boolValue: jspb.Message.getBooleanFieldWithDefault(msg, 11, false),
    dateValue: jspb.Message.getFieldWithDefault(msg, 12, ""),
    dateTimeValue: jspb.Message.getFieldWithDefault(msg, 13, ""),
    selectValue: jspb.Message.getFieldWithDefault(msg, 14, "")
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
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value;
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setPropertyId(value);
      break;
    case 2:
      var value = /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setName(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 5:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsArchived(value);
      break;
    case 7:
      var value = new proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set;
      reader.readMessage(value,proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.deserializeBinaryFromReader);
      msg.setSet(value);
      break;
    case 8:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsUndefined(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setTextValue(value);
      break;
    case 10:
      var value = /** @type {number} */ (reader.readFloat());
      msg.setNumberValue(value);
      break;
    case 11:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setBoolValue(value);
      break;
    case 12:
      var value = /** @type {string} */ (reader.readString());
      msg.setDateValue(value);
      break;
    case 13:
      var value = /** @type {string} */ (reader.readString());
      msg.setDateTimeValue(value);
      break;
    case 14:
      var value = /** @type {string} */ (reader.readString());
      msg.setSelectValue(value);
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPropertyId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getFieldType();
  if (f !== 0.0) {
    writer.writeEnum(
      2,
      f
    );
  }
  f = message.getName();
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
  f = message.getIsArchived();
  if (f) {
    writer.writeBool(
      5,
      f
    );
  }
  f = message.getSet();
  if (f != null) {
    writer.writeMessage(
      7,
      f,
      proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.serializeBinaryToWriter
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeBool(
      8,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 9));
  if (f != null) {
    writer.writeString(
      9,
      f
    );
  }
  f = /** @type {number} */ (jspb.Message.getField(message, 10));
  if (f != null) {
    writer.writeFloat(
      10,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 11));
  if (f != null) {
    writer.writeBool(
      11,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 12));
  if (f != null) {
    writer.writeString(
      12,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 13));
  if (f != null) {
    writer.writeString(
      13,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 14));
  if (f != null) {
    writer.writeString(
      14,
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set;
  return proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.serializeBinaryToWriter = function(message, writer) {
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
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string property_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getPropertyId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setPropertyId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional FieldType field_type = 2;
 * @return {!proto.proto.services.properties_svc.v1.FieldType}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.properties_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 2, 0));
};


/**
 * @param {!proto.proto.services.properties_svc.v1.FieldType} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setFieldType = function(value) {
  return jspb.Message.setProto3EnumField(this, 2, value);
};


/**
 * optional string name = 3;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string description = 4;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional bool is_archived = 5;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getIsArchived = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 5, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setIsArchived = function(value) {
  return jspb.Message.setProto3BooleanField(this, 5, value);
};


/**
 * optional Set set = 7;
 * @return {?proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getSet = function() {
  return /** @type{?proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set} */ (
    jspb.Message.getWrapperField(this, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set, 7));
};


/**
 * @param {?proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set|undefined} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
*/
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setSet = function(value) {
  return jspb.Message.setWrapperField(this, 7, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearSet = function() {
  return this.setSet(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasSet = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional bool is_undefined = 8;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getIsUndefined = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 8, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setIsUndefined = function(value) {
  return jspb.Message.setOneofField(this, 8, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearIsUndefined = function() {
  return jspb.Message.setOneofField(this, 8, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasIsUndefined = function() {
  return jspb.Message.getField(this, 8) != null;
};


/**
 * optional string text_value = 9;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getTextValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setTextValue = function(value) {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearTextValue = function() {
  return jspb.Message.setOneofField(this, 9, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasTextValue = function() {
  return jspb.Message.getField(this, 9) != null;
};


/**
 * optional float number_value = 10;
 * @return {number}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getNumberValue = function() {
  return /** @type {number} */ (jspb.Message.getFloatingPointFieldWithDefault(this, 10, 0.0));
};


/**
 * @param {number} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setNumberValue = function(value) {
  return jspb.Message.setOneofField(this, 10, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearNumberValue = function() {
  return jspb.Message.setOneofField(this, 10, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasNumberValue = function() {
  return jspb.Message.getField(this, 10) != null;
};


/**
 * optional bool bool_value = 11;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getBoolValue = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 11, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setBoolValue = function(value) {
  return jspb.Message.setOneofField(this, 11, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearBoolValue = function() {
  return jspb.Message.setOneofField(this, 11, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasBoolValue = function() {
  return jspb.Message.getField(this, 11) != null;
};


/**
 * optional string date_value = 12;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getDateValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 12, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setDateValue = function(value) {
  return jspb.Message.setOneofField(this, 12, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearDateValue = function() {
  return jspb.Message.setOneofField(this, 12, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasDateValue = function() {
  return jspb.Message.getField(this, 12) != null;
};


/**
 * optional string date_time_value = 13;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getDateTimeValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 13, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setDateTimeValue = function(value) {
  return jspb.Message.setOneofField(this, 13, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearDateTimeValue = function() {
  return jspb.Message.setOneofField(this, 13, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasDateTimeValue = function() {
  return jspb.Message.getField(this, 13) != null;
};


/**
 * optional string select_value = 14;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.getSelectValue = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 14, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.setSelectValue = function(value) {
  return jspb.Message.setOneofField(this, 14, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.clearSelectValue = function() {
  return jspb.Message.setOneofField(this, 14, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.prototype.hasSelectValue = function() {
  return jspb.Message.getField(this, 14) != null;
};


/**
 * repeated Value values = 1;
 * @return {!Array<!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value>}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.prototype.getValuesList = function() {
  return /** @type{!Array<!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value, 1));
};


/**
 * @param {!Array<!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value>} value
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse} returns this
*/
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.prototype.setValuesList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 1, value);
};


/**
 * @param {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value=} opt_value
 * @param {number=} opt_index
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value}
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.prototype.addValues = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 1, opt_value, proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse} returns this
 */
proto.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.prototype.clearValuesList = function() {
  return this.setValuesList([]);
};



/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_ = [[3,4]];

/**
 * @enum {number}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.SoftRequiredCase = {
  SOFT_REQUIRED_NOT_SET: 0,
  RESET_SOFT_REQUIRED: 3,
  SET_SOFT_REQUIRED: 4
};

/**
 * @return {proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.SoftRequiredCase}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getSoftRequiredCase = function() {
  return /** @type {proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.SoftRequiredCase} */(jspb.Message.computeOneofCase(this, proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_[0]));
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
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    wardId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    patientId: jspb.Message.getFieldWithDefault(msg, 2, ""),
    resetSoftRequired: jspb.Message.getBooleanFieldWithDefault(msg, 3, false),
    setSoftRequired: jspb.Message.getBooleanFieldWithDefault(msg, 4, false),
    appendToAlwaysInclude: jspb.Message.getFieldWithDefault(msg, 5, ""),
    removeFromAlwaysInclude: jspb.Message.getFieldWithDefault(msg, 6, ""),
    appendToDontAlwaysInclude: jspb.Message.getFieldWithDefault(msg, 7, ""),
    removeFromDontAlwaysInclude: jspb.Message.getFieldWithDefault(msg, 8, "")
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest;
  return proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.deserializeBinaryFromReader = function(msg, reader) {
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
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setPatientId(value);
      break;
    case 3:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setResetSoftRequired(value);
      break;
    case 4:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setSetSoftRequired(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setAppendToAlwaysInclude(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setRemoveFromAlwaysInclude(value);
      break;
    case 7:
      var value = /** @type {string} */ (reader.readString());
      msg.setAppendToDontAlwaysInclude(value);
      break;
    case 8:
      var value = /** @type {string} */ (reader.readString());
      msg.setRemoveFromDontAlwaysInclude(value);
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
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {string} */ (jspb.Message.getField(message, 1));
  if (f != null) {
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
  f = /** @type {boolean} */ (jspb.Message.getField(message, 3));
  if (f != null) {
    writer.writeBool(
      3,
      f
    );
  }
  f = /** @type {boolean} */ (jspb.Message.getField(message, 4));
  if (f != null) {
    writer.writeBool(
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
  f = /** @type {string} */ (jspb.Message.getField(message, 6));
  if (f != null) {
    writer.writeString(
      6,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 7));
  if (f != null) {
    writer.writeString(
      7,
      f
    );
  }
  f = /** @type {string} */ (jspb.Message.getField(message, 8));
  if (f != null) {
    writer.writeString(
      8,
      f
    );
  }
};


/**
 * optional string ward_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setWardId = function(value) {
  return jspb.Message.setField(this, 1, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearWardId = function() {
  return jspb.Message.setField(this, 1, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasWardId = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * optional string patient_id = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getPatientId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setPatientId = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearPatientId = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasPatientId = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional bool reset_soft_required = 3;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getResetSoftRequired = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setResetSoftRequired = function(value) {
  return jspb.Message.setOneofField(this, 3, proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearResetSoftRequired = function() {
  return jspb.Message.setOneofField(this, 3, proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasResetSoftRequired = function() {
  return jspb.Message.getField(this, 3) != null;
};


/**
 * optional bool set_soft_required = 4;
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getSetSoftRequired = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 4, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setSetSoftRequired = function(value) {
  return jspb.Message.setOneofField(this, 4, proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearSetSoftRequired = function() {
  return jspb.Message.setOneofField(this, 4, proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasSetSoftRequired = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional string append_to_always_include = 5;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getAppendToAlwaysInclude = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setAppendToAlwaysInclude = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearAppendToAlwaysInclude = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasAppendToAlwaysInclude = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional string remove_from_always_include = 6;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getRemoveFromAlwaysInclude = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setRemoveFromAlwaysInclude = function(value) {
  return jspb.Message.setField(this, 6, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearRemoveFromAlwaysInclude = function() {
  return jspb.Message.setField(this, 6, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasRemoveFromAlwaysInclude = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional string append_to_dont_always_include = 7;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getAppendToDontAlwaysInclude = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 7, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setAppendToDontAlwaysInclude = function(value) {
  return jspb.Message.setField(this, 7, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearAppendToDontAlwaysInclude = function() {
  return jspb.Message.setField(this, 7, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasAppendToDontAlwaysInclude = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional string remove_from_dont_always_include = 8;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.getRemoveFromDontAlwaysInclude = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 8, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.setRemoveFromDontAlwaysInclude = function(value) {
  return jspb.Message.setField(this, 8, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.clearRemoveFromDontAlwaysInclude = function() {
  return jspb.Message.setField(this, 8, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleRequest.prototype.hasRemoveFromDontAlwaysInclude = function() {
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
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse;
  return proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse}
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdatePatientPropertyViewRuleResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdateOrderRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdateOrderRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    propertyId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    prevNeighbor: jspb.Message.getFieldWithDefault(msg, 2, "")
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
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderRequest}
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdateOrderRequest;
  return proto.proto.services.properties_svc.v1.UpdateOrderRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdateOrderRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderRequest}
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setPropertyId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setPrevNeighbor(value);
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
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdateOrderRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdateOrderRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPropertyId();
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
 * optional string property_id = 1;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.getPropertyId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.setPropertyId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string prev_neighbor = 2;
 * @return {string}
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.getPrevNeighbor = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.setPrevNeighbor = function(value) {
  return jspb.Message.setField(this, 2, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderRequest} returns this
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.clearPrevNeighbor = function() {
  return jspb.Message.setField(this, 2, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.properties_svc.v1.UpdateOrderRequest.prototype.hasPrevNeighbor = function() {
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
proto.proto.services.properties_svc.v1.UpdateOrderResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.properties_svc.v1.UpdateOrderResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.properties_svc.v1.UpdateOrderResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdateOrderResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderResponse}
 */
proto.proto.services.properties_svc.v1.UpdateOrderResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.properties_svc.v1.UpdateOrderResponse;
  return proto.proto.services.properties_svc.v1.UpdateOrderResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.properties_svc.v1.UpdateOrderResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.properties_svc.v1.UpdateOrderResponse}
 */
proto.proto.services.properties_svc.v1.UpdateOrderResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.properties_svc.v1.UpdateOrderResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.properties_svc.v1.UpdateOrderResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.properties_svc.v1.UpdateOrderResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.properties_svc.v1.UpdateOrderResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
};


goog.object.extend(exports, proto.proto.services.properties_svc.v1);
