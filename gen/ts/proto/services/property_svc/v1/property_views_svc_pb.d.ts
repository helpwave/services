import * as jspb from 'google-protobuf'



export class FilterUpdate extends jspb.Message {
  getAppendToAlwaysIncludeList(): Array<string>;
  setAppendToAlwaysIncludeList(value: Array<string>): FilterUpdate;
  clearAppendToAlwaysIncludeList(): FilterUpdate;
  addAppendToAlwaysInclude(value: string, index?: number): FilterUpdate;

  getRemoveFromAlwaysIncludeList(): Array<string>;
  setRemoveFromAlwaysIncludeList(value: Array<string>): FilterUpdate;
  clearRemoveFromAlwaysIncludeList(): FilterUpdate;
  addRemoveFromAlwaysInclude(value: string, index?: number): FilterUpdate;

  getAppendToDontAlwaysIncludeList(): Array<string>;
  setAppendToDontAlwaysIncludeList(value: Array<string>): FilterUpdate;
  clearAppendToDontAlwaysIncludeList(): FilterUpdate;
  addAppendToDontAlwaysInclude(value: string, index?: number): FilterUpdate;

  getRemoveFromDontAlwaysIncludeList(): Array<string>;
  setRemoveFromDontAlwaysIncludeList(value: Array<string>): FilterUpdate;
  clearRemoveFromDontAlwaysIncludeList(): FilterUpdate;
  addRemoveFromDontAlwaysInclude(value: string, index?: number): FilterUpdate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): FilterUpdate.AsObject;
  static toObject(includeInstance: boolean, msg: FilterUpdate): FilterUpdate.AsObject;
  static serializeBinaryToWriter(message: FilterUpdate, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): FilterUpdate;
  static deserializeBinaryFromReader(message: FilterUpdate, reader: jspb.BinaryReader): FilterUpdate;
}

export namespace FilterUpdate {
  export type AsObject = {
    appendToAlwaysIncludeList: Array<string>,
    removeFromAlwaysIncludeList: Array<string>,
    appendToDontAlwaysIncludeList: Array<string>,
    removeFromDontAlwaysIncludeList: Array<string>,
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

