import * as jspb from 'google-protobuf'

import * as proto_services_properties_svc_v1_types_pb from '../../../../proto/services/properties_svc/v1/types_pb'; // proto import: "proto/services/properties_svc/v1/types.proto"


export class AttachPropertyValueRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): AttachPropertyValueRequest;

  getSubjectType(): proto_services_properties_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_properties_svc_v1_types_pb.SubjectType): AttachPropertyValueRequest;

  getPropertyId(): string;
  setPropertyId(value: string): AttachPropertyValueRequest;

  getIsUndefined(): boolean;
  setIsUndefined(value: boolean): AttachPropertyValueRequest;

  getTextValue(): string;
  setTextValue(value: string): AttachPropertyValueRequest;

  getNumberValue(): number;
  setNumberValue(value: number): AttachPropertyValueRequest;

  getBoolValue(): boolean;
  setBoolValue(value: boolean): AttachPropertyValueRequest;

  getDateValue(): string;
  setDateValue(value: string): AttachPropertyValueRequest;

  getDateTimeValue(): string;
  setDateTimeValue(value: string): AttachPropertyValueRequest;

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
    subjectType: proto_services_properties_svc_v1_types_pb.SubjectType,
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

    getFieldType(): proto_services_properties_svc_v1_types_pb.FieldType;
    setFieldType(value: proto_services_properties_svc_v1_types_pb.FieldType): Value;

    getName(): string;
    setName(value: string): Value;

    getDescription(): string;
    setDescription(value: string): Value;
    hasDescription(): boolean;
    clearDescription(): Value;

    getIsArchived(): boolean;
    setIsArchived(value: boolean): Value;

    getSet(): GetAttachedPropertyValuesResponse.Value.Set | undefined;
    setSet(value?: GetAttachedPropertyValuesResponse.Value.Set): Value;
    hasSet(): boolean;
    clearSet(): Value;

    getIsUndefined(): boolean;
    setIsUndefined(value: boolean): Value;

    getTextValue(): string;
    setTextValue(value: string): Value;

    getNumberValue(): number;
    setNumberValue(value: number): Value;

    getBoolValue(): boolean;
    setBoolValue(value: boolean): Value;

    getDateValue(): string;
    setDateValue(value: string): Value;

    getDateTimeValue(): string;
    setDateTimeValue(value: string): Value;

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
      fieldType: proto_services_properties_svc_v1_types_pb.FieldType,
      name: string,
      description?: string,
      isArchived: boolean,
      set?: GetAttachedPropertyValuesResponse.Value.Set.AsObject,
      isUndefined: boolean,
      textValue: string,
      numberValue: number,
      boolValue: boolean,
      dateValue: string,
      dateTimeValue: string,
      selectValue: string,
    }

    export class Set extends jspb.Message {
      getId(): string;
      setId(value: string): Set;

      getName(): string;
      setName(value: string): Set;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): Set.AsObject;
      static toObject(includeInstance: boolean, msg: Set): Set.AsObject;
      static serializeBinaryToWriter(message: Set, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): Set;
      static deserializeBinaryFromReader(message: Set, reader: jspb.BinaryReader): Set;
    }

    export namespace Set {
      export type AsObject = {
        id: string,
        name: string,
      }
    }


    export enum ValueCase { 
      VALUE_NOT_SET = 0,
      IS_UNDEFINED = 8,
      TEXT_VALUE = 9,
      NUMBER_VALUE = 10,
      BOOL_VALUE = 11,
      DATE_VALUE = 12,
      DATE_TIME_VALUE = 13,
      SELECT_VALUE = 14,
    }

    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 4,
    }

    export enum SetCase { 
      _SET_NOT_SET = 0,
      SET = 7,
    }
  }

}

