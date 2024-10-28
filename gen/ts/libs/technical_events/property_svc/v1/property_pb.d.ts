import * as jspb from 'google-protobuf'

import * as libs_events_v1_options_pb from '../../../../libs/events/v1/options_pb'; // proto import: "libs/events/v1/options.proto"
import * as services_property_svc_v1_types_pb from '../../../../services/property_svc/v1/types_pb'; // proto import: "services/property_svc/v1/types.proto"


export class PropertyCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): PropertyCreatedEvent;

  getSubjectType(): services_property_svc_v1_types_pb.SubjectType;
  setSubjectType(value: services_property_svc_v1_types_pb.SubjectType): PropertyCreatedEvent;

  getFieldType(): services_property_svc_v1_types_pb.FieldType;
  setFieldType(value: services_property_svc_v1_types_pb.FieldType): PropertyCreatedEvent;

  getName(): string;
  setName(value: string): PropertyCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyCreatedEvent): PropertyCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyCreatedEvent;
  static deserializeBinaryFromReader(message: PropertyCreatedEvent, reader: jspb.BinaryReader): PropertyCreatedEvent;
}

export namespace PropertyCreatedEvent {
  export type AsObject = {
    id: string,
    subjectType: services_property_svc_v1_types_pb.SubjectType,
    fieldType: services_property_svc_v1_types_pb.FieldType,
    name: string,
  }
}

export class PropertyDescriptionUpdatedEvent extends jspb.Message {
  getDescription(): string;
  setDescription(value: string): PropertyDescriptionUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyDescriptionUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyDescriptionUpdatedEvent): PropertyDescriptionUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyDescriptionUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyDescriptionUpdatedEvent;
  static deserializeBinaryFromReader(message: PropertyDescriptionUpdatedEvent, reader: jspb.BinaryReader): PropertyDescriptionUpdatedEvent;
}

export namespace PropertyDescriptionUpdatedEvent {
  export type AsObject = {
    description: string,
  }
}

export class PropertySetIDUpdatedEvent extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): PropertySetIDUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertySetIDUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertySetIDUpdatedEvent): PropertySetIDUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertySetIDUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertySetIDUpdatedEvent;
  static deserializeBinaryFromReader(message: PropertySetIDUpdatedEvent, reader: jspb.BinaryReader): PropertySetIDUpdatedEvent;
}

export namespace PropertySetIDUpdatedEvent {
  export type AsObject = {
    setId: string,
  }
}

export class PropertySubjectTypeUpdatedEvent extends jspb.Message {
  getSubjectType(): string;
  setSubjectType(value: string): PropertySubjectTypeUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertySubjectTypeUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertySubjectTypeUpdatedEvent): PropertySubjectTypeUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertySubjectTypeUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertySubjectTypeUpdatedEvent;
  static deserializeBinaryFromReader(message: PropertySubjectTypeUpdatedEvent, reader: jspb.BinaryReader): PropertySubjectTypeUpdatedEvent;
}

export namespace PropertySubjectTypeUpdatedEvent {
  export type AsObject = {
    subjectType: string,
  }
}

export class PropertyFieldTypeUpdatedEvent extends jspb.Message {
  getFieldType(): string;
  setFieldType(value: string): PropertyFieldTypeUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyFieldTypeUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyFieldTypeUpdatedEvent): PropertyFieldTypeUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyFieldTypeUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyFieldTypeUpdatedEvent;
  static deserializeBinaryFromReader(message: PropertyFieldTypeUpdatedEvent, reader: jspb.BinaryReader): PropertyFieldTypeUpdatedEvent;
}

export namespace PropertyFieldTypeUpdatedEvent {
  export type AsObject = {
    fieldType: string,
  }
}

export class PropertyFieldTypeDataCreatedEvent extends jspb.Message {
  getFieldTypeData(): PropertyFieldTypeDataCreatedEvent.FieldTypeData | undefined;
  setFieldTypeData(value?: PropertyFieldTypeDataCreatedEvent.FieldTypeData): PropertyFieldTypeDataCreatedEvent;
  hasFieldTypeData(): boolean;
  clearFieldTypeData(): PropertyFieldTypeDataCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyFieldTypeDataCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyFieldTypeDataCreatedEvent): PropertyFieldTypeDataCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyFieldTypeDataCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyFieldTypeDataCreatedEvent;
  static deserializeBinaryFromReader(message: PropertyFieldTypeDataCreatedEvent, reader: jspb.BinaryReader): PropertyFieldTypeDataCreatedEvent;
}

export namespace PropertyFieldTypeDataCreatedEvent {
  export type AsObject = {
    fieldTypeData?: PropertyFieldTypeDataCreatedEvent.FieldTypeData.AsObject,
  }

  export class SelectOption extends jspb.Message {
    getId(): string;
    setId(value: string): SelectOption;

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
      id: string,
      name: string,
      description?: string,
      isCustom: boolean,
    }

    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 3,
    }
  }


  export class SelectData extends jspb.Message {
    getAllowFreetext(): boolean;
    setAllowFreetext(value: boolean): SelectData;

    getSelectOptionsList(): Array<PropertyFieldTypeDataCreatedEvent.SelectOption>;
    setSelectOptionsList(value: Array<PropertyFieldTypeDataCreatedEvent.SelectOption>): SelectData;
    clearSelectOptionsList(): SelectData;
    addSelectOptions(value?: PropertyFieldTypeDataCreatedEvent.SelectOption, index?: number): PropertyFieldTypeDataCreatedEvent.SelectOption;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SelectData.AsObject;
    static toObject(includeInstance: boolean, msg: SelectData): SelectData.AsObject;
    static serializeBinaryToWriter(message: SelectData, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SelectData;
    static deserializeBinaryFromReader(message: SelectData, reader: jspb.BinaryReader): SelectData;
  }

  export namespace SelectData {
    export type AsObject = {
      allowFreetext: boolean,
      selectOptionsList: Array<PropertyFieldTypeDataCreatedEvent.SelectOption.AsObject>,
    }
  }


  export class FieldTypeData extends jspb.Message {
    getSelectData(): PropertyFieldTypeDataCreatedEvent.SelectData | undefined;
    setSelectData(value?: PropertyFieldTypeDataCreatedEvent.SelectData): FieldTypeData;
    hasSelectData(): boolean;
    clearSelectData(): FieldTypeData;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): FieldTypeData.AsObject;
    static toObject(includeInstance: boolean, msg: FieldTypeData): FieldTypeData.AsObject;
    static serializeBinaryToWriter(message: FieldTypeData, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): FieldTypeData;
    static deserializeBinaryFromReader(message: FieldTypeData, reader: jspb.BinaryReader): FieldTypeData;
  }

  export namespace FieldTypeData {
    export type AsObject = {
      selectData?: PropertyFieldTypeDataCreatedEvent.SelectData.AsObject,
    }

    export enum SelectDataCase { 
      _SELECT_DATA_NOT_SET = 0,
      SELECT_DATA = 1,
    }
  }

}

export class PropertyNameUpdatedEvent extends jspb.Message {
  getName(): string;
  setName(value: string): PropertyNameUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyNameUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyNameUpdatedEvent): PropertyNameUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyNameUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyNameUpdatedEvent;
  static deserializeBinaryFromReader(message: PropertyNameUpdatedEvent, reader: jspb.BinaryReader): PropertyNameUpdatedEvent;
}

export namespace PropertyNameUpdatedEvent {
  export type AsObject = {
    name: string,
  }
}

export class PropertyFieldTypeDataAllowFreetextUpdatedEvent extends jspb.Message {
  getNewAllowFreetext(): boolean;
  setNewAllowFreetext(value: boolean): PropertyFieldTypeDataAllowFreetextUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyFieldTypeDataAllowFreetextUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyFieldTypeDataAllowFreetextUpdatedEvent): PropertyFieldTypeDataAllowFreetextUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyFieldTypeDataAllowFreetextUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyFieldTypeDataAllowFreetextUpdatedEvent;
  static deserializeBinaryFromReader(message: PropertyFieldTypeDataAllowFreetextUpdatedEvent, reader: jspb.BinaryReader): PropertyFieldTypeDataAllowFreetextUpdatedEvent;
}

export namespace PropertyFieldTypeDataAllowFreetextUpdatedEvent {
  export type AsObject = {
    newAllowFreetext: boolean,
  }
}

export class PropertyFieldTypeDataSelectOptionsRemovedEvent extends jspb.Message {
  getRemovedSelectOptionsList(): Array<string>;
  setRemovedSelectOptionsList(value: Array<string>): PropertyFieldTypeDataSelectOptionsRemovedEvent;
  clearRemovedSelectOptionsList(): PropertyFieldTypeDataSelectOptionsRemovedEvent;
  addRemovedSelectOptions(value: string, index?: number): PropertyFieldTypeDataSelectOptionsRemovedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyFieldTypeDataSelectOptionsRemovedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyFieldTypeDataSelectOptionsRemovedEvent): PropertyFieldTypeDataSelectOptionsRemovedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyFieldTypeDataSelectOptionsRemovedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyFieldTypeDataSelectOptionsRemovedEvent;
  static deserializeBinaryFromReader(message: PropertyFieldTypeDataSelectOptionsRemovedEvent, reader: jspb.BinaryReader): PropertyFieldTypeDataSelectOptionsRemovedEvent;
}

export namespace PropertyFieldTypeDataSelectOptionsRemovedEvent {
  export type AsObject = {
    removedSelectOptionsList: Array<string>,
  }
}

export class PropertyFieldTypeDataSelectOptionsUpsertedEvent extends jspb.Message {
  getUpsertedSelectOptionsList(): Array<PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption>;
  setUpsertedSelectOptionsList(value: Array<PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption>): PropertyFieldTypeDataSelectOptionsUpsertedEvent;
  clearUpsertedSelectOptionsList(): PropertyFieldTypeDataSelectOptionsUpsertedEvent;
  addUpsertedSelectOptions(value?: PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption, index?: number): PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyFieldTypeDataSelectOptionsUpsertedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyFieldTypeDataSelectOptionsUpsertedEvent): PropertyFieldTypeDataSelectOptionsUpsertedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyFieldTypeDataSelectOptionsUpsertedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyFieldTypeDataSelectOptionsUpsertedEvent;
  static deserializeBinaryFromReader(message: PropertyFieldTypeDataSelectOptionsUpsertedEvent, reader: jspb.BinaryReader): PropertyFieldTypeDataSelectOptionsUpsertedEvent;
}

export namespace PropertyFieldTypeDataSelectOptionsUpsertedEvent {
  export type AsObject = {
    upsertedSelectOptionsList: Array<PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption.AsObject>,
  }

  export class UpdateSelectOption extends jspb.Message {
    getId(): string;
    setId(value: string): UpdateSelectOption;

    getName(): string;
    setName(value: string): UpdateSelectOption;
    hasName(): boolean;
    clearName(): UpdateSelectOption;

    getDescription(): string;
    setDescription(value: string): UpdateSelectOption;
    hasDescription(): boolean;
    clearDescription(): UpdateSelectOption;

    getIsCustom(): boolean;
    setIsCustom(value: boolean): UpdateSelectOption;
    hasIsCustom(): boolean;
    clearIsCustom(): UpdateSelectOption;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): UpdateSelectOption.AsObject;
    static toObject(includeInstance: boolean, msg: UpdateSelectOption): UpdateSelectOption.AsObject;
    static serializeBinaryToWriter(message: UpdateSelectOption, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): UpdateSelectOption;
    static deserializeBinaryFromReader(message: UpdateSelectOption, reader: jspb.BinaryReader): UpdateSelectOption;
  }

  export namespace UpdateSelectOption {
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

}

export class PropertyArchivedEvent extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyArchivedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyArchivedEvent): PropertyArchivedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyArchivedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyArchivedEvent;
  static deserializeBinaryFromReader(message: PropertyArchivedEvent, reader: jspb.BinaryReader): PropertyArchivedEvent;
}

export namespace PropertyArchivedEvent {
  export type AsObject = {
  }
}

export class PropertyRetrievedEvent extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PropertyRetrievedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: PropertyRetrievedEvent): PropertyRetrievedEvent.AsObject;
  static serializeBinaryToWriter(message: PropertyRetrievedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PropertyRetrievedEvent;
  static deserializeBinaryFromReader(message: PropertyRetrievedEvent, reader: jspb.BinaryReader): PropertyRetrievedEvent;
}

export namespace PropertyRetrievedEvent {
  export type AsObject = {
  }
}

export class TechnicalEvent extends jspb.Message {
  getPropertyCreated(): PropertyCreatedEvent | undefined;
  setPropertyCreated(value?: PropertyCreatedEvent): TechnicalEvent;
  hasPropertyCreated(): boolean;
  clearPropertyCreated(): TechnicalEvent;

  getPropertyDescriptionUpdated(): PropertyDescriptionUpdatedEvent | undefined;
  setPropertyDescriptionUpdated(value?: PropertyDescriptionUpdatedEvent): TechnicalEvent;
  hasPropertyDescriptionUpdated(): boolean;
  clearPropertyDescriptionUpdated(): TechnicalEvent;

  getPropertySetIdUpdated(): PropertySetIDUpdatedEvent | undefined;
  setPropertySetIdUpdated(value?: PropertySetIDUpdatedEvent): TechnicalEvent;
  hasPropertySetIdUpdated(): boolean;
  clearPropertySetIdUpdated(): TechnicalEvent;

  getPropertySubjectTypeUpdated(): PropertySubjectTypeUpdatedEvent | undefined;
  setPropertySubjectTypeUpdated(value?: PropertySubjectTypeUpdatedEvent): TechnicalEvent;
  hasPropertySubjectTypeUpdated(): boolean;
  clearPropertySubjectTypeUpdated(): TechnicalEvent;

  getPropertyFieldTypeUpdated(): PropertyFieldTypeUpdatedEvent | undefined;
  setPropertyFieldTypeUpdated(value?: PropertyFieldTypeUpdatedEvent): TechnicalEvent;
  hasPropertyFieldTypeUpdated(): boolean;
  clearPropertyFieldTypeUpdated(): TechnicalEvent;

  getPropertyFieldTypeDataCreated(): PropertyFieldTypeDataCreatedEvent | undefined;
  setPropertyFieldTypeDataCreated(value?: PropertyFieldTypeDataCreatedEvent): TechnicalEvent;
  hasPropertyFieldTypeDataCreated(): boolean;
  clearPropertyFieldTypeDataCreated(): TechnicalEvent;

  getPropertyNameUpdated(): PropertyNameUpdatedEvent | undefined;
  setPropertyNameUpdated(value?: PropertyNameUpdatedEvent): TechnicalEvent;
  hasPropertyNameUpdated(): boolean;
  clearPropertyNameUpdated(): TechnicalEvent;

  getPropertyFieldTypeDataAllowFreetextUpdated(): PropertyFieldTypeDataAllowFreetextUpdatedEvent | undefined;
  setPropertyFieldTypeDataAllowFreetextUpdated(value?: PropertyFieldTypeDataAllowFreetextUpdatedEvent): TechnicalEvent;
  hasPropertyFieldTypeDataAllowFreetextUpdated(): boolean;
  clearPropertyFieldTypeDataAllowFreetextUpdated(): TechnicalEvent;

  getPropertyFieldTypeDataSelectOptionsRemoved(): PropertyFieldTypeDataSelectOptionsRemovedEvent | undefined;
  setPropertyFieldTypeDataSelectOptionsRemoved(value?: PropertyFieldTypeDataSelectOptionsRemovedEvent): TechnicalEvent;
  hasPropertyFieldTypeDataSelectOptionsRemoved(): boolean;
  clearPropertyFieldTypeDataSelectOptionsRemoved(): TechnicalEvent;

  getPropertyFieldTypeDataSelectOptionsUpserted(): PropertyFieldTypeDataSelectOptionsUpsertedEvent | undefined;
  setPropertyFieldTypeDataSelectOptionsUpserted(value?: PropertyFieldTypeDataSelectOptionsUpsertedEvent): TechnicalEvent;
  hasPropertyFieldTypeDataSelectOptionsUpserted(): boolean;
  clearPropertyFieldTypeDataSelectOptionsUpserted(): TechnicalEvent;

  getPropertyArchived(): PropertyArchivedEvent | undefined;
  setPropertyArchived(value?: PropertyArchivedEvent): TechnicalEvent;
  hasPropertyArchived(): boolean;
  clearPropertyArchived(): TechnicalEvent;

  getPropertyRetrieved(): PropertyRetrievedEvent | undefined;
  setPropertyRetrieved(value?: PropertyRetrievedEvent): TechnicalEvent;
  hasPropertyRetrieved(): boolean;
  clearPropertyRetrieved(): TechnicalEvent;

  getEventCase(): TechnicalEvent.EventCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TechnicalEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TechnicalEvent): TechnicalEvent.AsObject;
  static serializeBinaryToWriter(message: TechnicalEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TechnicalEvent;
  static deserializeBinaryFromReader(message: TechnicalEvent, reader: jspb.BinaryReader): TechnicalEvent;
}

export namespace TechnicalEvent {
  export type AsObject = {
    propertyCreated?: PropertyCreatedEvent.AsObject,
    propertyDescriptionUpdated?: PropertyDescriptionUpdatedEvent.AsObject,
    propertySetIdUpdated?: PropertySetIDUpdatedEvent.AsObject,
    propertySubjectTypeUpdated?: PropertySubjectTypeUpdatedEvent.AsObject,
    propertyFieldTypeUpdated?: PropertyFieldTypeUpdatedEvent.AsObject,
    propertyFieldTypeDataCreated?: PropertyFieldTypeDataCreatedEvent.AsObject,
    propertyNameUpdated?: PropertyNameUpdatedEvent.AsObject,
    propertyFieldTypeDataAllowFreetextUpdated?: PropertyFieldTypeDataAllowFreetextUpdatedEvent.AsObject,
    propertyFieldTypeDataSelectOptionsRemoved?: PropertyFieldTypeDataSelectOptionsRemovedEvent.AsObject,
    propertyFieldTypeDataSelectOptionsUpserted?: PropertyFieldTypeDataSelectOptionsUpsertedEvent.AsObject,
    propertyArchived?: PropertyArchivedEvent.AsObject,
    propertyRetrieved?: PropertyRetrievedEvent.AsObject,
  }

  export enum EventCase { 
    EVENT_NOT_SET = 0,
    PROPERTY_CREATED = 1,
    PROPERTY_DESCRIPTION_UPDATED = 2,
    PROPERTY_SET_ID_UPDATED = 3,
    PROPERTY_SUBJECT_TYPE_UPDATED = 4,
    PROPERTY_FIELD_TYPE_UPDATED = 5,
    PROPERTY_FIELD_TYPE_DATA_CREATED = 6,
    PROPERTY_NAME_UPDATED = 7,
    PROPERTY_FIELD_TYPE_DATA_ALLOW_FREETEXT_UPDATED = 8,
    PROPERTY_FIELD_TYPE_DATA_SELECT_OPTIONS_REMOVED = 9,
    PROPERTY_FIELD_TYPE_DATA_SELECT_OPTIONS_UPSERTED = 10,
    PROPERTY_ARCHIVED = 11,
    PROPERTY_RETRIEVED = 12,
  }
}

