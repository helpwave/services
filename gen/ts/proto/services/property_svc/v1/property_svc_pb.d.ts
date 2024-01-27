import * as jspb from 'google-protobuf'



export class CreatePropertyRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): CreatePropertyRequest;

  getSubjectType(): string;
  setSubjectType(value: string): CreatePropertyRequest;

  getFieldType(): FieldType;
  setFieldType(value: FieldType): CreatePropertyRequest;

  getName(): string;
  setName(value: string): CreatePropertyRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyRequest): CreatePropertyRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyRequest;
  static deserializeBinaryFromReader(message: CreatePropertyRequest, reader: jspb.BinaryReader): CreatePropertyRequest;
}

export namespace CreatePropertyRequest {
  export type AsObject = {
    subjectId: string,
    subjectType: string,
    fieldType: FieldType,
    name: string,
  }
}

export class CreatePropertyResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreatePropertyResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyResponse): CreatePropertyResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyResponse;
  static deserializeBinaryFromReader(message: CreatePropertyResponse, reader: jspb.BinaryReader): CreatePropertyResponse;
}

export namespace CreatePropertyResponse {
  export type AsObject = {
    id: string,
  }
}

export enum FieldType { 
  FIELD_TYPE_TEXT = 0,
  FIELD_TYPE_NUMBER = 1,
  FIELD_TYPE_CHECKBOX = 2,
  FIELD_TYPE_DATE = 3,
  FIELD_TYPE_DATETIME = 4,
  FIELD_TYPE_SELECT = 5,
}
