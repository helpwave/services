/* eslint-disable */
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.task_svc.v1";

export enum TaskStatus {
  TASK_STATUS_UNSPECIFIED = 0,
  TASK_STATUS_TODO = 1,
  TASK_STATUS_IN_PROGRESS = 2,
  TASK_STATUS_DONE = 3,
  UNRECOGNIZED = -1,
}

export function taskStatusFromJSON(object: any): TaskStatus {
  switch (object) {
    case 0:
    case "TASK_STATUS_UNSPECIFIED":
      return TaskStatus.TASK_STATUS_UNSPECIFIED;
    case 1:
    case "TASK_STATUS_TODO":
      return TaskStatus.TASK_STATUS_TODO;
    case 2:
    case "TASK_STATUS_IN_PROGRESS":
      return TaskStatus.TASK_STATUS_IN_PROGRESS;
    case 3:
    case "TASK_STATUS_DONE":
      return TaskStatus.TASK_STATUS_DONE;
    case -1:
    case "UNRECOGNIZED":
    default:
      return TaskStatus.UNRECOGNIZED;
  }
}

export function taskStatusToJSON(object: TaskStatus): string {
  switch (object) {
    case TaskStatus.TASK_STATUS_UNSPECIFIED:
      return "TASK_STATUS_UNSPECIFIED";
    case TaskStatus.TASK_STATUS_TODO:
      return "TASK_STATUS_TODO";
    case TaskStatus.TASK_STATUS_IN_PROGRESS:
      return "TASK_STATUS_IN_PROGRESS";
    case TaskStatus.TASK_STATUS_DONE:
      return "TASK_STATUS_DONE";
    case TaskStatus.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

export interface CreateTaskRequest {
  /** @gotags: validate:"required" */
  name: string;
  /** @gotags: validate:"required" */
  description: string;
  /** @gotags: validate:"uuid4" */
  patientId: string;
}

export interface CreateTaskResponse {
  id: string;
}

export interface GetTaskRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface GetTaskResponse {
  id: string;
  name: string;
  description: string;
  status: TaskStatus;
  assignedUserId: string;
  patientId: string;
}

export interface UpdateTaskRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
  name?: string | undefined;
  description?: string | undefined;
}

export interface UpdateTaskResponse {
}

export interface TaskToInProgressRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface TaskToInProgressResponse {
}

export interface TaskToDoneRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface TaskToDoneResponse {
}

export interface AssignTaskToUserRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
  /** @gotags: validate:"uuid4" */
  userId: string;
}

export interface AssignTaskToUserResponse {
}

export interface UnassignTaskFromUserRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface UnassignTaskFromUserResponse {
}

function createBaseCreateTaskRequest(): CreateTaskRequest {
  return { name: "", description: "", patientId: "" };
}

export const CreateTaskRequest = {
  encode(message: CreateTaskRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.patientId !== "") {
      writer.uint32(26).string(message.patientId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateTaskRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateTaskRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.name = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.description = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.patientId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateTaskRequest {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
      patientId: isSet(object.patientId) ? String(object.patientId) : "",
    };
  },

  toJSON(message: CreateTaskRequest): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined && (obj.description = message.description);
    message.patientId !== undefined && (obj.patientId = message.patientId);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateTaskRequest>, I>>(base?: I): CreateTaskRequest {
    return CreateTaskRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateTaskRequest>, I>>(object: I): CreateTaskRequest {
    const message = createBaseCreateTaskRequest();
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    message.patientId = object.patientId ?? "";
    return message;
  },
};

function createBaseCreateTaskResponse(): CreateTaskResponse {
  return { id: "" };
}

export const CreateTaskResponse = {
  encode(message: CreateTaskResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateTaskResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateTaskResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateTaskResponse {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: CreateTaskResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateTaskResponse>, I>>(base?: I): CreateTaskResponse {
    return CreateTaskResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateTaskResponse>, I>>(object: I): CreateTaskResponse {
    const message = createBaseCreateTaskResponse();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetTaskRequest(): GetTaskRequest {
  return { id: "" };
}

export const GetTaskRequest = {
  encode(message: GetTaskRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetTaskRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetTaskRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetTaskRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: GetTaskRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetTaskRequest>, I>>(base?: I): GetTaskRequest {
    return GetTaskRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetTaskRequest>, I>>(object: I): GetTaskRequest {
    const message = createBaseGetTaskRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetTaskResponse(): GetTaskResponse {
  return { id: "", name: "", description: "", status: 0, assignedUserId: "", patientId: "" };
}

export const GetTaskResponse = {
  encode(message: GetTaskResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    if (message.status !== 0) {
      writer.uint32(32).int32(message.status);
    }
    if (message.assignedUserId !== "") {
      writer.uint32(42).string(message.assignedUserId);
    }
    if (message.patientId !== "") {
      writer.uint32(50).string(message.patientId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetTaskResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetTaskResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.name = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.description = reader.string();
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.status = reader.int32() as any;
          continue;
        case 5:
          if (tag != 42) {
            break;
          }

          message.assignedUserId = reader.string();
          continue;
        case 6:
          if (tag != 50) {
            break;
          }

          message.patientId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetTaskResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
      status: isSet(object.status) ? taskStatusFromJSON(object.status) : 0,
      assignedUserId: isSet(object.assignedUserId) ? String(object.assignedUserId) : "",
      patientId: isSet(object.patientId) ? String(object.patientId) : "",
    };
  },

  toJSON(message: GetTaskResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined && (obj.description = message.description);
    message.status !== undefined && (obj.status = taskStatusToJSON(message.status));
    message.assignedUserId !== undefined && (obj.assignedUserId = message.assignedUserId);
    message.patientId !== undefined && (obj.patientId = message.patientId);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetTaskResponse>, I>>(base?: I): GetTaskResponse {
    return GetTaskResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetTaskResponse>, I>>(object: I): GetTaskResponse {
    const message = createBaseGetTaskResponse();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    message.status = object.status ?? 0;
    message.assignedUserId = object.assignedUserId ?? "";
    message.patientId = object.patientId ?? "";
    return message;
  },
};

function createBaseUpdateTaskRequest(): UpdateTaskRequest {
  return { id: "", name: undefined, description: undefined };
}

export const UpdateTaskRequest = {
  encode(message: UpdateTaskRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== undefined) {
      writer.uint32(18).string(message.name);
    }
    if (message.description !== undefined) {
      writer.uint32(26).string(message.description);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateTaskRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateTaskRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.name = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.description = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpdateTaskRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : undefined,
      description: isSet(object.description) ? String(object.description) : undefined,
    };
  },

  toJSON(message: UpdateTaskRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined && (obj.description = message.description);
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateTaskRequest>, I>>(base?: I): UpdateTaskRequest {
    return UpdateTaskRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateTaskRequest>, I>>(object: I): UpdateTaskRequest {
    const message = createBaseUpdateTaskRequest();
    message.id = object.id ?? "";
    message.name = object.name ?? undefined;
    message.description = object.description ?? undefined;
    return message;
  },
};

function createBaseUpdateTaskResponse(): UpdateTaskResponse {
  return {};
}

export const UpdateTaskResponse = {
  encode(_: UpdateTaskResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateTaskResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateTaskResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): UpdateTaskResponse {
    return {};
  },

  toJSON(_: UpdateTaskResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateTaskResponse>, I>>(base?: I): UpdateTaskResponse {
    return UpdateTaskResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateTaskResponse>, I>>(_: I): UpdateTaskResponse {
    const message = createBaseUpdateTaskResponse();
    return message;
  },
};

function createBaseTaskToInProgressRequest(): TaskToInProgressRequest {
  return { id: "" };
}

export const TaskToInProgressRequest = {
  encode(message: TaskToInProgressRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TaskToInProgressRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTaskToInProgressRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): TaskToInProgressRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: TaskToInProgressRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<TaskToInProgressRequest>, I>>(base?: I): TaskToInProgressRequest {
    return TaskToInProgressRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<TaskToInProgressRequest>, I>>(object: I): TaskToInProgressRequest {
    const message = createBaseTaskToInProgressRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseTaskToInProgressResponse(): TaskToInProgressResponse {
  return {};
}

export const TaskToInProgressResponse = {
  encode(_: TaskToInProgressResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TaskToInProgressResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTaskToInProgressResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): TaskToInProgressResponse {
    return {};
  },

  toJSON(_: TaskToInProgressResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<TaskToInProgressResponse>, I>>(base?: I): TaskToInProgressResponse {
    return TaskToInProgressResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<TaskToInProgressResponse>, I>>(_: I): TaskToInProgressResponse {
    const message = createBaseTaskToInProgressResponse();
    return message;
  },
};

function createBaseTaskToDoneRequest(): TaskToDoneRequest {
  return { id: "" };
}

export const TaskToDoneRequest = {
  encode(message: TaskToDoneRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TaskToDoneRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTaskToDoneRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): TaskToDoneRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: TaskToDoneRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<TaskToDoneRequest>, I>>(base?: I): TaskToDoneRequest {
    return TaskToDoneRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<TaskToDoneRequest>, I>>(object: I): TaskToDoneRequest {
    const message = createBaseTaskToDoneRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseTaskToDoneResponse(): TaskToDoneResponse {
  return {};
}

export const TaskToDoneResponse = {
  encode(_: TaskToDoneResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TaskToDoneResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTaskToDoneResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): TaskToDoneResponse {
    return {};
  },

  toJSON(_: TaskToDoneResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<TaskToDoneResponse>, I>>(base?: I): TaskToDoneResponse {
    return TaskToDoneResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<TaskToDoneResponse>, I>>(_: I): TaskToDoneResponse {
    const message = createBaseTaskToDoneResponse();
    return message;
  },
};

function createBaseAssignTaskToUserRequest(): AssignTaskToUserRequest {
  return { id: "", userId: "" };
}

export const AssignTaskToUserRequest = {
  encode(message: AssignTaskToUserRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.userId !== "") {
      writer.uint32(18).string(message.userId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AssignTaskToUserRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAssignTaskToUserRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.userId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AssignTaskToUserRequest {
    return { id: isSet(object.id) ? String(object.id) : "", userId: isSet(object.userId) ? String(object.userId) : "" };
  },

  toJSON(message: AssignTaskToUserRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.userId !== undefined && (obj.userId = message.userId);
    return obj;
  },

  create<I extends Exact<DeepPartial<AssignTaskToUserRequest>, I>>(base?: I): AssignTaskToUserRequest {
    return AssignTaskToUserRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<AssignTaskToUserRequest>, I>>(object: I): AssignTaskToUserRequest {
    const message = createBaseAssignTaskToUserRequest();
    message.id = object.id ?? "";
    message.userId = object.userId ?? "";
    return message;
  },
};

function createBaseAssignTaskToUserResponse(): AssignTaskToUserResponse {
  return {};
}

export const AssignTaskToUserResponse = {
  encode(_: AssignTaskToUserResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AssignTaskToUserResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAssignTaskToUserResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): AssignTaskToUserResponse {
    return {};
  },

  toJSON(_: AssignTaskToUserResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<AssignTaskToUserResponse>, I>>(base?: I): AssignTaskToUserResponse {
    return AssignTaskToUserResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<AssignTaskToUserResponse>, I>>(_: I): AssignTaskToUserResponse {
    const message = createBaseAssignTaskToUserResponse();
    return message;
  },
};

function createBaseUnassignTaskFromUserRequest(): UnassignTaskFromUserRequest {
  return { id: "" };
}

export const UnassignTaskFromUserRequest = {
  encode(message: UnassignTaskFromUserRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UnassignTaskFromUserRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnassignTaskFromUserRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UnassignTaskFromUserRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: UnassignTaskFromUserRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<UnassignTaskFromUserRequest>, I>>(base?: I): UnassignTaskFromUserRequest {
    return UnassignTaskFromUserRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UnassignTaskFromUserRequest>, I>>(object: I): UnassignTaskFromUserRequest {
    const message = createBaseUnassignTaskFromUserRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseUnassignTaskFromUserResponse(): UnassignTaskFromUserResponse {
  return {};
}

export const UnassignTaskFromUserResponse = {
  encode(_: UnassignTaskFromUserResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UnassignTaskFromUserResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnassignTaskFromUserResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): UnassignTaskFromUserResponse {
    return {};
  },

  toJSON(_: UnassignTaskFromUserResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UnassignTaskFromUserResponse>, I>>(base?: I): UnassignTaskFromUserResponse {
    return UnassignTaskFromUserResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UnassignTaskFromUserResponse>, I>>(_: I): UnassignTaskFromUserResponse {
    const message = createBaseUnassignTaskFromUserResponse();
    return message;
  },
};

export interface TaskService {
  CreateTask(request: CreateTaskRequest): Promise<CreateTaskResponse>;
  GetTask(request: GetTaskRequest): Promise<GetTaskResponse>;
  UpdateTask(request: UpdateTaskRequest): Promise<UpdateTaskResponse>;
  TaskToInProgress(request: TaskToInProgressRequest): Promise<TaskToInProgressResponse>;
  TaskToDone(request: TaskToDoneRequest): Promise<TaskToDoneResponse>;
  AssignTaskToUser(request: AssignTaskToUserRequest): Promise<AssignTaskToUserResponse>;
  UnassignTaskFromUser(request: UnassignTaskFromUserRequest): Promise<UnassignTaskFromUserResponse>;
}

export class TaskServiceClientImpl implements TaskService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.task_svc.v1.TaskService";
    this.rpc = rpc;
    this.CreateTask = this.CreateTask.bind(this);
    this.GetTask = this.GetTask.bind(this);
    this.UpdateTask = this.UpdateTask.bind(this);
    this.TaskToInProgress = this.TaskToInProgress.bind(this);
    this.TaskToDone = this.TaskToDone.bind(this);
    this.AssignTaskToUser = this.AssignTaskToUser.bind(this);
    this.UnassignTaskFromUser = this.UnassignTaskFromUser.bind(this);
  }
  CreateTask(request: CreateTaskRequest): Promise<CreateTaskResponse> {
    const data = CreateTaskRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateTask", data);
    return promise.then((data) => CreateTaskResponse.decode(_m0.Reader.create(data)));
  }

  GetTask(request: GetTaskRequest): Promise<GetTaskResponse> {
    const data = GetTaskRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "GetTask", data);
    return promise.then((data) => GetTaskResponse.decode(_m0.Reader.create(data)));
  }

  UpdateTask(request: UpdateTaskRequest): Promise<UpdateTaskResponse> {
    const data = UpdateTaskRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UpdateTask", data);
    return promise.then((data) => UpdateTaskResponse.decode(_m0.Reader.create(data)));
  }

  TaskToInProgress(request: TaskToInProgressRequest): Promise<TaskToInProgressResponse> {
    const data = TaskToInProgressRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "TaskToInProgress", data);
    return promise.then((data) => TaskToInProgressResponse.decode(_m0.Reader.create(data)));
  }

  TaskToDone(request: TaskToDoneRequest): Promise<TaskToDoneResponse> {
    const data = TaskToDoneRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "TaskToDone", data);
    return promise.then((data) => TaskToDoneResponse.decode(_m0.Reader.create(data)));
  }

  AssignTaskToUser(request: AssignTaskToUserRequest): Promise<AssignTaskToUserResponse> {
    const data = AssignTaskToUserRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "AssignTaskToUser", data);
    return promise.then((data) => AssignTaskToUserResponse.decode(_m0.Reader.create(data)));
  }

  UnassignTaskFromUser(request: UnassignTaskFromUserRequest): Promise<UnassignTaskFromUserResponse> {
    const data = UnassignTaskFromUserRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UnassignTaskFromUser", data);
    return promise.then((data) => UnassignTaskFromUserResponse.decode(_m0.Reader.create(data)));
  }
}

interface Rpc {
  request(service: string, method: string, data: Uint8Array): Promise<Uint8Array>;
}

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
