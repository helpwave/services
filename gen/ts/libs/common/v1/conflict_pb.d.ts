import * as jspb from 'google-protobuf'

import * as google_protobuf_any_pb from 'google-protobuf/google/protobuf/any_pb'; // proto import: "google/protobuf/any.proto"


export class Conflict extends jspb.Message {
  getConflictingAttributesMap(): jspb.Map<string, AttributeConflict>;
  clearConflictingAttributesMap(): Conflict;

  getHistoryMissing(): boolean;
  setHistoryMissing(value: boolean): Conflict;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Conflict.AsObject;
  static toObject(includeInstance: boolean, msg: Conflict): Conflict.AsObject;
  static serializeBinaryToWriter(message: Conflict, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Conflict;
  static deserializeBinaryFromReader(message: Conflict, reader: jspb.BinaryReader): Conflict;
}

export namespace Conflict {
  export type AsObject = {
    conflictingAttributesMap: Array<[string, AttributeConflict.AsObject]>,
    historyMissing: boolean,
  }
}

export class AttributeConflict extends jspb.Message {
  getIs(): google_protobuf_any_pb.Any | undefined;
  setIs(value?: google_protobuf_any_pb.Any): AttributeConflict;
  hasIs(): boolean;
  clearIs(): AttributeConflict;

  getWant(): google_protobuf_any_pb.Any | undefined;
  setWant(value?: google_protobuf_any_pb.Any): AttributeConflict;
  hasWant(): boolean;
  clearWant(): AttributeConflict;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AttributeConflict.AsObject;
  static toObject(includeInstance: boolean, msg: AttributeConflict): AttributeConflict.AsObject;
  static serializeBinaryToWriter(message: AttributeConflict, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AttributeConflict;
  static deserializeBinaryFromReader(message: AttributeConflict, reader: jspb.BinaryReader): AttributeConflict;
}

export namespace AttributeConflict {
  export type AsObject = {
    is?: google_protobuf_any_pb.Any.AsObject,
    want?: google_protobuf_any_pb.Any.AsObject,
  }
}

export class AnyArray extends jspb.Message {
  getElementsList(): Array<google_protobuf_any_pb.Any>;
  setElementsList(value: Array<google_protobuf_any_pb.Any>): AnyArray;
  clearElementsList(): AnyArray;
  addElements(value?: google_protobuf_any_pb.Any, index?: number): google_protobuf_any_pb.Any;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AnyArray.AsObject;
  static toObject(includeInstance: boolean, msg: AnyArray): AnyArray.AsObject;
  static serializeBinaryToWriter(message: AnyArray, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AnyArray;
  static deserializeBinaryFromReader(message: AnyArray, reader: jspb.BinaryReader): AnyArray;
}

export namespace AnyArray {
  export type AsObject = {
    elementsList: Array<google_protobuf_any_pb.Any.AsObject>,
  }
}

