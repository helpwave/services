import * as jspb from 'google-protobuf'

import * as google_protobuf_timestamp_pb from 'google-protobuf/google/protobuf/timestamp_pb'; // proto import: "google/protobuf/timestamp.proto"


export class Date extends jspb.Message {
  getDate(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDate(value?: google_protobuf_timestamp_pb.Timestamp): Date;
  hasDate(): boolean;
  clearDate(): Date;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Date.AsObject;
  static toObject(includeInstance: boolean, msg: Date): Date.AsObject;
  static serializeBinaryToWriter(message: Date, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Date;
  static deserializeBinaryFromReader(message: Date, reader: jspb.BinaryReader): Date;
}

export namespace Date {
  export type AsObject = {
    date?: google_protobuf_timestamp_pb.Timestamp.AsObject,
  }
}

export enum SubjectType { 
  SUBJECT_TYPE_UNSPECIFIED = 0,
  SUBJECT_TYPE_PATIENT = 1,
  SUBJECT_TYPE_TASK = 2,
}
export enum FieldType { 
  FIELD_TYPE_UNSPECIFIED = 0,
  FIELD_TYPE_TEXT = 1,
  FIELD_TYPE_NUMBER = 2,
  FIELD_TYPE_CHECKBOX = 3,
  FIELD_TYPE_DATE = 4,
  FIELD_TYPE_DATE_TIME = 5,
  FIELD_TYPE_SELECT = 6,
  FIELD_TYPE_MULTI_SELECT = 7,
}
