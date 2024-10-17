import * as jspb from 'google-protobuf'

import * as services_property_svc_v1_types_pb from '../../../services/property_svc/v1/types_pb'; // proto import: "services/property_svc/v1/types.proto"
import * as google_protobuf_timestamp_pb from 'google-protobuf/google/protobuf/timestamp_pb'; // proto import: "google/protobuf/timestamp.proto"
import * as libs_common_v1_conflict_pb from '../../../libs/common/v1/conflict_pb'; // proto import: "libs/common/v1/conflict.proto"


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

  getDateValue(): services_property_svc_v1_types_pb.Date | undefined;
  setDateValue(value?: services_property_svc_v1_types_pb.Date): AttachPropertyValueRequest;
  hasDateValue(): boolean;
  clearDateValue(): AttachPropertyValueRequest;

  getDateTimeValue(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDateTimeValue(value?: google_protobuf_timestamp_pb.Timestamp): AttachPropertyValueRequest;
  hasDateTimeValue(): boolean;
  clearDateTimeValue(): AttachPropertyValueRequest;

  getSelectValue(): string;
  setSelectValue(value: string): AttachPropertyValueRequest;

  getMultiSelectValue(): AttachPropertyValueRequest.MultiSelectValue | undefined;
  setMultiSelectValue(value?: AttachPropertyValueRequest.MultiSelectValue): AttachPropertyValueRequest;
  hasMultiSelectValue(): boolean;
  clearMultiSelectValue(): AttachPropertyValueRequest;

  getConsistency(): string;
  setConsistency(value: string): AttachPropertyValueRequest;
  hasConsistency(): boolean;
  clearConsistency(): AttachPropertyValueRequest;

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
    dateValue?: services_property_svc_v1_types_pb.Date.AsObject,
    dateTimeValue?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    selectValue: string,
    multiSelectValue?: AttachPropertyValueRequest.MultiSelectValue.AsObject,
    consistency?: string,
  }

  export class MultiSelectValue extends jspb.Message {
    getSelectValuesList(): Array<string>;
    setSelectValuesList(value: Array<string>): MultiSelectValue;
    clearSelectValuesList(): MultiSelectValue;
    addSelectValues(value: string, index?: number): MultiSelectValue;

    getRemoveSelectValuesList(): Array<string>;
    setRemoveSelectValuesList(value: Array<string>): MultiSelectValue;
    clearRemoveSelectValuesList(): MultiSelectValue;
    addRemoveSelectValues(value: string, index?: number): MultiSelectValue;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): MultiSelectValue.AsObject;
    static toObject(includeInstance: boolean, msg: MultiSelectValue): MultiSelectValue.AsObject;
    static serializeBinaryToWriter(message: MultiSelectValue, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): MultiSelectValue;
    static deserializeBinaryFromReader(message: MultiSelectValue, reader: jspb.BinaryReader): MultiSelectValue;
  }

  export namespace MultiSelectValue {
    export type AsObject = {
      selectValuesList: Array<string>,
      removeSelectValuesList: Array<string>,
    }
  }


  export enum ValueCase { 
    VALUE_NOT_SET = 0,
    TEXT_VALUE = 3,
    NUMBER_VALUE = 4,
    BOOL_VALUE = 5,
    DATE_VALUE = 6,
    DATE_TIME_VALUE = 7,
    SELECT_VALUE = 8,
    MULTI_SELECT_VALUE = 9,
  }

  export enum ConsistencyCase { 
    _CONSISTENCY_NOT_SET = 0,
    CONSISTENCY = 10,
  }
}

export class AttachPropertyValueResponse extends jspb.Message {
  getPropertyValueId(): string;
  setPropertyValueId(value: string): AttachPropertyValueResponse;

  getConflict(): libs_common_v1_conflict_pb.Conflict | undefined;
  setConflict(value?: libs_common_v1_conflict_pb.Conflict): AttachPropertyValueResponse;
  hasConflict(): boolean;
  clearConflict(): AttachPropertyValueResponse;

  getConsistency(): string;
  setConsistency(value: string): AttachPropertyValueResponse;

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
    conflict?: libs_common_v1_conflict_pb.Conflict.AsObject,
    consistency: string,
  }

  export enum ConflictCase { 
    _CONFLICT_NOT_SET = 0,
    CONFLICT = 2,
  }
}

export class TaskPropertyMatcher extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): TaskPropertyMatcher;
  hasWardId(): boolean;
  clearWardId(): TaskPropertyMatcher;

  getTaskId(): string;
  setTaskId(value: string): TaskPropertyMatcher;
  hasTaskId(): boolean;
  clearTaskId(): TaskPropertyMatcher;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskPropertyMatcher.AsObject;
  static toObject(includeInstance: boolean, msg: TaskPropertyMatcher): TaskPropertyMatcher.AsObject;
  static serializeBinaryToWriter(message: TaskPropertyMatcher, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskPropertyMatcher;
  static deserializeBinaryFromReader(message: TaskPropertyMatcher, reader: jspb.BinaryReader): TaskPropertyMatcher;
}

export namespace TaskPropertyMatcher {
  export type AsObject = {
    wardId?: string,
    taskId?: string,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 1,
  }

  export enum TaskIdCase { 
    _TASK_ID_NOT_SET = 0,
    TASK_ID = 2,
  }
}

export class PatientPropertyMatcher extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): PatientPropertyMatcher;
  hasWardId(): boolean;
  clearWardId(): PatientPropertyMatcher;

  getPatientId(): string;
  setPatientId(value: string): PatientPropertyMatcher;
  hasPatientId(): boolean;
  clearPatientId(): PatientPropertyMatcher;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PatientPropertyMatcher.AsObject;
  static toObject(includeInstance: boolean, msg: PatientPropertyMatcher): PatientPropertyMatcher.AsObject;
  static serializeBinaryToWriter(message: PatientPropertyMatcher, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PatientPropertyMatcher;
  static deserializeBinaryFromReader(message: PatientPropertyMatcher, reader: jspb.BinaryReader): PatientPropertyMatcher;
}

export namespace PatientPropertyMatcher {
  export type AsObject = {
    wardId?: string,
    patientId?: string,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 1,
  }

  export enum PatientIdCase { 
    _PATIENT_ID_NOT_SET = 0,
    PATIENT_ID = 2,
  }
}

export class GetAttachedPropertyValuesRequest extends jspb.Message {
  getTaskMatcher(): TaskPropertyMatcher | undefined;
  setTaskMatcher(value?: TaskPropertyMatcher): GetAttachedPropertyValuesRequest;
  hasTaskMatcher(): boolean;
  clearTaskMatcher(): GetAttachedPropertyValuesRequest;

  getPatientMatcher(): PatientPropertyMatcher | undefined;
  setPatientMatcher(value?: PatientPropertyMatcher): GetAttachedPropertyValuesRequest;
  hasPatientMatcher(): boolean;
  clearPatientMatcher(): GetAttachedPropertyValuesRequest;

  getMatcherCase(): GetAttachedPropertyValuesRequest.MatcherCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAttachedPropertyValuesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAttachedPropertyValuesRequest): GetAttachedPropertyValuesRequest.AsObject;
  static serializeBinaryToWriter(message: GetAttachedPropertyValuesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAttachedPropertyValuesRequest;
  static deserializeBinaryFromReader(message: GetAttachedPropertyValuesRequest, reader: jspb.BinaryReader): GetAttachedPropertyValuesRequest;
}

export namespace GetAttachedPropertyValuesRequest {
  export type AsObject = {
    taskMatcher?: TaskPropertyMatcher.AsObject,
    patientMatcher?: PatientPropertyMatcher.AsObject,
  }

  export enum MatcherCase { 
    MATCHER_NOT_SET = 0,
    TASK_MATCHER = 1,
    PATIENT_MATCHER = 2,
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

    getFieldType(): services_property_svc_v1_types_pb.FieldType;
    setFieldType(value: services_property_svc_v1_types_pb.FieldType): Value;

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

    getDateValue(): services_property_svc_v1_types_pb.Date | undefined;
    setDateValue(value?: services_property_svc_v1_types_pb.Date): Value;
    hasDateValue(): boolean;
    clearDateValue(): Value;

    getDateTimeValue(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setDateTimeValue(value?: google_protobuf_timestamp_pb.Timestamp): Value;
    hasDateTimeValue(): boolean;
    clearDateTimeValue(): Value;

    getSelectValue(): GetAttachedPropertyValuesResponse.Value.SelectValueOption | undefined;
    setSelectValue(value?: GetAttachedPropertyValuesResponse.Value.SelectValueOption): Value;
    hasSelectValue(): boolean;
    clearSelectValue(): Value;

    getMultiSelectValue(): GetAttachedPropertyValuesResponse.Value.MultiSelectValue | undefined;
    setMultiSelectValue(value?: GetAttachedPropertyValuesResponse.Value.MultiSelectValue): Value;
    hasMultiSelectValue(): boolean;
    clearMultiSelectValue(): Value;

    getPropertyConsistency(): string;
    setPropertyConsistency(value: string): Value;

    getValueConsistency(): string;
    setValueConsistency(value: string): Value;
    hasValueConsistency(): boolean;
    clearValueConsistency(): Value;

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
      fieldType: services_property_svc_v1_types_pb.FieldType,
      name: string,
      description?: string,
      isArchived: boolean,
      textValue: string,
      numberValue: number,
      boolValue: boolean,
      dateValue?: services_property_svc_v1_types_pb.Date.AsObject,
      dateTimeValue?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      selectValue?: GetAttachedPropertyValuesResponse.Value.SelectValueOption.AsObject,
      multiSelectValue?: GetAttachedPropertyValuesResponse.Value.MultiSelectValue.AsObject,
      propertyConsistency: string,
      valueConsistency?: string,
    }

    export class SelectValueOption extends jspb.Message {
      getId(): string;
      setId(value: string): SelectValueOption;

      getName(): string;
      setName(value: string): SelectValueOption;

      getDescription(): string;
      setDescription(value: string): SelectValueOption;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SelectValueOption.AsObject;
      static toObject(includeInstance: boolean, msg: SelectValueOption): SelectValueOption.AsObject;
      static serializeBinaryToWriter(message: SelectValueOption, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SelectValueOption;
      static deserializeBinaryFromReader(message: SelectValueOption, reader: jspb.BinaryReader): SelectValueOption;
    }

    export namespace SelectValueOption {
      export type AsObject = {
        id: string,
        name: string,
        description: string,
      }
    }


    export class MultiSelectValue extends jspb.Message {
      getSelectValuesList(): Array<GetAttachedPropertyValuesResponse.Value.SelectValueOption>;
      setSelectValuesList(value: Array<GetAttachedPropertyValuesResponse.Value.SelectValueOption>): MultiSelectValue;
      clearSelectValuesList(): MultiSelectValue;
      addSelectValues(value?: GetAttachedPropertyValuesResponse.Value.SelectValueOption, index?: number): GetAttachedPropertyValuesResponse.Value.SelectValueOption;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): MultiSelectValue.AsObject;
      static toObject(includeInstance: boolean, msg: MultiSelectValue): MultiSelectValue.AsObject;
      static serializeBinaryToWriter(message: MultiSelectValue, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): MultiSelectValue;
      static deserializeBinaryFromReader(message: MultiSelectValue, reader: jspb.BinaryReader): MultiSelectValue;
    }

    export namespace MultiSelectValue {
      export type AsObject = {
        selectValuesList: Array<GetAttachedPropertyValuesResponse.Value.SelectValueOption.AsObject>,
      }
    }


    export enum ValueCase { 
      VALUE_NOT_SET = 0,
      TEXT_VALUE = 6,
      NUMBER_VALUE = 7,
      BOOL_VALUE = 8,
      DATE_VALUE = 9,
      DATE_TIME_VALUE = 10,
      SELECT_VALUE = 11,
      MULTI_SELECT_VALUE = 12,
    }

    export enum DescriptionCase { 
      _DESCRIPTION_NOT_SET = 0,
      DESCRIPTION = 4,
    }

    export enum ValueConsistencyCase { 
      _VALUE_CONSISTENCY_NOT_SET = 0,
      VALUE_CONSISTENCY = 14,
    }
  }

}

