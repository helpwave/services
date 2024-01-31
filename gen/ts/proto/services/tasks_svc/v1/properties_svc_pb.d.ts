import * as jspb from 'google-protobuf'



export class CreatePropertySetRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreatePropertySetRequest;

  getPropertiesList(): Array<string>;
  setPropertiesList(value: Array<string>): CreatePropertySetRequest;
  clearPropertiesList(): CreatePropertySetRequest;
  addProperties(value: string, index?: number): CreatePropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertySetRequest): CreatePropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertySetRequest;
  static deserializeBinaryFromReader(message: CreatePropertySetRequest, reader: jspb.BinaryReader): CreatePropertySetRequest;
}

export namespace CreatePropertySetRequest {
  export type AsObject = {
    name: string,
    propertiesList: Array<string>,
  }
}

export class CreatePropertySetResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertySetResponse): CreatePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertySetResponse;
  static deserializeBinaryFromReader(message: CreatePropertySetResponse, reader: jspb.BinaryReader): CreatePropertySetResponse;
}

export namespace CreatePropertySetResponse {
  export type AsObject = {
  }
}

export class UpdatePropertySetRequest extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): UpdatePropertySetRequest;

  getName(): string;
  setName(value: string): UpdatePropertySetRequest;
  hasName(): boolean;
  clearName(): UpdatePropertySetRequest;

  getAddedPropertiesList(): Array<string>;
  setAddedPropertiesList(value: Array<string>): UpdatePropertySetRequest;
  clearAddedPropertiesList(): UpdatePropertySetRequest;
  addAddedProperties(value: string, index?: number): UpdatePropertySetRequest;

  getRemovedPropertiesList(): Array<string>;
  setRemovedPropertiesList(value: Array<string>): UpdatePropertySetRequest;
  clearRemovedPropertiesList(): UpdatePropertySetRequest;
  addRemovedProperties(value: string, index?: number): UpdatePropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertySetRequest): UpdatePropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertySetRequest;
  static deserializeBinaryFromReader(message: UpdatePropertySetRequest, reader: jspb.BinaryReader): UpdatePropertySetRequest;
}

export namespace UpdatePropertySetRequest {
  export type AsObject = {
    setId: string,
    name?: string,
    addedPropertiesList: Array<string>,
    removedPropertiesList: Array<string>,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdatePropertySetResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertySetResponse): UpdatePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertySetResponse;
  static deserializeBinaryFromReader(message: UpdatePropertySetResponse, reader: jspb.BinaryReader): UpdatePropertySetResponse;
}

export namespace UpdatePropertySetResponse {
  export type AsObject = {
  }
}

export class DeletePropertySetRequest extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): DeletePropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeletePropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeletePropertySetRequest): DeletePropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: DeletePropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeletePropertySetRequest;
  static deserializeBinaryFromReader(message: DeletePropertySetRequest, reader: jspb.BinaryReader): DeletePropertySetRequest;
}

export namespace DeletePropertySetRequest {
  export type AsObject = {
    setId: string,
  }
}

export class DeletePropertySetResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeletePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeletePropertySetResponse): DeletePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: DeletePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeletePropertySetResponse;
  static deserializeBinaryFromReader(message: DeletePropertySetResponse, reader: jspb.BinaryReader): DeletePropertySetResponse;
}

export namespace DeletePropertySetResponse {
  export type AsObject = {
  }
}

export class CreatePropertyRequest extends jspb.Message {
  getSubjectType(): SubjectType;
  setSubjectType(value: SubjectType): CreatePropertyRequest;

  getFieldType(): FieldType;
  setFieldType(value: FieldType): CreatePropertyRequest;

  getName(): string;
  setName(value: string): CreatePropertyRequest;

  getDescription(): string;
  setDescription(value: string): CreatePropertyRequest;
  hasDescription(): boolean;
  clearDescription(): CreatePropertyRequest;

  getIsSoftRequired(): boolean;
  setIsSoftRequired(value: boolean): CreatePropertyRequest;

  getSetId(): string;
  setSetId(value: string): CreatePropertyRequest;
  hasSetId(): boolean;
  clearSetId(): CreatePropertyRequest;

  getSelectOptionsList(): Array<CreatePropertyRequest.SelectOption>;
  setSelectOptionsList(value: Array<CreatePropertyRequest.SelectOption>): CreatePropertyRequest;
  clearSelectOptionsList(): CreatePropertyRequest;
  addSelectOptions(value?: CreatePropertyRequest.SelectOption, index?: number): CreatePropertyRequest.SelectOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyRequest): CreatePropertyRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyRequest;
  static deserializeBinaryFromReader(message: CreatePropertyRequest, reader: jspb.BinaryReader): CreatePropertyRequest;
}

export namespace CreatePropertyRequest {
  export type AsObject = {
    subjectType: SubjectType,
    fieldType: FieldType,
    name: string,
    description?: string,
    isSoftRequired: boolean,
    setId?: string,
    selectOptionsList: Array<CreatePropertyRequest.SelectOption.AsObject>,
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


  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 4,
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 6,
  }
}

export class CreatePropertyResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertyResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertyResponse): CreatePropertyResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertyResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertyResponse;
  static deserializeBinaryFromReader(message: CreatePropertyResponse, reader: jspb.BinaryReader): CreatePropertyResponse;
}

export namespace CreatePropertyResponse {
  export type AsObject = {
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

  getSubjectType(): SubjectType;
  setSubjectType(value: SubjectType): GetPropertyResponse;

  getFieldType(): FieldType;
  setFieldType(value: FieldType): GetPropertyResponse;

  getName(): string;
  setName(value: string): GetPropertyResponse;

  getDescription(): string;
  setDescription(value: string): GetPropertyResponse;
  hasDescription(): boolean;
  clearDescription(): GetPropertyResponse;

  getIsArchived(): boolean;
  setIsArchived(value: boolean): GetPropertyResponse;

  getIsSoftRequired(): boolean;
  setIsSoftRequired(value: boolean): GetPropertyResponse;

  getSetId(): string;
  setSetId(value: string): GetPropertyResponse;
  hasSetId(): boolean;
  clearSetId(): GetPropertyResponse;

  getSelectOptionsList(): Array<GetPropertyResponse.SelectOption>;
  setSelectOptionsList(value: Array<GetPropertyResponse.SelectOption>): GetPropertyResponse;
  clearSelectOptionsList(): GetPropertyResponse;
  addSelectOptions(value?: GetPropertyResponse.SelectOption, index?: number): GetPropertyResponse.SelectOption;

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
    subjectType: SubjectType,
    fieldType: FieldType,
    name: string,
    description?: string,
    isArchived: boolean,
    isSoftRequired: boolean,
    setId?: string,
    selectOptionsList: Array<GetPropertyResponse.SelectOption.AsObject>,
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


  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 5,
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 8,
  }
}

export class GetPropertiesRequest extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): GetPropertiesRequest;
  hasSetId(): boolean;
  clearSetId(): GetPropertiesRequest;

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
  }

  export enum SetIdCase { 
    _SET_ID_NOT_SET = 0,
    SET_ID = 1,
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

    getSubjectType(): SubjectType;
    setSubjectType(value: SubjectType): Property;

    getFieldType(): FieldType;
    setFieldType(value: FieldType): Property;

    getName(): string;
    setName(value: string): Property;

    getDescription(): string;
    setDescription(value: string): Property;
    hasDescription(): boolean;
    clearDescription(): Property;

    getIsArchived(): boolean;
    setIsArchived(value: boolean): Property;

    getIsSoftRequired(): boolean;
    setIsSoftRequired(value: boolean): Property;

    getSetId(): string;
    setSetId(value: string): Property;
    hasSetId(): boolean;
    clearSetId(): Property;

    getSelectOptionsList(): Array<GetPropertiesResponse.Property.SelectOption>;
    setSelectOptionsList(value: Array<GetPropertiesResponse.Property.SelectOption>): Property;
    clearSelectOptionsList(): Property;
    addSelectOptions(value?: GetPropertiesResponse.Property.SelectOption, index?: number): GetPropertiesResponse.Property.SelectOption;

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
      subjectType: SubjectType,
      fieldType: FieldType,
      name: string,
      description?: string,
      isArchived: boolean,
      isSoftRequired: boolean,
      setId?: string,
      selectOptionsList: Array<GetPropertiesResponse.Property.SelectOption.AsObject>,
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


    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 5,
    }

    export enum SetIdCase { 
      _SET_ID_NOT_SET = 0,
      SET_ID = 8,
    }
  }

}

export class UpdatePropertyRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdatePropertyRequest;

  getSubjectType(): SubjectType;
  setSubjectType(value: SubjectType): UpdatePropertyRequest;
  hasSubjectType(): boolean;
  clearSubjectType(): UpdatePropertyRequest;

  getFieldType(): FieldType;
  setFieldType(value: FieldType): UpdatePropertyRequest;
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

  getIsSoftRequired(): boolean;
  setIsSoftRequired(value: boolean): UpdatePropertyRequest;
  hasIsSoftRequired(): boolean;
  clearIsSoftRequired(): UpdatePropertyRequest;

  getSetId(): string;
  setSetId(value: string): UpdatePropertyRequest;
  hasSetId(): boolean;
  clearSetId(): UpdatePropertyRequest;

  getNewOrUpdatedSelectOptionsList(): Array<UpdatePropertyRequest.SelectOption>;
  setNewOrUpdatedSelectOptionsList(value: Array<UpdatePropertyRequest.SelectOption>): UpdatePropertyRequest;
  clearNewOrUpdatedSelectOptionsList(): UpdatePropertyRequest;
  addNewOrUpdatedSelectOptions(value?: UpdatePropertyRequest.SelectOption, index?: number): UpdatePropertyRequest.SelectOption;

  getRemoveSelectOptionsList(): Array<string>;
  setRemoveSelectOptionsList(value: Array<string>): UpdatePropertyRequest;
  clearRemoveSelectOptionsList(): UpdatePropertyRequest;
  addRemoveSelectOptions(value: string, index?: number): UpdatePropertyRequest;

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
    subjectType?: SubjectType,
    fieldType?: FieldType,
    name?: string,
    description?: string,
    isArchived?: boolean,
    isSoftRequired?: boolean,
    setId?: string,
    newOrUpdatedSelectOptionsList: Array<UpdatePropertyRequest.SelectOption.AsObject>,
    removeSelectOptionsList: Array<string>,
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
    }

    export enum NameCase { 
      _NAME_NOT_SET = 0,
      NAME = 2,
    }

    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 3,
    }
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

  export enum IsSoftRequiredCase { 
    _IS_SOFT_REQUIRED_NOT_SET = 0,
    IS_SOFT_REQUIRED = 7,
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

export class AttachPropertyValueRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): AttachPropertyValueRequest;

  getSubjectType(): SubjectType;
  setSubjectType(value: SubjectType): AttachPropertyValueRequest;

  getPropertyId(): string;
  setPropertyId(value: string): AttachPropertyValueRequest;

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
    subjectType: SubjectType,
    propertyId: string,
    textValue: string,
    numberValue: number,
    boolValue: boolean,
    dateValue: string,
    dateTimeValue: string,
    selectValue: string,
  }

  export enum ValueCase { 
    VALUE_NOT_SET = 0,
    TEXT_VALUE = 4,
    NUMBER_VALUE = 5,
    BOOL_VALUE = 6,
    DATE_VALUE = 7,
    DATE_TIME_VALUE = 8,
    SELECT_VALUE = 9,
  }
}

export class AttachPropertyValueResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AttachPropertyValueResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AttachPropertyValueResponse): AttachPropertyValueResponse.AsObject;
  static serializeBinaryToWriter(message: AttachPropertyValueResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AttachPropertyValueResponse;
  static deserializeBinaryFromReader(message: AttachPropertyValueResponse, reader: jspb.BinaryReader): AttachPropertyValueResponse;
}

export namespace AttachPropertyValueResponse {
  export type AsObject = {
  }
}

export class GetAttachedPropertyValuesRequest extends jspb.Message {
  getSubjectId(): string;
  setSubjectId(value: string): GetAttachedPropertyValuesRequest;

  getView(): string;
  setView(value: string): GetAttachedPropertyValuesRequest;
  hasView(): boolean;
  clearView(): GetAttachedPropertyValuesRequest;

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
    view?: string,
  }

  export enum ViewCase { 
    _VIEW_NOT_SET = 0,
    VIEW = 2,
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

    getFieldType(): FieldType;
    setFieldType(value: FieldType): Value;

    getName(): string;
    setName(value: string): Value;

    getDescription(): string;
    setDescription(value: string): Value;
    hasDescription(): boolean;
    clearDescription(): Value;

    getIsArchived(): boolean;
    setIsArchived(value: boolean): Value;

    getIsSoftRequired(): boolean;
    setIsSoftRequired(value: boolean): Value;

    getSet(): GetAttachedPropertyValuesResponse.Value.Set | undefined;
    setSet(value?: GetAttachedPropertyValuesResponse.Value.Set): Value;
    hasSet(): boolean;
    clearSet(): Value;

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
      fieldType: FieldType,
      name: string,
      description?: string,
      isArchived: boolean,
      isSoftRequired: boolean,
      set?: GetAttachedPropertyValuesResponse.Value.Set.AsObject,
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


    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 5,
    }

    export enum SetCase { 
      _SET_NOT_SET = 0,
      SET = 8,
    }
  }

}

export enum SubjectType { 
  SUBJECT_TYPE_UNSPECIFIED = 0,
  SUBJECT_TYPE_PATIENT = 1,
}
export enum FieldType { 
  FIELD_TYPE_UNSPECIFIED = 0,
  FIELD_TYPE_TEXT = 1,
  FIELD_TYPE_NUMBER = 2,
  FIELD_TYPE_CHECKBOX = 3,
  FIELD_TYPE_DATE = 4,
  FIELD_TYPE_DATE_TIME = 5,
  FIELD_TYPE_SELECT = 6,
}
