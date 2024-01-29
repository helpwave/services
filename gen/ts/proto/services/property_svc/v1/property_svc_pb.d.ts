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

export class GetPropertyRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertyRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertyRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertyRequest): GetPropertyRequest.AsObject;
  static serializeBinaryToWriter(message: GetPropertyRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertyRequest;
  static deserializeBinaryFromReader(message: GetPropertyRequest, reader: jspb.BinaryReader): GetPropertyRequest;
}

export namespace GetPropertyRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetPropertyResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertyResponse;

  getName(): string;
  setName(value: string): GetPropertyResponse;

  getSubjectType(): string;
  setSubjectType(value: string): GetPropertyResponse;

  getSubjectId(): string;
  setSubjectId(value: string): GetPropertyResponse;

  getFieldType(): FieldType;
  setFieldType(value: FieldType): GetPropertyResponse;

  getDescription(): string;
  setDescription(value: string): GetPropertyResponse;
  hasDescription(): boolean;
  clearDescription(): GetPropertyResponse;

  getIsArchived(): boolean;
  setIsArchived(value: boolean): GetPropertyResponse;
  hasIsArchived(): boolean;
  clearIsArchived(): GetPropertyResponse;

  getIsSoftRequired(): boolean;
  setIsSoftRequired(value: boolean): GetPropertyResponse;
  hasIsSoftRequired(): boolean;
  clearIsSoftRequired(): GetPropertyResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertyResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertyResponse): GetPropertyResponse.AsObject;
  static serializeBinaryToWriter(message: GetPropertyResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertyResponse;
  static deserializeBinaryFromReader(message: GetPropertyResponse, reader: jspb.BinaryReader): GetPropertyResponse;
}

export namespace GetPropertyResponse {
  export type AsObject = {
    id: string,
    name: string,
    subjectType: string,
    subjectId: string,
    fieldType: FieldType,
    description?: string,
    isArchived?: boolean,
    isSoftRequired?: boolean,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 6,
  }

  export enum IsArchivedCase { 
    _IS_ARCHIVED_NOT_SET = 0,
    IS_ARCHIVED = 7,
  }

  export enum IsSoftRequiredCase { 
    _IS_SOFT_REQUIRED_NOT_SET = 0,
    IS_SOFT_REQUIRED = 8,
  }
}

export enum FieldType { 
  FIELD_TYPE_UNSPECIFIED = 0,
  FIELD_TYPE_TEXT = 1,
  FIELD_TYPE_NUMBER = 2,
  FIELD_TYPE_CHECKBOX = 3,
  FIELD_TYPE_DATE = 4,
  FIELD_TYPE_DATETIME = 5,
  FIELD_TYPE_SELECT = 6,
}
