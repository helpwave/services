import * as jspb from 'google-protobuf'

import * as google_protobuf_any_pb from 'google-protobuf/google/protobuf/any_pb'; // proto import: "google/protobuf/any.proto"


export class CreatePropertyValueRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): CreatePropertyValueRequest;

  getSubjectType(): string;
  setSubjectType(value: string): CreatePropertyValueRequest;

  getPropertyId(): string;
  setPropertyId(value: string): CreatePropertyValueRequest;

  getIsUndefined(): boolean;
  setIsUndefined(value: boolean): CreatePropertyValueRequest;

  getTextValue(): string;
  setTextValue(value: string): CreatePropertyValueRequest;

  getNumberValue(): number;
  setNumberValue(value: number): CreatePropertyValueRequest;

  getBoolValue(): boolean;
  setBoolValue(value: boolean): CreatePropertyValueRequest;

  getDateValue(): string;
  setDateValue(value: string): CreatePropertyValueRequest;

  getDateTimeValue(): string;
  setDateTimeValue(value: string): CreatePropertyValueRequest;

  getSelectValue(): string;
  setSelectValue(value: string): CreatePropertyValueRequest;

  getValueCase(): CreatePropertyValueRequest.ValueCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyValueRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyValueRequest): CreatePropertyValueRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyValueRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyValueRequest;
  static deserializeBinaryFromReader(message: CreatePropertyValueRequest, reader: jspb.BinaryReader): CreatePropertyValueRequest;
}

export namespace CreatePropertyValueRequest {
  export type AsObject = {
    subjectId: string,
    subjectType: string,
    propertyId: string,
    isUndefined: boolean,
    textValue: string,
    numberValue: number,
    boolValue: boolean,
    dateValue: string,
    dateTimeValue: string,
    selectValue: string,
  }

  export enum ValueCase { 
    VALUE_NOT_SET = 0,
    IS_UNDEFINED = 4,
    TEXT_VALUE = 5,
    NUMBER_VALUE = 6,
    BOOL_VALUE = 7,
    DATE_VALUE = 8,
    DATE_TIME_VALUE = 9,
    SELECT_VALUE = 10,
  }
}

export class CreatePropertyValueResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreatePropertyValueResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyValueResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyValueResponse): CreatePropertyValueResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyValueResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyValueResponse;
  static deserializeBinaryFromReader(message: CreatePropertyValueResponse, reader: jspb.BinaryReader): CreatePropertyValueResponse;
}

export namespace CreatePropertyValueResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetPropertyValueRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertyValueRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertyValueRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertyValueRequest): GetPropertyValueRequest.AsObject;
  static serializeBinaryToWriter(message: GetPropertyValueRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertyValueRequest;
  static deserializeBinaryFromReader(message: GetPropertyValueRequest, reader: jspb.BinaryReader): GetPropertyValueRequest;
}

export namespace GetPropertyValueRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetPropertyValueResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertyValueResponse;

  getSubjectType(): string;
  setSubjectType(value: string): GetPropertyValueResponse;

  getPropertyId(): string;
  setPropertyId(value: string): GetPropertyValueResponse;

  getIsUndefined(): boolean;
  setIsUndefined(value: boolean): GetPropertyValueResponse;

  getTextValue(): string;
  setTextValue(value: string): GetPropertyValueResponse;

  getNumberValue(): number;
  setNumberValue(value: number): GetPropertyValueResponse;

  getBoolValue(): boolean;
  setBoolValue(value: boolean): GetPropertyValueResponse;

  getDateValue(): string;
  setDateValue(value: string): GetPropertyValueResponse;

  getDateTimeValue(): string;
  setDateTimeValue(value: string): GetPropertyValueResponse;

  getSelectValue(): string;
  setSelectValue(value: string): GetPropertyValueResponse;

  getValueCase(): GetPropertyValueResponse.ValueCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertyValueResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertyValueResponse): GetPropertyValueResponse.AsObject;
  static serializeBinaryToWriter(message: GetPropertyValueResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertyValueResponse;
  static deserializeBinaryFromReader(message: GetPropertyValueResponse, reader: jspb.BinaryReader): GetPropertyValueResponse;
}

export namespace GetPropertyValueResponse {
  export type AsObject = {
    id: string,
    subjectType: string,
    propertyId: string,
    isUndefined: boolean,
    textValue: string,
    numberValue: number,
    boolValue: boolean,
    dateValue: string,
    dateTimeValue: string,
    selectValue: string,
  }

  export enum ValueCase { 
    VALUE_NOT_SET = 0,
    IS_UNDEFINED = 4,
    TEXT_VALUE = 5,
    NUMBER_VALUE = 6,
    BOOL_VALUE = 7,
    DATE_VALUE = 8,
    DATE_TIME_VALUE = 9,
    SELECT_VALUE = 10,
  }
}

