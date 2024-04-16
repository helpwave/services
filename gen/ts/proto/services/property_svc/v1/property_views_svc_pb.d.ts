import * as jspb from 'google-protobuf'



export class FilterUpdate extends jspb.Message {
  getAppendToAlwaysInclude(): string;
  setAppendToAlwaysInclude(value: string): FilterUpdate;
  hasAppendToAlwaysInclude(): boolean;
  clearAppendToAlwaysInclude(): FilterUpdate;

  getRemoveFromAlwaysInclude(): string;
  setRemoveFromAlwaysInclude(value: string): FilterUpdate;
  hasRemoveFromAlwaysInclude(): boolean;
  clearRemoveFromAlwaysInclude(): FilterUpdate;

  getAppendToDontAlwaysInclude(): string;
  setAppendToDontAlwaysInclude(value: string): FilterUpdate;
  hasAppendToDontAlwaysInclude(): boolean;
  clearAppendToDontAlwaysInclude(): FilterUpdate;

  getRemoveFromDontAlwaysInclude(): string;
  setRemoveFromDontAlwaysInclude(value: string): FilterUpdate;
  hasRemoveFromDontAlwaysInclude(): boolean;
  clearRemoveFromDontAlwaysInclude(): FilterUpdate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FilterUpdate.AsObject;
  static toObject(includeInstance: boolean, msg: FilterUpdate): FilterUpdate.AsObject;
  static serializeBinaryToWriter(message: FilterUpdate, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FilterUpdate;
  static deserializeBinaryFromReader(message: FilterUpdate, reader: jspb.BinaryReader): FilterUpdate;
}

export namespace FilterUpdate {
  export type AsObject = {
    appendToAlwaysInclude?: string,
    removeFromAlwaysInclude?: string,
    appendToDontAlwaysInclude?: string,
    removeFromDontAlwaysInclude?: string,
  }

  export enum AppendToAlwaysIncludeCase { 
    _APPEND_TO_ALWAYS_INCLUDE_NOT_SET = 0,
    APPEND_TO_ALWAYS_INCLUDE = 1,
  }

  export enum RemoveFromAlwaysIncludeCase { 
    _REMOVE_FROM_ALWAYS_INCLUDE_NOT_SET = 0,
    REMOVE_FROM_ALWAYS_INCLUDE = 2,
  }

  export enum AppendToDontAlwaysIncludeCase { 
    _APPEND_TO_DONT_ALWAYS_INCLUDE_NOT_SET = 0,
    APPEND_TO_DONT_ALWAYS_INCLUDE = 3,
  }

  export enum RemoveFromDontAlwaysIncludeCase { 
    _REMOVE_FROM_DONT_ALWAYS_INCLUDE_NOT_SET = 0,
    REMOVE_FROM_DONT_ALWAYS_INCLUDE = 4,
  }
}

export class UpdateTaskPropertyViewRuleRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): UpdateTaskPropertyViewRuleRequest;
  hasWardId(): boolean;
  clearWardId(): UpdateTaskPropertyViewRuleRequest;

  getTaskId(): string;
  setTaskId(value: string): UpdateTaskPropertyViewRuleRequest;
  hasTaskId(): boolean;
  clearTaskId(): UpdateTaskPropertyViewRuleRequest;

  getFilterUpdate(): FilterUpdate | undefined;
  setFilterUpdate(value?: FilterUpdate): UpdateTaskPropertyViewRuleRequest;
  hasFilterUpdate(): boolean;
  clearFilterUpdate(): UpdateTaskPropertyViewRuleRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskPropertyViewRuleRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskPropertyViewRuleRequest): UpdateTaskPropertyViewRuleRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskPropertyViewRuleRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskPropertyViewRuleRequest;
  static deserializeBinaryFromReader(message: UpdateTaskPropertyViewRuleRequest, reader: jspb.BinaryReader): UpdateTaskPropertyViewRuleRequest;
}

export namespace UpdateTaskPropertyViewRuleRequest {
  export type AsObject = {
    wardId?: string,
    taskId?: string,
    filterUpdate?: FilterUpdate.AsObject,
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

export class UpdateTaskPropertyViewRuleResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskPropertyViewRuleResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskPropertyViewRuleResponse): UpdateTaskPropertyViewRuleResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskPropertyViewRuleResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskPropertyViewRuleResponse;
  static deserializeBinaryFromReader(message: UpdateTaskPropertyViewRuleResponse, reader: jspb.BinaryReader): UpdateTaskPropertyViewRuleResponse;
}

export namespace UpdateTaskPropertyViewRuleResponse {
  export type AsObject = {
  }
}

