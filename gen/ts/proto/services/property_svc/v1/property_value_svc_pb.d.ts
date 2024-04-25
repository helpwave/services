import * as jspb from 'google-protobuf'

import * as proto_services_property_svc_v1_types_pb from '../../../../proto/services/property_svc/v1/types_pb'; // proto import: "proto/services/property_svc/v1/types.proto"
import * as google_protobuf_timestamp_pb from 'google-protobuf/google/protobuf/timestamp_pb'; // proto import: "google/protobuf/timestamp.proto"


export class AttachPropertyValueRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): AttachPropertyValueRequest;

  getPropertyId(): string;
  setPropertyId(value: string): AttachPropertyValueRequest;

  getTextValue(): string;
  setTextValue(value: string): AttachPropertyValueRequest;

  getNumberValue(): number;
  setNumberValue(value: number): AttachPropertyValueRequest;

  getBoolValue(): boolean;
  setBoolValue(value: boolean): AttachPropertyValueRequest;

  getDateValue(): proto_services_property_svc_v1_types_pb.Date | undefined;
  setDateValue(value?: proto_services_property_svc_v1_types_pb.Date): AttachPropertyValueRequest;
  hasDateValue(): boolean;
  clearDateValue(): AttachPropertyValueRequest;

  getDateTimeValue(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDateTimeValue(value?: google_protobuf_timestamp_pb.Timestamp): AttachPropertyValueRequest;
  hasDateTimeValue(): boolean;
  clearDateTimeValue(): AttachPropertyValueRequest;

  getSelectValue(): string;
  setSelectValue(value: string): AttachPropertyValueRequest;

  getValueCase(): AttachPropertyValueRequest.ValueCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AttachPropertyValueRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AttachPropertyValueRequest): AttachPropertyValueRequest.AsObject;
  static serializeBinaryToWriter(message: AttachPropertyValueRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AttachPropertyValueRequest;
  static deserializeBinaryFromReader(message: AttachPropertyValueRequest, reader: jspb.BinaryReader): AttachPropertyValueRequest;
}

export namespace AttachPropertyValueRequest {
  export type AsObject = {
    subjectId: string,
    propertyId: string,
    textValue: string,
    numberValue: number,
    boolValue: boolean,
    dateValue?: proto_services_property_svc_v1_types_pb.Date.AsObject,
    dateTimeValue?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    selectValue: string,
  }

  export enum ValueCase { 
    VALUE_NOT_SET = 0,
    TEXT_VALUE = 3,
    NUMBER_VALUE = 4,
    BOOL_VALUE = 5,
    DATE_VALUE = 6,
    DATE_TIME_VALUE = 7,
    SELECT_VALUE = 8,
  }
}

export class AttachPropertyValueResponse extends jspb.Message {
  getPropertyValueId(): string;
  setPropertyValueId(value: string): AttachPropertyValueResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AttachPropertyValueResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AttachPropertyValueResponse): AttachPropertyValueResponse.AsObject;
  static serializeBinaryToWriter(message: AttachPropertyValueResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AttachPropertyValueResponse;
  static deserializeBinaryFromReader(message: AttachPropertyValueResponse, reader: jspb.BinaryReader): AttachPropertyValueResponse;
}

export namespace AttachPropertyValueResponse {
  export type AsObject = {
    propertyValueId: string,
  }
}

export class GetAttachedPropertyValuesRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): GetAttachedPropertyValuesRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAttachedPropertyValuesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAttachedPropertyValuesRequest): GetAttachedPropertyValuesRequest.AsObject;
  static serializeBinaryToWriter(message: GetAttachedPropertyValuesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAttachedPropertyValuesRequest;
  static deserializeBinaryFromReader(message: GetAttachedPropertyValuesRequest, reader: jspb.BinaryReader): GetAttachedPropertyValuesRequest;
}

export namespace GetAttachedPropertyValuesRequest {
  export type AsObject = {
    subjectId: string,
  }
}

export class GetAttachedPropertyValuesResponse extends jspb.Message {
  getValuesList(): Array<GetAttachedPropertyValuesResponse.Value>;
  setValuesList(value: Array<GetAttachedPropertyValuesResponse.Value>): GetAttachedPropertyValuesResponse;
  clearValuesList(): GetAttachedPropertyValuesResponse;
  addValues(value?: GetAttachedPropertyValuesResponse.Value, index?: number): GetAttachedPropertyValuesResponse.Value;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAttachedPropertyValuesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAttachedPropertyValuesResponse): GetAttachedPropertyValuesResponse.AsObject;
  static serializeBinaryToWriter(message: GetAttachedPropertyValuesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAttachedPropertyValuesResponse;
  static deserializeBinaryFromReader(message: GetAttachedPropertyValuesResponse, reader: jspb.BinaryReader): GetAttachedPropertyValuesResponse;
}

export namespace GetAttachedPropertyValuesResponse {
  export type AsObject = {
    valuesList: Array<GetAttachedPropertyValuesResponse.Value.AsObject>,
  }

  export class Value extends jspb.Message {
    getPropertyId(): string;
    setPropertyId(value: string): Value;

    getFieldType(): proto_services_property_svc_v1_types_pb.FieldType;
    setFieldType(value: proto_services_property_svc_v1_types_pb.FieldType): Value;

    getName(): string;
    setName(value: string): Value;

    getDescription(): string;
    setDescription(value: string): Value;
    hasDescription(): boolean;
    clearDescription(): Value;

    getIsArchived(): boolean;
    setIsArchived(value: boolean): Value;

    getTextValue(): string;
    setTextValue(value: string): Value;

    getNumberValue(): number;
    setNumberValue(value: number): Value;

    getBoolValue(): boolean;
    setBoolValue(value: boolean): Value;

    getDateValue(): proto_services_property_svc_v1_types_pb.Date | undefined;
    setDateValue(value?: proto_services_property_svc_v1_types_pb.Date): Value;
    hasDateValue(): boolean;
    clearDateValue(): Value;

    getDateTimeValue(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setDateTimeValue(value?: google_protobuf_timestamp_pb.Timestamp): Value;
    hasDateTimeValue(): boolean;
    clearDateTimeValue(): Value;

    getSelectValue(): string;
    setSelectValue(value: string): Value;

    getValueCase(): Value.ValueCase;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Value.AsObject;
    static toObject(includeInstance: boolean, msg: Value): Value.AsObject;
    static serializeBinaryToWriter(message: Value, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Value;
    static deserializeBinaryFromReader(message: Value, reader: jspb.BinaryReader): Value;
  }

  export namespace Value {
    export type AsObject = {
      propertyId: string,
      fieldType: proto_services_property_svc_v1_types_pb.FieldType,
      name: string,
      description?: string,
      isArchived: boolean,
      textValue: string,
      numberValue: number,
      boolValue: boolean,
      dateValue?: proto_services_property_svc_v1_types_pb.Date.AsObject,
      dateTimeValue?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      selectValue: string,
    }

    export enum ValueCase { 
      VALUE_NOT_SET = 0,
      TEXT_VALUE = 6,
      NUMBER_VALUE = 7,
      BOOL_VALUE = 8,
      DATE_VALUE = 9,
      DATE_TIME_VALUE = 10,
      SELECT_VALUE = 11,
    }

    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 4,
    }
  }

}

