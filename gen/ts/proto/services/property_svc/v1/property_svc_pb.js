// source: proto/services/property_svc/v1/property_svc.proto
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

goog.exportSymbol('proto.proto.services.property_svc.v1.CreatePropertyRequest', null, global);
goog.exportSymbol('proto.proto.services.property_svc.v1.CreatePropertyResponse', null, global);
goog.exportSymbol('proto.proto.services.property_svc.v1.FieldType', null, global);
goog.exportSymbol('proto.proto.services.property_svc.v1.GetPropertyRequest', null, global);
goog.exportSymbol('proto.proto.services.property_svc.v1.GetPropertyResponse', null, global);
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
proto.proto.services.property_svc.v1.CreatePropertyRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.property_svc.v1.CreatePropertyRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.property_svc.v1.CreatePropertyRequest.displayName = 'proto.proto.services.property_svc.v1.CreatePropertyRequest';
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
proto.proto.services.property_svc.v1.CreatePropertyResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.property_svc.v1.CreatePropertyResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.property_svc.v1.CreatePropertyResponse.displayName = 'proto.proto.services.property_svc.v1.CreatePropertyResponse';
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
proto.proto.services.property_svc.v1.GetPropertyRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.property_svc.v1.GetPropertyRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.property_svc.v1.GetPropertyRequest.displayName = 'proto.proto.services.property_svc.v1.GetPropertyRequest';
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
proto.proto.services.property_svc.v1.GetPropertyResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.property_svc.v1.GetPropertyResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.property_svc.v1.GetPropertyResponse.displayName = 'proto.proto.services.property_svc.v1.GetPropertyResponse';
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
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.property_svc.v1.CreatePropertyRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.property_svc.v1.CreatePropertyRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    subjectId: jspb.Message.getFieldWithDefault(msg, 1, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 2, ""),
    fieldType: jspb.Message.getFieldWithDefault(msg, 3, 0),
    name: jspb.Message.getFieldWithDefault(msg, 4, "")
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
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyRequest}
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.property_svc.v1.CreatePropertyRequest;
  return proto.proto.services.property_svc.v1.CreatePropertyRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.property_svc.v1.CreatePropertyRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyRequest}
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.deserializeBinaryFromReader = function(msg, reader) {
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
      var value = /** @type {string} */ (reader.readString());
      msg.setSubjectType(value);
      break;
    case 3:
      var value = /** @type {!proto.proto.services.property_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 4:
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
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.property_svc.v1.CreatePropertyRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.property_svc.v1.CreatePropertyRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getSubjectId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getSubjectType();
  if (f.length > 0) {
    writer.writeString(
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
};


/**
 * optional string subject_id = 1;
 * @return {string}
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.getSubjectId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.setSubjectId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string subject_type = 2;
 * @return {string}
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.getSubjectType = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.setSubjectType = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional FieldType field_type = 3;
 * @return {!proto.proto.services.property_svc.v1.FieldType}
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.property_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/**
 * @param {!proto.proto.services.property_svc.v1.FieldType} value
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.setFieldType = function(value) {
  return jspb.Message.setProto3EnumField(this, 3, value);
};


/**
 * optional string name = 4;
 * @return {string}
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyRequest} returns this
 */
proto.proto.services.property_svc.v1.CreatePropertyRequest.prototype.setName = function(value) {
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
proto.proto.services.property_svc.v1.CreatePropertyResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.property_svc.v1.CreatePropertyResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.property_svc.v1.CreatePropertyResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.CreatePropertyResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyResponse}
 */
proto.proto.services.property_svc.v1.CreatePropertyResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.property_svc.v1.CreatePropertyResponse;
  return proto.proto.services.property_svc.v1.CreatePropertyResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.property_svc.v1.CreatePropertyResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyResponse}
 */
proto.proto.services.property_svc.v1.CreatePropertyResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.property_svc.v1.CreatePropertyResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.property_svc.v1.CreatePropertyResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.property_svc.v1.CreatePropertyResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.CreatePropertyResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.proto.services.property_svc.v1.CreatePropertyResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.CreatePropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.CreatePropertyResponse.prototype.setId = function(value) {
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
proto.proto.services.property_svc.v1.GetPropertyRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.property_svc.v1.GetPropertyRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.property_svc.v1.GetPropertyRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.GetPropertyRequest.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.property_svc.v1.GetPropertyRequest}
 */
proto.proto.services.property_svc.v1.GetPropertyRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.property_svc.v1.GetPropertyRequest;
  return proto.proto.services.property_svc.v1.GetPropertyRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.property_svc.v1.GetPropertyRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.property_svc.v1.GetPropertyRequest}
 */
proto.proto.services.property_svc.v1.GetPropertyRequest.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.property_svc.v1.GetPropertyRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.property_svc.v1.GetPropertyRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.property_svc.v1.GetPropertyRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.GetPropertyRequest.serializeBinaryToWriter = function(message, writer) {
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
proto.proto.services.property_svc.v1.GetPropertyRequest.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyRequest} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyRequest.prototype.setId = function(value) {
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
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.property_svc.v1.GetPropertyResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.property_svc.v1.GetPropertyResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    name: jspb.Message.getFieldWithDefault(msg, 2, ""),
    subjectType: jspb.Message.getFieldWithDefault(msg, 3, ""),
    subjectId: jspb.Message.getFieldWithDefault(msg, 4, ""),
    fieldType: jspb.Message.getFieldWithDefault(msg, 5, 0),
    description: jspb.Message.getFieldWithDefault(msg, 6, ""),
    isArchived: jspb.Message.getBooleanFieldWithDefault(msg, 7, false),
    isSoftRequired: jspb.Message.getBooleanFieldWithDefault(msg, 8, false)
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
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.property_svc.v1.GetPropertyResponse;
  return proto.proto.services.property_svc.v1.GetPropertyResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.property_svc.v1.GetPropertyResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.deserializeBinaryFromReader = function(msg, reader) {
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
      msg.setSubjectType(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setSubjectId(value);
      break;
    case 5:
      var value = /** @type {!proto.proto.services.property_svc.v1.FieldType} */ (reader.readEnum());
      msg.setFieldType(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setDescription(value);
      break;
    case 7:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsArchived(value);
      break;
    case 8:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setIsSoftRequired(value);
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
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.property_svc.v1.GetPropertyResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.property_svc.v1.GetPropertyResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.serializeBinaryToWriter = function(message, writer) {
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
  f = message.getSubjectType();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getSubjectId();
  if (f.length > 0) {
    writer.writeString(
      4,
      f
    );
  }
  f = message.getFieldType();
  if (f !== 0.0) {
    writer.writeEnum(
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
};


/**
 * optional string id = 1;
 * @return {string}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 2;
 * @return {string}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string subject_type = 3;
 * @return {string}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getSubjectType = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setSubjectType = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string subject_id = 4;
 * @return {string}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getSubjectId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setSubjectId = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


/**
 * optional FieldType field_type = 5;
 * @return {!proto.proto.services.property_svc.v1.FieldType}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getFieldType = function() {
  return /** @type {!proto.proto.services.property_svc.v1.FieldType} */ (jspb.Message.getFieldWithDefault(this, 5, 0));
};


/**
 * @param {!proto.proto.services.property_svc.v1.FieldType} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setFieldType = function(value) {
  return jspb.Message.setProto3EnumField(this, 5, value);
};


/**
 * optional string description = 6;
 * @return {string}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setDescription = function(value) {
  return jspb.Message.setField(this, 6, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.clearDescription = function() {
  return jspb.Message.setField(this, 6, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.hasDescription = function() {
  return jspb.Message.getField(this, 6) != null;
};


/**
 * optional bool is_archived = 7;
 * @return {boolean}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getIsArchived = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 7, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setIsArchived = function(value) {
  return jspb.Message.setField(this, 7, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.clearIsArchived = function() {
  return jspb.Message.setField(this, 7, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.hasIsArchived = function() {
  return jspb.Message.getField(this, 7) != null;
};


/**
 * optional bool is_soft_required = 8;
 * @return {boolean}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.getIsSoftRequired = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 8, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.setIsSoftRequired = function(value) {
  return jspb.Message.setField(this, 8, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.property_svc.v1.GetPropertyResponse} returns this
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.clearIsSoftRequired = function() {
  return jspb.Message.setField(this, 8, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.property_svc.v1.GetPropertyResponse.prototype.hasIsSoftRequired = function() {
  return jspb.Message.getField(this, 8) != null;
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
  FIELD_TYPE_DATETIME: 5,
  FIELD_TYPE_SELECT: 6
};

goog.object.extend(exports, proto.proto.services.property_svc.v1);
