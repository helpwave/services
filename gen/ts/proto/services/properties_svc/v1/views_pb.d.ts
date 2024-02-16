import * as jspb from 'google-protobuf'



export class UpdatePatientPropertyViewRuleRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): UpdatePatientPropertyViewRuleRequest;
  hasWardId(): boolean;
  clearWardId(): UpdatePatientPropertyViewRuleRequest;

  getPatientId(): string;
  setPatientId(value: string): UpdatePatientPropertyViewRuleRequest;
  hasPatientId(): boolean;
  clearPatientId(): UpdatePatientPropertyViewRuleRequest;

  getResetSoftRequired(): boolean;
  setResetSoftRequired(value: boolean): UpdatePatientPropertyViewRuleRequest;

  getSetSoftRequired(): boolean;
  setSetSoftRequired(value: boolean): UpdatePatientPropertyViewRuleRequest;

  getAppendToAlwaysInclude(): string;
  setAppendToAlwaysInclude(value: string): UpdatePatientPropertyViewRuleRequest;
  hasAppendToAlwaysInclude(): boolean;
  clearAppendToAlwaysInclude(): UpdatePatientPropertyViewRuleRequest;

  getRemoveFromAlwaysInclude(): string;
  setRemoveFromAlwaysInclude(value: string): UpdatePatientPropertyViewRuleRequest;
  hasRemoveFromAlwaysInclude(): boolean;
  clearRemoveFromAlwaysInclude(): UpdatePatientPropertyViewRuleRequest;

  getAppendToDontAlwaysInclude(): string;
  setAppendToDontAlwaysInclude(value: string): UpdatePatientPropertyViewRuleRequest;
  hasAppendToDontAlwaysInclude(): boolean;
  clearAppendToDontAlwaysInclude(): UpdatePatientPropertyViewRuleRequest;

  getRemoveFromDontAlwaysInclude(): string;
  setRemoveFromDontAlwaysInclude(value: string): UpdatePatientPropertyViewRuleRequest;
  hasRemoveFromDontAlwaysInclude(): boolean;
  clearRemoveFromDontAlwaysInclude(): UpdatePatientPropertyViewRuleRequest;

  getSoftRequiredCase(): UpdatePatientPropertyViewRuleRequest.SoftRequiredCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientPropertyViewRuleRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientPropertyViewRuleRequest): UpdatePatientPropertyViewRuleRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientPropertyViewRuleRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientPropertyViewRuleRequest;
  static deserializeBinaryFromReader(message: UpdatePatientPropertyViewRuleRequest, reader: jspb.BinaryReader): UpdatePatientPropertyViewRuleRequest;
}

export namespace UpdatePatientPropertyViewRuleRequest {
  export type AsObject = {
    wardId?: string,
    patientId?: string,
    resetSoftRequired: boolean,
    setSoftRequired: boolean,
    appendToAlwaysInclude?: string,
    removeFromAlwaysInclude?: string,
    appendToDontAlwaysInclude?: string,
    removeFromDontAlwaysInclude?: string,
  }

  export enum SoftRequiredCase { 
    SOFT_REQUIRED_NOT_SET = 0,
    RESET_SOFT_REQUIRED = 3,
    SET_SOFT_REQUIRED = 4,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 1,
  }

  export enum PatientIdCase { 
    _PATIENT_ID_NOT_SET = 0,
    PATIENT_ID = 2,
  }

  export enum AppendToAlwaysIncludeCase { 
    _APPEND_TO_ALWAYS_INCLUDE_NOT_SET = 0,
    APPEND_TO_ALWAYS_INCLUDE = 5,
  }

  export enum RemoveFromAlwaysIncludeCase { 
    _REMOVE_FROM_ALWAYS_INCLUDE_NOT_SET = 0,
    REMOVE_FROM_ALWAYS_INCLUDE = 6,
  }

  export enum AppendToDontAlwaysIncludeCase { 
    _APPEND_TO_DONT_ALWAYS_INCLUDE_NOT_SET = 0,
    APPEND_TO_DONT_ALWAYS_INCLUDE = 7,
  }

  export enum RemoveFromDontAlwaysIncludeCase { 
    _REMOVE_FROM_DONT_ALWAYS_INCLUDE_NOT_SET = 0,
    REMOVE_FROM_DONT_ALWAYS_INCLUDE = 8,
  }
}

export class UpdatePatientPropertyViewRuleResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientPropertyViewRuleResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientPropertyViewRuleResponse): UpdatePatientPropertyViewRuleResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientPropertyViewRuleResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientPropertyViewRuleResponse;
  static deserializeBinaryFromReader(message: UpdatePatientPropertyViewRuleResponse, reader: jspb.BinaryReader): UpdatePatientPropertyViewRuleResponse;
}

export namespace UpdatePatientPropertyViewRuleResponse {
  export type AsObject = {
  }
}

export class UpdateOrderRequest extends jspb.Message {
  getPropertyId(): string;
  setPropertyId(value: string): UpdateOrderRequest;

  getPrevNeighbor(): string;
  setPrevNeighbor(value: string): UpdateOrderRequest;
  hasPrevNeighbor(): boolean;
  clearPrevNeighbor(): UpdateOrderRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateOrderRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateOrderRequest): UpdateOrderRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateOrderRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateOrderRequest;
  static deserializeBinaryFromReader(message: UpdateOrderRequest, reader: jspb.BinaryReader): UpdateOrderRequest;
}

export namespace UpdateOrderRequest {
  export type AsObject = {
    propertyId: string,
    prevNeighbor?: string,
  }

  export enum PrevNeighborCase { 
    _PREV_NEIGHBOR_NOT_SET = 0,
    PREV_NEIGHBOR = 2,
  }
}

export class UpdateOrderResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateOrderResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateOrderResponse): UpdateOrderResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateOrderResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateOrderResponse;
  static deserializeBinaryFromReader(message: UpdateOrderResponse, reader: jspb.BinaryReader): UpdateOrderResponse;
}

export namespace UpdateOrderResponse {
  export type AsObject = {
  }
}

