import * as jspb from 'google-protobuf'



export class Conflict extends jspb.Message {
  getSubjectDeleted(): boolean;
  setSubjectDeleted(value: boolean): Conflict;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Conflict.AsObject;
  static toObject(includeInstance: boolean, msg: Conflict): Conflict.AsObject;
  static serializeBinaryToWriter(message: Conflict, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Conflict;
  static deserializeBinaryFromReader(message: Conflict, reader: jspb.BinaryReader): Conflict;
}

export namespace Conflict {
  export type AsObject = {
    subjectDeleted: boolean,
  }
}

