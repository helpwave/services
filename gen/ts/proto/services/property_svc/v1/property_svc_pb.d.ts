import * as jspb from 'google-protobuf'

import * as proto_services_property_svc_v1_types_pb from '../../../../proto/services/property_svc/v1/types_pb'; // proto import: "proto/services/property_svc/v1/types.proto"


export class CreatePropertyRequest extends jspb.Message {
  getSubjectType(): proto_services_property_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_property_svc_v1_types_pb.SubjectType): CreatePropertyRequest;

  getFieldType(): proto_services_property_svc_v1_types_pb.FieldType;
  setFieldType(value: proto_services_property_svc_v1_types_pb.FieldType): CreatePropertyRequest;

  getName(): string;
  setName(value: string): CreatePropertyRequest;

  getDescription(): string;
  setDescription(value: string): CreatePropertyRequest;
  hasDescription(): boolean;
  clearDescription(): CreatePropertyRequest;

  getSetId(): string;
  setSetId(value: string): CreatePropertyRequest;
  hasSetId(): boolean;
  clearSetId(): CreatePropertyRequest;

  getAlwaysIncludeForCurrentContext(): boolean;
  setAlwaysIncludeForCurrentContext(value: boolean): CreatePropertyRequest;
  hasAlwaysIncludeForCurrentContext(): boolean;
  clearAlwaysIncludeForCurrentContext(): CreatePropertyRequest;

  getNone(): boolean;
  setNone(value: boolean): CreatePropertyRequest;

  getSelectData(): CreatePropertyRequest.SelectData | undefined;
  setSelectData(value?: CreatePropertyRequest.SelectData): CreatePropertyRequest;
  hasSelectData(): boolean;
  clearSelectData(): CreatePropertyRequest;

  getFieldTypeDataCase(): CreatePropertyRequest.FieldTypeDataCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyRequest): CreatePropertyRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyRequest;
  static deserializeBinaryFromReader(message: CreatePropertyRequest, reader: jspb.BinaryReader): CreatePropertyRequest;
}

export namespace CreatePropertyRequest {
  export type AsObject = {
    subjectType: proto_services_property_svc_v1_types_pb.SubjectType,
    fieldType: proto_services_property_svc_v1_types_pb.FieldType,
    name: string,
    description?: string,
    setId?: string,
    alwaysIncludeForCurrentContext?: boolean,
    none: boolean,
    selectData?: CreatePropertyRequest.SelectData.AsObject,
  }

  export class SelectData extends jspb.Message {
    getAllowFreetext(): boolean;
    setAllowFreetext(value: boolean): SelectData;
    hasAllowFreetext(): boolean;
    clearAllowFreetext(): SelectData;

    getOptionsList(): Array<CreatePropertyRequest.SelectData.SelectOption>;
    setOptionsList(value: Array<CreatePropertyRequest.SelectData.SelectOption>): SelectData;
    clearOptionsList(): SelectData;
    addOptions(value?: CreatePropertyRequest.SelectData.SelectOption, index?: number): CreatePropertyRequest.SelectData.SelectOption;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SelectData.AsObject;
    static toObject(includeInstance: boolean, msg: SelectData): SelectData.AsObject;
    static serializeBinaryToWriter(message: SelectData, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SelectData;
    static deserializeBinaryFromReader(message: SelectData, reader: jspb.BinaryReader): SelectData;
  }

  export namespace SelectData {
    export type AsObject = {
      allowFreetext?: boolean,
      optionsList: Array<CreatePropertyRequest.SelectData.SelectOption.AsObject>,
    }

    export class SelectOption extends jspb.Message {
      getName(): string;
      setName(value: string): SelectOption;

      getDescription(): string;
      setDescription(value: string): SelectOption;
      hasDescription(): boolean;
      clearDescription(): SelectOption;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SelectOption.AsObject;
      static toObject(includeInstance: boolean, msg: SelectOption): SelectOption.AsObject;
      static serializeBinaryToWriter(message: SelectOption, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SelectOption;
      static deserializeBinaryFromReader(message: SelectOption, reader: jspb.BinaryReader): SelectOption;
    }

    export namespace SelectOption {
      export type AsObject = {
        name: string,
        description?: string,
      }

      export enum DescriptionCase { 
        _DESCRIPTION_NOT_SET = 0,
        DESCRIPTION = 2,
      }
    }


    export enum AllowFreetextCase { 
      _ALLOW_FREETEXT_NOT_SET = 0,
      ALLOW_FREETEXT = 1,
    }
  }


  export enum FieldTypeDataCase { 
    FIELD_TYPE_DATA_NOT_SET = 0,
    NONE = 8,
    SELECT_DATA = 9,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 5,
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 6,
  }

  export enum AlwaysIncludeForCurrentContextCase { 
    _ALWAYS_INCLUDE_FOR_CURRENT_CONTEXT_NOT_SET = 0,
    ALWAYS_INCLUDE_FOR_CURRENT_CONTEXT = 7,
  }
}

export class CreatePropertyResponse extends jspb.Message {
  getPropertyId(): string;
  setPropertyId(value: string): CreatePropertyResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyResponse): CreatePropertyResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyResponse;
  static deserializeBinaryFromReader(message: CreatePropertyResponse, reader: jspb.BinaryReader): CreatePropertyResponse;
}

export namespace CreatePropertyResponse {
  export type AsObject = {
    propertyId: string,
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

  export class ViewSource extends jspb.Message {
    getGlobal(): boolean;
    setGlobal(value: boolean): ViewSource;

    getWardId(): string;
    setWardId(value: string): ViewSource;

    getValueCase(): ViewSource.ValueCase;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ViewSource.AsObject;
    static toObject(includeInstance: boolean, msg: ViewSource): ViewSource.AsObject;
    static serializeBinaryToWriter(message: ViewSource, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ViewSource;
    static deserializeBinaryFromReader(message: ViewSource, reader: jspb.BinaryReader): ViewSource;
  }

  export namespace ViewSource {
    export type AsObject = {
      global: boolean,
      wardId: string,
    }

    export enum ValueCase { 
      VALUE_NOT_SET = 0,
      GLOBAL = 1,
      WARD_ID = 2,
    }
  }

}

export class GetPropertyResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertyResponse;

  getSubjectType(): proto_services_property_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_property_svc_v1_types_pb.SubjectType): GetPropertyResponse;

  getFieldType(): proto_services_property_svc_v1_types_pb.FieldType;
  setFieldType(value: proto_services_property_svc_v1_types_pb.FieldType): GetPropertyResponse;

  getName(): string;
  setName(value: string): GetPropertyResponse;

  getDescription(): string;
  setDescription(value: string): GetPropertyResponse;
  hasDescription(): boolean;
  clearDescription(): GetPropertyResponse;

  getIsArchived(): boolean;
  setIsArchived(value: boolean): GetPropertyResponse;

  getSetId(): string;
  setSetId(value: string): GetPropertyResponse;
  hasSetId(): boolean;
  clearSetId(): GetPropertyResponse;

  getNone(): boolean;
  setNone(value: boolean): GetPropertyResponse;

  getSelectData(): GetPropertyResponse.SelectData | undefined;
  setSelectData(value?: GetPropertyResponse.SelectData): GetPropertyResponse;
  hasSelectData(): boolean;
  clearSelectData(): GetPropertyResponse;

  getAlwaysIncludeForCurrentContext(): boolean;
  setAlwaysIncludeForCurrentContext(value: boolean): GetPropertyResponse;
  hasAlwaysIncludeForCurrentContext(): boolean;
  clearAlwaysIncludeForCurrentContext(): GetPropertyResponse;

  getFieldTypeDataCase(): GetPropertyResponse.FieldTypeDataCase;

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
    subjectType: proto_services_property_svc_v1_types_pb.SubjectType,
    fieldType: proto_services_property_svc_v1_types_pb.FieldType,
    name: string,
    description?: string,
    isArchived: boolean,
    setId?: string,
    none: boolean,
    selectData?: GetPropertyResponse.SelectData.AsObject,
    alwaysIncludeForCurrentContext?: boolean,
  }

  export class SelectData extends jspb.Message {
    getAllowFreetext(): boolean;
    setAllowFreetext(value: boolean): SelectData;
    hasAllowFreetext(): boolean;
    clearAllowFreetext(): SelectData;

    getOptionsList(): Array<GetPropertyResponse.SelectData.SelectOption>;
    setOptionsList(value: Array<GetPropertyResponse.SelectData.SelectOption>): SelectData;
    clearOptionsList(): SelectData;
    addOptions(value?: GetPropertyResponse.SelectData.SelectOption, index?: number): GetPropertyResponse.SelectData.SelectOption;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SelectData.AsObject;
    static toObject(includeInstance: boolean, msg: SelectData): SelectData.AsObject;
    static serializeBinaryToWriter(message: SelectData, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SelectData;
    static deserializeBinaryFromReader(message: SelectData, reader: jspb.BinaryReader): SelectData;
  }

  export namespace SelectData {
    export type AsObject = {
      allowFreetext?: boolean,
      optionsList: Array<GetPropertyResponse.SelectData.SelectOption.AsObject>,
    }

    export class SelectOption extends jspb.Message {
      getName(): string;
      setName(value: string): SelectOption;

      getDescription(): string;
      setDescription(value: string): SelectOption;
      hasDescription(): boolean;
      clearDescription(): SelectOption;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SelectOption.AsObject;
      static toObject(includeInstance: boolean, msg: SelectOption): SelectOption.AsObject;
      static serializeBinaryToWriter(message: SelectOption, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SelectOption;
      static deserializeBinaryFromReader(message: SelectOption, reader: jspb.BinaryReader): SelectOption;
    }

    export namespace SelectOption {
      export type AsObject = {
        name: string,
        description?: string,
      }

      export enum DescriptionCase { 
        _DESCRIPTION_NOT_SET = 0,
        DESCRIPTION = 2,
      }
    }


    export enum AllowFreetextCase { 
      _ALLOW_FREETEXT_NOT_SET = 0,
      ALLOW_FREETEXT = 1,
    }
  }


  export enum FieldTypeDataCase { 
    FIELD_TYPE_DATA_NOT_SET = 0,
    NONE = 9,
    SELECT_DATA = 10,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 5,
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 8,
  }

  export enum AlwaysIncludeForCurrentContextCase { 
    _ALWAYS_INCLUDE_FOR_CURRENT_CONTEXT_NOT_SET = 0,
    ALWAYS_INCLUDE_FOR_CURRENT_CONTEXT = 11,
  }
}

