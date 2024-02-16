import * as jspb from 'google-protobuf'

import * as proto_services_properties_svc_v1_types_pb from '../../../../proto/services/properties_svc/v1/types_pb'; // proto import: "proto/services/properties_svc/v1/types.proto"


export class CreatePropertyRequest extends jspb.Message {
  getContext(): proto_services_properties_svc_v1_types_pb.ViewContext;
  setContext(value: proto_services_properties_svc_v1_types_pb.ViewContext): CreatePropertyRequest;

  getSubjectType(): proto_services_properties_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_properties_svc_v1_types_pb.SubjectType): CreatePropertyRequest;

  getFieldType(): proto_services_properties_svc_v1_types_pb.FieldType;
  setFieldType(value: proto_services_properties_svc_v1_types_pb.FieldType): CreatePropertyRequest;

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
    context: proto_services_properties_svc_v1_types_pb.ViewContext,
    subjectType: proto_services_properties_svc_v1_types_pb.SubjectType,
    fieldType: proto_services_properties_svc_v1_types_pb.FieldType,
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

  getContext(): proto_services_properties_svc_v1_types_pb.ViewContext;
  setContext(value: proto_services_properties_svc_v1_types_pb.ViewContext): GetPropertyRequest;

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
    context: proto_services_properties_svc_v1_types_pb.ViewContext,
  }
}

export class GetPropertyResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertyResponse;

  getSubjectType(): proto_services_properties_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_properties_svc_v1_types_pb.SubjectType): GetPropertyResponse;

  getFieldType(): proto_services_properties_svc_v1_types_pb.FieldType;
  setFieldType(value: proto_services_properties_svc_v1_types_pb.FieldType): GetPropertyResponse;

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
    subjectType: proto_services_properties_svc_v1_types_pb.SubjectType,
    fieldType: proto_services_properties_svc_v1_types_pb.FieldType,
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

export class GetPropertiesRequest extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): GetPropertiesRequest;
  hasSetId(): boolean;
  clearSetId(): GetPropertiesRequest;

  getSubjectType(): proto_services_properties_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_properties_svc_v1_types_pb.SubjectType): GetPropertiesRequest;
  hasSubjectType(): boolean;
  clearSubjectType(): GetPropertiesRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertiesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertiesRequest): GetPropertiesRequest.AsObject;
  static serializeBinaryToWriter(message: GetPropertiesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertiesRequest;
  static deserializeBinaryFromReader(message: GetPropertiesRequest, reader: jspb.BinaryReader): GetPropertiesRequest;
}

export namespace GetPropertiesRequest {
  export type AsObject = {
    setId?: string,
    subjectType?: proto_services_properties_svc_v1_types_pb.SubjectType,
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 1,
  }

  export enum SubjectTypeCase { 
    _SUBJECT_TYPE_NOT_SET = 0,
    SUBJECT_TYPE = 2,
  }
}

export class GetPropertiesResponse extends jspb.Message {
  getPropertiesList(): Array<GetPropertiesResponse.Property>;
  setPropertiesList(value: Array<GetPropertiesResponse.Property>): GetPropertiesResponse;
  clearPropertiesList(): GetPropertiesResponse;
  addProperties(value?: GetPropertiesResponse.Property, index?: number): GetPropertiesResponse.Property;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertiesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertiesResponse): GetPropertiesResponse.AsObject;
  static serializeBinaryToWriter(message: GetPropertiesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertiesResponse;
  static deserializeBinaryFromReader(message: GetPropertiesResponse, reader: jspb.BinaryReader): GetPropertiesResponse;
}

export namespace GetPropertiesResponse {
  export type AsObject = {
    propertiesList: Array<GetPropertiesResponse.Property.AsObject>,
  }

  export class Property extends jspb.Message {
    getId(): string;
    setId(value: string): Property;

    getSubjectType(): proto_services_properties_svc_v1_types_pb.SubjectType;
    setSubjectType(value: proto_services_properties_svc_v1_types_pb.SubjectType): Property;

    getFieldType(): proto_services_properties_svc_v1_types_pb.FieldType;
    setFieldType(value: proto_services_properties_svc_v1_types_pb.FieldType): Property;

    getName(): string;
    setName(value: string): Property;

    getDescription(): string;
    setDescription(value: string): Property;
    hasDescription(): boolean;
    clearDescription(): Property;

    getIsArchived(): boolean;
    setIsArchived(value: boolean): Property;

    getSetId(): string;
    setSetId(value: string): Property;
    hasSetId(): boolean;
    clearSetId(): Property;

    getNone(): boolean;
    setNone(value: boolean): Property;

    getSelectData(): GetPropertiesResponse.Property.SelectData | undefined;
    setSelectData(value?: GetPropertiesResponse.Property.SelectData): Property;
    hasSelectData(): boolean;
    clearSelectData(): Property;

    getAlwaysIncludeForCurrentContext(): boolean;
    setAlwaysIncludeForCurrentContext(value: boolean): Property;
    hasAlwaysIncludeForCurrentContext(): boolean;
    clearAlwaysIncludeForCurrentContext(): Property;

    getFieldTypeDataCase(): Property.FieldTypeDataCase;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Property.AsObject;
    static toObject(includeInstance: boolean, msg: Property): Property.AsObject;
    static serializeBinaryToWriter(message: Property, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Property;
    static deserializeBinaryFromReader(message: Property, reader: jspb.BinaryReader): Property;
  }

  export namespace Property {
    export type AsObject = {
      id: string,
      subjectType: proto_services_properties_svc_v1_types_pb.SubjectType,
      fieldType: proto_services_properties_svc_v1_types_pb.FieldType,
      name: string,
      description?: string,
      isArchived: boolean,
      setId?: string,
      none: boolean,
      selectData?: GetPropertiesResponse.Property.SelectData.AsObject,
      alwaysIncludeForCurrentContext?: boolean,
    }

    export class SelectData extends jspb.Message {
      getAllowFreetext(): boolean;
      setAllowFreetext(value: boolean): SelectData;
      hasAllowFreetext(): boolean;
      clearAllowFreetext(): SelectData;

      getOptionsList(): Array<GetPropertiesResponse.Property.SelectData.SelectOption>;
      setOptionsList(value: Array<GetPropertiesResponse.Property.SelectData.SelectOption>): SelectData;
      clearOptionsList(): SelectData;
      addOptions(value?: GetPropertiesResponse.Property.SelectData.SelectOption, index?: number): GetPropertiesResponse.Property.SelectData.SelectOption;

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
        optionsList: Array<GetPropertiesResponse.Property.SelectData.SelectOption.AsObject>,
      }

      export class SelectOption extends jspb.Message {
        getName(): string;
        setName(value: string): SelectOption;

        getDescription(): string;
        setDescription(value: string): SelectOption;
        hasDescription(): boolean;
        clearDescription(): SelectOption;

        getIsCustom(): boolean;
        setIsCustom(value: boolean): SelectOption;

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
          isCustom: boolean,
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

}

export class UpdatePropertyRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdatePropertyRequest;

  getSubjectType(): proto_services_properties_svc_v1_types_pb.SubjectType;
  setSubjectType(value: proto_services_properties_svc_v1_types_pb.SubjectType): UpdatePropertyRequest;
  hasSubjectType(): boolean;
  clearSubjectType(): UpdatePropertyRequest;

  getFieldType(): proto_services_properties_svc_v1_types_pb.FieldType;
  setFieldType(value: proto_services_properties_svc_v1_types_pb.FieldType): UpdatePropertyRequest;
  hasFieldType(): boolean;
  clearFieldType(): UpdatePropertyRequest;

  getName(): string;
  setName(value: string): UpdatePropertyRequest;
  hasName(): boolean;
  clearName(): UpdatePropertyRequest;

  getDescription(): string;
  setDescription(value: string): UpdatePropertyRequest;
  hasDescription(): boolean;
  clearDescription(): UpdatePropertyRequest;

  getIsArchived(): boolean;
  setIsArchived(value: boolean): UpdatePropertyRequest;
  hasIsArchived(): boolean;
  clearIsArchived(): UpdatePropertyRequest;

  getSetId(): string;
  setSetId(value: string): UpdatePropertyRequest;
  hasSetId(): boolean;
  clearSetId(): UpdatePropertyRequest;

  getNone(): boolean;
  setNone(value: boolean): UpdatePropertyRequest;

  getSelectData(): UpdatePropertyRequest.SelectData | undefined;
  setSelectData(value?: UpdatePropertyRequest.SelectData): UpdatePropertyRequest;
  hasSelectData(): boolean;
  clearSelectData(): UpdatePropertyRequest;

  getFieldTypeDataCase(): UpdatePropertyRequest.FieldTypeDataCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertyRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertyRequest): UpdatePropertyRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertyRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertyRequest;
  static deserializeBinaryFromReader(message: UpdatePropertyRequest, reader: jspb.BinaryReader): UpdatePropertyRequest;
}

export namespace UpdatePropertyRequest {
  export type AsObject = {
    id: string,
    subjectType?: proto_services_properties_svc_v1_types_pb.SubjectType,
    fieldType?: proto_services_properties_svc_v1_types_pb.FieldType,
    name?: string,
    description?: string,
    isArchived?: boolean,
    setId?: string,
    none: boolean,
    selectData?: UpdatePropertyRequest.SelectData.AsObject,
  }

  export class SelectData extends jspb.Message {
    getAllowFreetext(): boolean;
    setAllowFreetext(value: boolean): SelectData;
    hasAllowFreetext(): boolean;
    clearAllowFreetext(): SelectData;

    getRemoveOptionsList(): Array<string>;
    setRemoveOptionsList(value: Array<string>): SelectData;
    clearRemoveOptionsList(): SelectData;
    addRemoveOptions(value: string, index?: number): SelectData;

    getUpsertOptionsList(): Array<UpdatePropertyRequest.SelectData.SelectOption>;
    setUpsertOptionsList(value: Array<UpdatePropertyRequest.SelectData.SelectOption>): SelectData;
    clearUpsertOptionsList(): SelectData;
    addUpsertOptions(value?: UpdatePropertyRequest.SelectData.SelectOption, index?: number): UpdatePropertyRequest.SelectData.SelectOption;

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
      removeOptionsList: Array<string>,
      upsertOptionsList: Array<UpdatePropertyRequest.SelectData.SelectOption.AsObject>,
    }

    export class SelectOption extends jspb.Message {
      getId(): string;
      setId(value: string): SelectOption;

      getName(): string;
      setName(value: string): SelectOption;
      hasName(): boolean;
      clearName(): SelectOption;

      getDescription(): string;
      setDescription(value: string): SelectOption;
      hasDescription(): boolean;
      clearDescription(): SelectOption;

      getIsCustom(): boolean;
      setIsCustom(value: boolean): SelectOption;
      hasIsCustom(): boolean;
      clearIsCustom(): SelectOption;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SelectOption.AsObject;
      static toObject(includeInstance: boolean, msg: SelectOption): SelectOption.AsObject;
      static serializeBinaryToWriter(message: SelectOption, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SelectOption;
      static deserializeBinaryFromReader(message: SelectOption, reader: jspb.BinaryReader): SelectOption;
    }

    export namespace SelectOption {
      export type AsObject = {
        id: string,
        name?: string,
        description?: string,
        isCustom?: boolean,
      }

      export enum NameCase { 
        _NAME_NOT_SET = 0,
        NAME = 2,
      }

      export enum DescriptionCase { 
        _DESCRIPTION_NOT_SET = 0,
        DESCRIPTION = 3,
      }

      export enum IsCustomCase { 
        _IS_CUSTOM_NOT_SET = 0,
        IS_CUSTOM = 4,
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

  export enum SubjectTypeCase { 
    _SUBJECT_TYPE_NOT_SET = 0,
    SUBJECT_TYPE = 2,
  }

  export enum FieldTypeCase { 
    _FIELD_TYPE_NOT_SET = 0,
    FIELD_TYPE = 3,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 4,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 5,
  }

  export enum IsArchivedCase { 
    _IS_ARCHIVED_NOT_SET = 0,
    IS_ARCHIVED = 6,
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 8,
  }
}

export class UpdatePropertyResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertyResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertyResponse): UpdatePropertyResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertyResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertyResponse;
  static deserializeBinaryFromReader(message: UpdatePropertyResponse, reader: jspb.BinaryReader): UpdatePropertyResponse;
}

export namespace UpdatePropertyResponse {
  export type AsObject = {
  }
}

