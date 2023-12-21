import * as jspb from 'google-protobuf'

import * as google_protobuf_empty_pb from 'google-protobuf/google/protobuf/empty_pb'; // proto import: "google/protobuf/empty.proto"


export class CreateTaskRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateTaskRequest): CreateTaskRequest.AsObject;
  static serializeBinaryToWriter(message: CreateTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateTaskRequest;
  static deserializeBinaryFromReader(message: CreateTaskRequest, reader: jspb.BinaryReader): CreateTaskRequest;
}

export namespace CreateTaskRequest {
  export type AsObject = {
    name: string,
  }
}

export class CreateTaskResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateTaskResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateTaskResponse): CreateTaskResponse.AsObject;
  static serializeBinaryToWriter(message: CreateTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateTaskResponse;
  static deserializeBinaryFromReader(message: CreateTaskResponse, reader: jspb.BinaryReader): CreateTaskResponse;
}

export namespace CreateTaskResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetTaskRequest): GetTaskRequest.AsObject;
  static serializeBinaryToWriter(message: GetTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetTaskRequest;
  static deserializeBinaryFromReader(message: GetTaskRequest, reader: jspb.BinaryReader): GetTaskRequest;
}

export namespace GetTaskRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetTaskResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetTaskResponse;

  getName(): string;
  setName(value: string): GetTaskResponse;

  getAssignedUsersList(): Array<string>;
  setAssignedUsersList(value: Array<string>): GetTaskResponse;
  clearAssignedUsersList(): GetTaskResponse;
  addAssignedUsers(value: string, index?: number): GetTaskResponse;

  getSubtasksList(): Array<GetTaskResponse.Subtask>;
  setSubtasksList(value: Array<GetTaskResponse.Subtask>): GetTaskResponse;
  clearSubtasksList(): GetTaskResponse;
  addSubtasks(value?: GetTaskResponse.Subtask, index?: number): GetTaskResponse.Subtask;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetTaskResponse): GetTaskResponse.AsObject;
  static serializeBinaryToWriter(message: GetTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetTaskResponse;
  static deserializeBinaryFromReader(message: GetTaskResponse, reader: jspb.BinaryReader): GetTaskResponse;
}

export namespace GetTaskResponse {
  export type AsObject = {
    id: string,
    name: string,
    assignedUsersList: Array<string>,
    subtasksList: Array<GetTaskResponse.Subtask.AsObject>,
  }

  export class Subtask extends jspb.Message {
    getId(): string;
    setId(value: string): Subtask;

    getName(): string;
    setName(value: string): Subtask;

    getDone(): boolean;
    setDone(value: boolean): Subtask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Subtask.AsObject;
    static toObject(includeInstance: boolean, msg: Subtask): Subtask.AsObject;
    static serializeBinaryToWriter(message: Subtask, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Subtask;
    static deserializeBinaryFromReader(message: Subtask, reader: jspb.BinaryReader): Subtask;
  }

  export namespace Subtask {
    export type AsObject = {
      id: string,
      name: string,
      done: boolean,
    }
  }

}

export class AssignTaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): AssignTaskRequest;

  getUserId(): string;
  setUserId(value: string): AssignTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AssignTaskRequest): AssignTaskRequest.AsObject;
  static serializeBinaryToWriter(message: AssignTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignTaskRequest;
  static deserializeBinaryFromReader(message: AssignTaskRequest, reader: jspb.BinaryReader): AssignTaskRequest;
}

export namespace AssignTaskRequest {
  export type AsObject = {
    taskId: string,
    userId: string,
  }
}

export class AssignTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AssignTaskResponse): AssignTaskResponse.AsObject;
  static serializeBinaryToWriter(message: AssignTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignTaskResponse;
  static deserializeBinaryFromReader(message: AssignTaskResponse, reader: jspb.BinaryReader): AssignTaskResponse;
}

export namespace AssignTaskResponse {
  export type AsObject = {
  }
}

export class CreateSubtaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): CreateSubtaskRequest;

  getSubtask(): CreateSubtaskRequest.Subtask | undefined;
  setSubtask(value?: CreateSubtaskRequest.Subtask): CreateSubtaskRequest;
  hasSubtask(): boolean;
  clearSubtask(): CreateSubtaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateSubtaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateSubtaskRequest): CreateSubtaskRequest.AsObject;
  static serializeBinaryToWriter(message: CreateSubtaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateSubtaskRequest;
  static deserializeBinaryFromReader(message: CreateSubtaskRequest, reader: jspb.BinaryReader): CreateSubtaskRequest;
}

export namespace CreateSubtaskRequest {
  export type AsObject = {
    taskId: string,
    subtask?: CreateSubtaskRequest.Subtask.AsObject,
  }

  export class Subtask extends jspb.Message {
    getName(): string;
    setName(value: string): Subtask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Subtask.AsObject;
    static toObject(includeInstance: boolean, msg: Subtask): Subtask.AsObject;
    static serializeBinaryToWriter(message: Subtask, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Subtask;
    static deserializeBinaryFromReader(message: Subtask, reader: jspb.BinaryReader): Subtask;
  }

  export namespace Subtask {
    export type AsObject = {
      name: string,
    }
  }

}

export class CreateSubtaskResponse extends jspb.Message {
  getSubtaskId(): string;
  setSubtaskId(value: string): CreateSubtaskResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateSubtaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateSubtaskResponse): CreateSubtaskResponse.AsObject;
  static serializeBinaryToWriter(message: CreateSubtaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateSubtaskResponse;
  static deserializeBinaryFromReader(message: CreateSubtaskResponse, reader: jspb.BinaryReader): CreateSubtaskResponse;
}

export namespace CreateSubtaskResponse {
  export type AsObject = {
    subtaskId: string,
  }
}

export class CompleteSubtaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): CompleteSubtaskRequest;

  getSubtaskId(): string;
  setSubtaskId(value: string): CompleteSubtaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CompleteSubtaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CompleteSubtaskRequest): CompleteSubtaskRequest.AsObject;
  static serializeBinaryToWriter(message: CompleteSubtaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CompleteSubtaskRequest;
  static deserializeBinaryFromReader(message: CompleteSubtaskRequest, reader: jspb.BinaryReader): CompleteSubtaskRequest;
}

export namespace CompleteSubtaskRequest {
  export type AsObject = {
    taskId: string,
    subtaskId: string,
  }
}

export class CompleteSubtaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CompleteSubtaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CompleteSubtaskResponse): CompleteSubtaskResponse.AsObject;
  static serializeBinaryToWriter(message: CompleteSubtaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CompleteSubtaskResponse;
  static deserializeBinaryFromReader(message: CompleteSubtaskResponse, reader: jspb.BinaryReader): CompleteSubtaskResponse;
}

export namespace CompleteSubtaskResponse {
  export type AsObject = {
  }
}

export class UncompleteSubtaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): UncompleteSubtaskRequest;

  getSubtaskId(): string;
  setSubtaskId(value: string): UncompleteSubtaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UncompleteSubtaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UncompleteSubtaskRequest): UncompleteSubtaskRequest.AsObject;
  static serializeBinaryToWriter(message: UncompleteSubtaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UncompleteSubtaskRequest;
  static deserializeBinaryFromReader(message: UncompleteSubtaskRequest, reader: jspb.BinaryReader): UncompleteSubtaskRequest;
}

export namespace UncompleteSubtaskRequest {
  export type AsObject = {
    taskId: string,
    subtaskId: string,
  }
}

export class UncompleteSubtaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UncompleteSubtaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UncompleteSubtaskResponse): UncompleteSubtaskResponse.AsObject;
  static serializeBinaryToWriter(message: UncompleteSubtaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UncompleteSubtaskResponse;
  static deserializeBinaryFromReader(message: UncompleteSubtaskResponse, reader: jspb.BinaryReader): UncompleteSubtaskResponse;
}

export namespace UncompleteSubtaskResponse {
  export type AsObject = {
  }
}

export enum TaskStatus { 
  TASK_STATUS_UNSPECIFIED = 0,
  TASK_STATUS_TODO = 1,
  TASK_STATUS_IN_PROGRESS = 2,
  TASK_STATUS_DONE = 3,
}
