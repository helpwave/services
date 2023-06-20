// source: proto/services/task_svc/v1/task_template_svc.proto
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

goog.exportSymbol('proto.proto.services.task_svc.v1.CreateTaskTemplateRequest', null, global);
goog.exportSymbol('proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask', null, global);
goog.exportSymbol('proto.proto.services.task_svc.v1.CreateTaskTemplateResponse', null, global);
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
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.task_svc.v1.CreateTaskTemplateRequest, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.displayName = 'proto.proto.services.task_svc.v1.CreateTaskTemplateRequest';
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
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.displayName = 'proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask';
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
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.proto.services.task_svc.v1.CreateTaskTemplateResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.displayName = 'proto.proto.services.task_svc.v1.CreateTaskTemplateResponse';
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
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, ""),
    description: jspb.Message.getFieldWithDefault(msg, 2, ""),
    pb_public: jspb.Message.getBooleanFieldWithDefault(msg, 3, false),
    userId: jspb.Message.getFieldWithDefault(msg, 4, ""),
    wardId: jspb.Message.getFieldWithDefault(msg, 5, ""),
    subtasks: (f = msg.getSubtasks()) && proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.toObject(includeInstance, f)
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
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.task_svc.v1.CreateTaskTemplateRequest;
  return proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.deserializeBinaryFromReader = function(msg, reader) {
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
      msg.setPublic(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setUserId(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setWardId(value);
      break;
    case 6:
      var value = new proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask;
      reader.readMessage(value,proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.deserializeBinaryFromReader);
      msg.setSubtasks(value);
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
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getDescription();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getPublic();
  if (f) {
    writer.writeBool(
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
  f = message.getSubtasks();
  if (f != null) {
    writer.writeMessage(
      6,
      f,
      proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.serializeBinaryToWriter
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
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.toObject = function(includeInstance, msg) {
  var f, obj = {
    name: jspb.Message.getFieldWithDefault(msg, 1, "")
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
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask;
  return proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getName();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string name = 1;
 * @return {string}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.getName = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.setName = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string description = 2;
 * @return {string}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.getDescription = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.setDescription = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional bool public = 3;
 * @return {boolean}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.getPublic = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 3, false));
};


/**
 * @param {boolean} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.setPublic = function(value) {
  return jspb.Message.setProto3BooleanField(this, 3, value);
};


/**
 * optional string user_id = 4;
 * @return {string}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.getUserId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.setUserId = function(value) {
  return jspb.Message.setField(this, 4, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.clearUserId = function() {
  return jspb.Message.setField(this, 4, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.hasUserId = function() {
  return jspb.Message.getField(this, 4) != null;
};


/**
 * optional string ward_id = 5;
 * @return {string}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.getWardId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.setWardId = function(value) {
  return jspb.Message.setField(this, 5, value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.clearWardId = function() {
  return jspb.Message.setField(this, 5, undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.hasWardId = function() {
  return jspb.Message.getField(this, 5) != null;
};


/**
 * optional SubTask subtasks = 6;
 * @return {?proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.getSubtasks = function() {
  return /** @type{?proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask} */ (
    jspb.Message.getWrapperField(this, proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask, 6));
};


/**
 * @param {?proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask|undefined} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
*/
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.setSubtasks = function(value) {
  return jspb.Message.setWrapperField(this, 6, value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateRequest} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.clearSubtasks = function() {
  return this.setSubtasks(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateRequest.prototype.hasSubtasks = function() {
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
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.toObject = function(includeInstance, msg) {
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
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.proto.services.task_svc.v1.CreateTaskTemplateResponse;
  return proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse}
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.deserializeBinaryFromReader = function(msg, reader) {
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
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.serializeBinaryToWriter = function(message, writer) {
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
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.proto.services.task_svc.v1.CreateTaskTemplateResponse} returns this
 */
proto.proto.services.task_svc.v1.CreateTaskTemplateResponse.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


goog.object.extend(exports, proto.proto.services.task_svc.v1);
