import * as jspb from 'google-protobuf'



export class CreateTaskRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateTaskRequest;

  getDescription(): string;
  setDescription(value: string): CreateTaskRequest;

  getPatientId(): string;
  setPatientId(value: string): CreateTaskRequest;

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
    description: string,
    patientId: string,
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

  getDescription(): string;
  setDescription(value: string): GetTaskResponse;

  getStatus(): TaskStatus;
  setStatus(value: TaskStatus): GetTaskResponse;

  getAssignedUserId(): string;
  setAssignedUserId(value: string): GetTaskResponse;

  getPatientId(): string;
  setPatientId(value: string): GetTaskResponse;

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
    description: string,
    status: TaskStatus,
    assignedUserId: string,
    patientId: string,
  }
}

export class UpdateTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateTaskRequest;

  getName(): string;
  setName(value: string): UpdateTaskRequest;
  hasName(): boolean;
  clearName(): UpdateTaskRequest;

  getDescription(): string;
  setDescription(value: string): UpdateTaskRequest;
  hasDescription(): boolean;
  clearDescription(): UpdateTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskRequest): UpdateTaskRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskRequest;
  static deserializeBinaryFromReader(message: UpdateTaskRequest, reader: jspb.BinaryReader): UpdateTaskRequest;
}

export namespace UpdateTaskRequest {
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

export class UpdateTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskResponse): UpdateTaskResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskResponse;
  static deserializeBinaryFromReader(message: UpdateTaskResponse, reader: jspb.BinaryReader): UpdateTaskResponse;
}

export namespace UpdateTaskResponse {
  export type AsObject = {
  }
}

export class TaskToInProgressRequest extends jspb.Message {
  getId(): string;
  setId(value: string): TaskToInProgressRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskToInProgressRequest.AsObject;
  static toObject(includeInstance: boolean, msg: TaskToInProgressRequest): TaskToInProgressRequest.AsObject;
  static serializeBinaryToWriter(message: TaskToInProgressRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskToInProgressRequest;
  static deserializeBinaryFromReader(message: TaskToInProgressRequest, reader: jspb.BinaryReader): TaskToInProgressRequest;
}

export namespace TaskToInProgressRequest {
  export type AsObject = {
    id: string,
  }
}

export class TaskToInProgressResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskToInProgressResponse.AsObject;
  static toObject(includeInstance: boolean, msg: TaskToInProgressResponse): TaskToInProgressResponse.AsObject;
  static serializeBinaryToWriter(message: TaskToInProgressResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskToInProgressResponse;
  static deserializeBinaryFromReader(message: TaskToInProgressResponse, reader: jspb.BinaryReader): TaskToInProgressResponse;
}

export namespace TaskToInProgressResponse {
  export type AsObject = {
  }
}

export class TaskToDoneRequest extends jspb.Message {
  getId(): string;
  setId(value: string): TaskToDoneRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskToDoneRequest.AsObject;
  static toObject(includeInstance: boolean, msg: TaskToDoneRequest): TaskToDoneRequest.AsObject;
  static serializeBinaryToWriter(message: TaskToDoneRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskToDoneRequest;
  static deserializeBinaryFromReader(message: TaskToDoneRequest, reader: jspb.BinaryReader): TaskToDoneRequest;
}

export namespace TaskToDoneRequest {
  export type AsObject = {
    id: string,
  }
}

export class TaskToDoneResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskToDoneResponse.AsObject;
  static toObject(includeInstance: boolean, msg: TaskToDoneResponse): TaskToDoneResponse.AsObject;
  static serializeBinaryToWriter(message: TaskToDoneResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskToDoneResponse;
  static deserializeBinaryFromReader(message: TaskToDoneResponse, reader: jspb.BinaryReader): TaskToDoneResponse;
}

export namespace TaskToDoneResponse {
  export type AsObject = {
  }
}

export class AssignTaskToUserRequest extends jspb.Message {
  getId(): string;
  setId(value: string): AssignTaskToUserRequest;

  getUserId(): string;
  setUserId(value: string): AssignTaskToUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignTaskToUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AssignTaskToUserRequest): AssignTaskToUserRequest.AsObject;
  static serializeBinaryToWriter(message: AssignTaskToUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignTaskToUserRequest;
  static deserializeBinaryFromReader(message: AssignTaskToUserRequest, reader: jspb.BinaryReader): AssignTaskToUserRequest;
}

export namespace AssignTaskToUserRequest {
  export type AsObject = {
    id: string,
    userId: string,
  }
}

export class AssignTaskToUserResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignTaskToUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AssignTaskToUserResponse): AssignTaskToUserResponse.AsObject;
  static serializeBinaryToWriter(message: AssignTaskToUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignTaskToUserResponse;
  static deserializeBinaryFromReader(message: AssignTaskToUserResponse, reader: jspb.BinaryReader): AssignTaskToUserResponse;
}

export namespace AssignTaskToUserResponse {
  export type AsObject = {
  }
}

export class UnassignTaskFromUserRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UnassignTaskFromUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignTaskFromUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignTaskFromUserRequest): UnassignTaskFromUserRequest.AsObject;
  static serializeBinaryToWriter(message: UnassignTaskFromUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignTaskFromUserRequest;
  static deserializeBinaryFromReader(message: UnassignTaskFromUserRequest, reader: jspb.BinaryReader): UnassignTaskFromUserRequest;
}

export namespace UnassignTaskFromUserRequest {
  export type AsObject = {
    id: string,
  }
}

export class UnassignTaskFromUserResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignTaskFromUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignTaskFromUserResponse): UnassignTaskFromUserResponse.AsObject;
  static serializeBinaryToWriter(message: UnassignTaskFromUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignTaskFromUserResponse;
  static deserializeBinaryFromReader(message: UnassignTaskFromUserResponse, reader: jspb.BinaryReader): UnassignTaskFromUserResponse;
}

export namespace UnassignTaskFromUserResponse {
  export type AsObject = {
  }
}

export enum TaskStatus { 
  TASK_STATUS_UNSPECIFIED = 0,
  TASK_STATUS_TODO = 1,
  TASK_STATUS_IN_PROGRESS = 2,
  TASK_STATUS_DONE = 3,
}
