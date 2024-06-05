import * as jspb from 'google-protobuf'

import * as proto_services_property_svc_v1_property_value_svc_pb from '../../../../proto/services/property_svc/v1/property_value_svc_pb'; // proto import: "proto/services/property_svc/v1/property_value_svc.proto"


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

export class UpdatePropertyViewRuleRequest extends jspb.Message {
  getFilterUpdate(): FilterUpdate | undefined;
  setFilterUpdate(value?: FilterUpdate): UpdatePropertyViewRuleRequest;
  hasFilterUpdate(): boolean;
  clearFilterUpdate(): UpdatePropertyViewRuleRequest;

  getTaskMatcher(): proto_services_property_svc_v1_property_value_svc_pb.TaskPropertyMatcher | undefined;
  setTaskMatcher(value?: proto_services_property_svc_v1_property_value_svc_pb.TaskPropertyMatcher): UpdatePropertyViewRuleRequest;
  hasTaskMatcher(): boolean;
  clearTaskMatcher(): UpdatePropertyViewRuleRequest;

  getMatcherCase(): UpdatePropertyViewRuleRequest.MatcherCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertyViewRuleRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertyViewRuleRequest): UpdatePropertyViewRuleRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertyViewRuleRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertyViewRuleRequest;
  static deserializeBinaryFromReader(message: UpdatePropertyViewRuleRequest, reader: jspb.BinaryReader): UpdatePropertyViewRuleRequest;
}

export namespace UpdatePropertyViewRuleRequest {
  export type AsObject = {
    filterUpdate?: FilterUpdate.AsObject,
    taskMatcher?: proto_services_property_svc_v1_property_value_svc_pb.TaskPropertyMatcher.AsObject,
  }

  export enum MatcherCase { 
    MATCHER_NOT_SET = 0,
    TASK_MATCHER = 2,
  }
}

export class UpdatePropertyViewRuleResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertyViewRuleResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertyViewRuleResponse): UpdatePropertyViewRuleResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertyViewRuleResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertyViewRuleResponse;
  static deserializeBinaryFromReader(message: UpdatePropertyViewRuleResponse, reader: jspb.BinaryReader): UpdatePropertyViewRuleResponse;
}

export namespace UpdatePropertyViewRuleResponse {
  export type AsObject = {
  }
}

