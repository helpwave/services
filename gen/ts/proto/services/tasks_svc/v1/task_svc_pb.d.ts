import * as jspb from 'google-protobuf'

import * as google_protobuf_timestamp_pb from 'google-protobuf/google/protobuf/timestamp_pb'; // proto import: "google/protobuf/timestamp.proto"


export class CreateTaskRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateTaskRequest;

  getDescription(): string;
  setDescription(value: string): CreateTaskRequest;
  hasDescription(): boolean;
  clearDescription(): CreateTaskRequest;

  getPatientId(): string;
  setPatientId(value: string): CreateTaskRequest;

  getPublic(): boolean;
  setPublic(value: boolean): CreateTaskRequest;
  hasPublic(): boolean;
  clearPublic(): CreateTaskRequest;

  getDueAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDueAt(value?: google_protobuf_timestamp_pb.Timestamp): CreateTaskRequest;
  hasDueAt(): boolean;
  clearDueAt(): CreateTaskRequest;

  getInitialStatus(): TaskStatus;
  setInitialStatus(value: TaskStatus): CreateTaskRequest;
  hasInitialStatus(): boolean;
  clearInitialStatus(): CreateTaskRequest;

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
    description?: string,
    patientId: string,
    pb_public?: boolean,
    dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    initialStatus?: TaskStatus,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 2,
  }

  export enum PublicCase { 
    _PUBLIC_NOT_SET = 0,
    PUBLIC = 4,
  }

  export enum InitialStatusCase { 
    _INITIAL_STATUS_NOT_SET = 0,
    INITIAL_STATUS = 6,
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

  getDueAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDueAt(value?: google_protobuf_timestamp_pb.Timestamp): UpdateTaskRequest;
  hasDueAt(): boolean;
  clearDueAt(): UpdateTaskRequest;

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
    dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 3,
  }

  export enum DueAtCase { 
    _DUE_AT_NOT_SET = 0,
    DUE_AT = 4,
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

  getAssignedUsersList(): Array<string>;
  setAssignedUsersList(value: Array<string>): GetTaskResponse;
  clearAssignedUsersList(): GetTaskResponse;
  addAssignedUsers(value: string, index?: number): GetTaskResponse;

  getSubtasksList(): Array<GetTaskResponse.Subtask>;
  setSubtasksList(value: Array<GetTaskResponse.Subtask>): GetTaskResponse;
  clearSubtasksList(): GetTaskResponse;
  addSubtasks(value?: GetTaskResponse.Subtask, index?: number): GetTaskResponse.Subtask;

  getStatus(): TaskStatus;
  setStatus(value: TaskStatus): GetTaskResponse;

  getCreatedAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setCreatedAt(value?: google_protobuf_timestamp_pb.Timestamp): GetTaskResponse;
  hasCreatedAt(): boolean;
  clearCreatedAt(): GetTaskResponse;

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
    assignedUsersList: Array<string>,
    subtasksList: Array<GetTaskResponse.Subtask.AsObject>,
    status: TaskStatus,
    createdAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
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

export class GetTasksByPatientRequest extends jspb.Message {
  getPatientId(): string;
  setPatientId(value: string): GetTasksByPatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetTasksByPatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetTasksByPatientRequest): GetTasksByPatientRequest.AsObject;
  static serializeBinaryToWriter(message: GetTasksByPatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetTasksByPatientRequest;
  static deserializeBinaryFromReader(message: GetTasksByPatientRequest, reader: jspb.BinaryReader): GetTasksByPatientRequest;
}

export namespace GetTasksByPatientRequest {
  export type AsObject = {
    patientId: string,
  }
}

export class GetTasksByPatientResponse extends jspb.Message {
  getTasksList(): Array<GetTasksByPatientResponse.Task>;
  setTasksList(value: Array<GetTasksByPatientResponse.Task>): GetTasksByPatientResponse;
  clearTasksList(): GetTasksByPatientResponse;
  addTasks(value?: GetTasksByPatientResponse.Task, index?: number): GetTasksByPatientResponse.Task;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetTasksByPatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetTasksByPatientResponse): GetTasksByPatientResponse.AsObject;
  static serializeBinaryToWriter(message: GetTasksByPatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetTasksByPatientResponse;
  static deserializeBinaryFromReader(message: GetTasksByPatientResponse, reader: jspb.BinaryReader): GetTasksByPatientResponse;
}

export namespace GetTasksByPatientResponse {
  export type AsObject = {
    tasksList: Array<GetTasksByPatientResponse.Task.AsObject>,
  }

  export class Task extends jspb.Message {
    getId(): string;
    setId(value: string): Task;

    getName(): string;
    setName(value: string): Task;

    getDescription(): string;
    setDescription(value: string): Task;

    getStatus(): TaskStatus;
    setStatus(value: TaskStatus): Task;

    getAssignedUserId(): string;
    setAssignedUserId(value: string): Task;
    hasAssignedUserId(): boolean;
    clearAssignedUserId(): Task;

    getPatientId(): string;
    setPatientId(value: string): Task;

    getPublic(): boolean;
    setPublic(value: boolean): Task;

    getDueAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setDueAt(value?: google_protobuf_timestamp_pb.Timestamp): Task;
    hasDueAt(): boolean;
    clearDueAt(): Task;

    getCreatedBy(): string;
    setCreatedBy(value: string): Task;

    getSubtasksList(): Array<GetTasksByPatientResponse.Task.SubTask>;
    setSubtasksList(value: Array<GetTasksByPatientResponse.Task.SubTask>): Task;
    clearSubtasksList(): Task;
    addSubtasks(value?: GetTasksByPatientResponse.Task.SubTask, index?: number): GetTasksByPatientResponse.Task.SubTask;

    getCreatedAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setCreatedAt(value?: google_protobuf_timestamp_pb.Timestamp): Task;
    hasCreatedAt(): boolean;
    clearCreatedAt(): Task;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Task.AsObject;
    static toObject(includeInstance: boolean, msg: Task): Task.AsObject;
    static serializeBinaryToWriter(message: Task, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Task;
    static deserializeBinaryFromReader(message: Task, reader: jspb.BinaryReader): Task;
  }

  export namespace Task {
    export type AsObject = {
      id: string,
      name: string,
      description: string,
      status: TaskStatus,
      assignedUserId?: string,
      patientId: string,
      pb_public: boolean,
      dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      createdBy: string,
      subtasksList: Array<GetTasksByPatientResponse.Task.SubTask.AsObject>,
      createdAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    }

    export class SubTask extends jspb.Message {
      getId(): string;
      setId(value: string): SubTask;

      getName(): string;
      setName(value: string): SubTask;

      getDone(): boolean;
      setDone(value: boolean): SubTask;

      getCreatedBy(): string;
      setCreatedBy(value: string): SubTask;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SubTask.AsObject;
      static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
      static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SubTask;
      static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
    }

    export namespace SubTask {
      export type AsObject = {
        id: string,
        name: string,
        done: boolean,
        createdBy: string,
      }
    }


    export enum AssignedUserIdCase { 
      _ASSIGNED_USER_ID_NOT_SET = 0,
      ASSIGNED_USER_ID = 5,
    }
  }

}

export class GetTasksByPatientSortedByStatusRequest extends jspb.Message {
  getPatientId(): string;
  setPatientId(value: string): GetTasksByPatientSortedByStatusRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetTasksByPatientSortedByStatusRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetTasksByPatientSortedByStatusRequest): GetTasksByPatientSortedByStatusRequest.AsObject;
  static serializeBinaryToWriter(message: GetTasksByPatientSortedByStatusRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetTasksByPatientSortedByStatusRequest;
  static deserializeBinaryFromReader(message: GetTasksByPatientSortedByStatusRequest, reader: jspb.BinaryReader): GetTasksByPatientSortedByStatusRequest;
}

export namespace GetTasksByPatientSortedByStatusRequest {
  export type AsObject = {
    patientId: string,
  }
}

export class GetTasksByPatientSortedByStatusResponse extends jspb.Message {
  getTodoList(): Array<GetTasksByPatientSortedByStatusResponse.Task>;
  setTodoList(value: Array<GetTasksByPatientSortedByStatusResponse.Task>): GetTasksByPatientSortedByStatusResponse;
  clearTodoList(): GetTasksByPatientSortedByStatusResponse;
  addTodo(value?: GetTasksByPatientSortedByStatusResponse.Task, index?: number): GetTasksByPatientSortedByStatusResponse.Task;

  getInProgressList(): Array<GetTasksByPatientSortedByStatusResponse.Task>;
  setInProgressList(value: Array<GetTasksByPatientSortedByStatusResponse.Task>): GetTasksByPatientSortedByStatusResponse;
  clearInProgressList(): GetTasksByPatientSortedByStatusResponse;
  addInProgress(value?: GetTasksByPatientSortedByStatusResponse.Task, index?: number): GetTasksByPatientSortedByStatusResponse.Task;

  getDoneList(): Array<GetTasksByPatientSortedByStatusResponse.Task>;
  setDoneList(value: Array<GetTasksByPatientSortedByStatusResponse.Task>): GetTasksByPatientSortedByStatusResponse;
  clearDoneList(): GetTasksByPatientSortedByStatusResponse;
  addDone(value?: GetTasksByPatientSortedByStatusResponse.Task, index?: number): GetTasksByPatientSortedByStatusResponse.Task;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetTasksByPatientSortedByStatusResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetTasksByPatientSortedByStatusResponse): GetTasksByPatientSortedByStatusResponse.AsObject;
  static serializeBinaryToWriter(message: GetTasksByPatientSortedByStatusResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetTasksByPatientSortedByStatusResponse;
  static deserializeBinaryFromReader(message: GetTasksByPatientSortedByStatusResponse, reader: jspb.BinaryReader): GetTasksByPatientSortedByStatusResponse;
}

export namespace GetTasksByPatientSortedByStatusResponse {
  export type AsObject = {
    todoList: Array<GetTasksByPatientSortedByStatusResponse.Task.AsObject>,
    inProgressList: Array<GetTasksByPatientSortedByStatusResponse.Task.AsObject>,
    doneList: Array<GetTasksByPatientSortedByStatusResponse.Task.AsObject>,
  }

  export class Task extends jspb.Message {
    getId(): string;
    setId(value: string): Task;

    getName(): string;
    setName(value: string): Task;

    getDescription(): string;
    setDescription(value: string): Task;

    getAssignedUserId(): string;
    setAssignedUserId(value: string): Task;
    hasAssignedUserId(): boolean;
    clearAssignedUserId(): Task;

    getPatientId(): string;
    setPatientId(value: string): Task;

    getPublic(): boolean;
    setPublic(value: boolean): Task;

    getDueAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setDueAt(value?: google_protobuf_timestamp_pb.Timestamp): Task;
    hasDueAt(): boolean;
    clearDueAt(): Task;

    getCreatedBy(): string;
    setCreatedBy(value: string): Task;

    getSubtasksList(): Array<GetTasksByPatientSortedByStatusResponse.Task.SubTask>;
    setSubtasksList(value: Array<GetTasksByPatientSortedByStatusResponse.Task.SubTask>): Task;
    clearSubtasksList(): Task;
    addSubtasks(value?: GetTasksByPatientSortedByStatusResponse.Task.SubTask, index?: number): GetTasksByPatientSortedByStatusResponse.Task.SubTask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Task.AsObject;
    static toObject(includeInstance: boolean, msg: Task): Task.AsObject;
    static serializeBinaryToWriter(message: Task, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Task;
    static deserializeBinaryFromReader(message: Task, reader: jspb.BinaryReader): Task;
  }

  export namespace Task {
    export type AsObject = {
      id: string,
      name: string,
      description: string,
      assignedUserId?: string,
      patientId: string,
      pb_public: boolean,
      dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      createdBy: string,
      subtasksList: Array<GetTasksByPatientSortedByStatusResponse.Task.SubTask.AsObject>,
    }

    export class SubTask extends jspb.Message {
      getId(): string;
      setId(value: string): SubTask;

      getName(): string;
      setName(value: string): SubTask;

      getDone(): boolean;
      setDone(value: boolean): SubTask;

      getCreatedBy(): string;
      setCreatedBy(value: string): SubTask;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SubTask.AsObject;
      static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
      static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SubTask;
      static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
    }

    export namespace SubTask {
      export type AsObject = {
        id: string,
        name: string,
        done: boolean,
        createdBy: string,
      }
    }


    export enum AssignedUserIdCase { 
      _ASSIGNED_USER_ID_NOT_SET = 0,
      ASSIGNED_USER_ID = 5,
    }
  }

}

export class GetAssignedTasksRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAssignedTasksRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAssignedTasksRequest): GetAssignedTasksRequest.AsObject;
  static serializeBinaryToWriter(message: GetAssignedTasksRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAssignedTasksRequest;
  static deserializeBinaryFromReader(message: GetAssignedTasksRequest, reader: jspb.BinaryReader): GetAssignedTasksRequest;
}

export namespace GetAssignedTasksRequest {
  export type AsObject = {
  }
}

export class GetAssignedTasksResponse extends jspb.Message {
  getTasksList(): Array<GetAssignedTasksResponse.Task>;
  setTasksList(value: Array<GetAssignedTasksResponse.Task>): GetAssignedTasksResponse;
  clearTasksList(): GetAssignedTasksResponse;
  addTasks(value?: GetAssignedTasksResponse.Task, index?: number): GetAssignedTasksResponse.Task;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAssignedTasksResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAssignedTasksResponse): GetAssignedTasksResponse.AsObject;
  static serializeBinaryToWriter(message: GetAssignedTasksResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAssignedTasksResponse;
  static deserializeBinaryFromReader(message: GetAssignedTasksResponse, reader: jspb.BinaryReader): GetAssignedTasksResponse;
}

export namespace GetAssignedTasksResponse {
  export type AsObject = {
    tasksList: Array<GetAssignedTasksResponse.Task.AsObject>,
  }

  export class Task extends jspb.Message {
    getId(): string;
    setId(value: string): Task;

    getName(): string;
    setName(value: string): Task;

    getDescription(): string;
    setDescription(value: string): Task;

    getStatus(): TaskStatus;
    setStatus(value: TaskStatus): Task;

    getAssignedUserId(): string;
    setAssignedUserId(value: string): Task;

    getPatient(): GetAssignedTasksResponse.Task.Patient | undefined;
    setPatient(value?: GetAssignedTasksResponse.Task.Patient): Task;
    hasPatient(): boolean;
    clearPatient(): Task;

    getPublic(): boolean;
    setPublic(value: boolean): Task;

    getDueAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setDueAt(value?: google_protobuf_timestamp_pb.Timestamp): Task;
    hasDueAt(): boolean;
    clearDueAt(): Task;

    getCreatedBy(): string;
    setCreatedBy(value: string): Task;

    getSubtasksList(): Array<GetAssignedTasksResponse.Task.SubTask>;
    setSubtasksList(value: Array<GetAssignedTasksResponse.Task.SubTask>): Task;
    clearSubtasksList(): Task;
    addSubtasks(value?: GetAssignedTasksResponse.Task.SubTask, index?: number): GetAssignedTasksResponse.Task.SubTask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Task.AsObject;
    static toObject(includeInstance: boolean, msg: Task): Task.AsObject;
    static serializeBinaryToWriter(message: Task, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Task;
    static deserializeBinaryFromReader(message: Task, reader: jspb.BinaryReader): Task;
  }

  export namespace Task {
    export type AsObject = {
      id: string,
      name: string,
      description: string,
      status: TaskStatus,
      assignedUserId: string,
      patient?: GetAssignedTasksResponse.Task.Patient.AsObject,
      pb_public: boolean,
      dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      createdBy: string,
      subtasksList: Array<GetAssignedTasksResponse.Task.SubTask.AsObject>,
    }

    export class Patient extends jspb.Message {
      getId(): string;
      setId(value: string): Patient;

      getName(): string;
      setName(value: string): Patient;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): Patient.AsObject;
      static toObject(includeInstance: boolean, msg: Patient): Patient.AsObject;
      static serializeBinaryToWriter(message: Patient, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): Patient;
      static deserializeBinaryFromReader(message: Patient, reader: jspb.BinaryReader): Patient;
    }

    export namespace Patient {
      export type AsObject = {
        id: string,
        name: string,
      }
    }


    export class SubTask extends jspb.Message {
      getId(): string;
      setId(value: string): SubTask;

      getName(): string;
      setName(value: string): SubTask;

      getDone(): boolean;
      setDone(value: boolean): SubTask;

      getCreatedBy(): string;
      setCreatedBy(value: string): SubTask;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SubTask.AsObject;
      static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
      static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SubTask;
      static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
    }

    export namespace SubTask {
      export type AsObject = {
        id: string,
        name: string,
        done: boolean,
        createdBy: string,
      }
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

export class UnassignTaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): UnassignTaskRequest;

  getUserId(): string;
  setUserId(value: string): UnassignTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignTaskRequest): UnassignTaskRequest.AsObject;
  static serializeBinaryToWriter(message: UnassignTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignTaskRequest;
  static deserializeBinaryFromReader(message: UnassignTaskRequest, reader: jspb.BinaryReader): UnassignTaskRequest;
}

export namespace UnassignTaskRequest {
  export type AsObject = {
    taskId: string,
    userId: string,
  }
}

export class UnassignTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignTaskResponse): UnassignTaskResponse.AsObject;
  static serializeBinaryToWriter(message: UnassignTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignTaskResponse;
  static deserializeBinaryFromReader(message: UnassignTaskResponse, reader: jspb.BinaryReader): UnassignTaskResponse;
}

export namespace UnassignTaskResponse {
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

export class UpdateSubtaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): UpdateSubtaskRequest;

  getSubtaskId(): string;
  setSubtaskId(value: string): UpdateSubtaskRequest;

  getSubtask(): UpdateSubtaskRequest.Subtask | undefined;
  setSubtask(value?: UpdateSubtaskRequest.Subtask): UpdateSubtaskRequest;
  hasSubtask(): boolean;
  clearSubtask(): UpdateSubtaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateSubtaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateSubtaskRequest): UpdateSubtaskRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateSubtaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateSubtaskRequest;
  static deserializeBinaryFromReader(message: UpdateSubtaskRequest, reader: jspb.BinaryReader): UpdateSubtaskRequest;
}

export namespace UpdateSubtaskRequest {
  export type AsObject = {
    taskId: string,
    subtaskId: string,
    subtask?: UpdateSubtaskRequest.Subtask.AsObject,
  }

  export class Subtask extends jspb.Message {
    getName(): string;
    setName(value: string): Subtask;
    hasName(): boolean;
    clearName(): Subtask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Subtask.AsObject;
    static toObject(includeInstance: boolean, msg: Subtask): Subtask.AsObject;
    static serializeBinaryToWriter(message: Subtask, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Subtask;
    static deserializeBinaryFromReader(message: Subtask, reader: jspb.BinaryReader): Subtask;
  }

  export namespace Subtask {
    export type AsObject = {
      name?: string,
    }

    export enum NameCase { 
      _NAME_NOT_SET = 0,
      NAME = 1,
    }
  }

}

export class UpdateSubtaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateSubtaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateSubtaskResponse): UpdateSubtaskResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateSubtaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateSubtaskResponse;
  static deserializeBinaryFromReader(message: UpdateSubtaskResponse, reader: jspb.BinaryReader): UpdateSubtaskResponse;
}

export namespace UpdateSubtaskResponse {
  export type AsObject = {
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

export class DeleteSubtaskRequest extends jspb.Message {
  getTaskId(): string;
  setTaskId(value: string): DeleteSubtaskRequest;

  getSubtaskId(): string;
  setSubtaskId(value: string): DeleteSubtaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteSubtaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteSubtaskRequest): DeleteSubtaskRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteSubtaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteSubtaskRequest;
  static deserializeBinaryFromReader(message: DeleteSubtaskRequest, reader: jspb.BinaryReader): DeleteSubtaskRequest;
}

export namespace DeleteSubtaskRequest {
  export type AsObject = {
    taskId: string,
    subtaskId: string,
  }
}

export class DeleteSubtaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteSubtaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteSubtaskResponse): DeleteSubtaskResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteSubtaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteSubtaskResponse;
  static deserializeBinaryFromReader(message: DeleteSubtaskResponse, reader: jspb.BinaryReader): DeleteSubtaskResponse;
}

export namespace DeleteSubtaskResponse {
  export type AsObject = {
  }
}

export enum TaskStatus { 
  TASK_STATUS_UNSPECIFIED = 0,
  TASK_STATUS_TODO = 1,
  TASK_STATUS_IN_PROGRESS = 2,
  TASK_STATUS_DONE = 3,
}
