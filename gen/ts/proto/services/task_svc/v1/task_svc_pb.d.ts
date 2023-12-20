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
    pb_public: boolean,
    dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    initialStatus?: TaskStatus,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 2,
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

  getPatient(): GetTaskResponse.Patient | undefined;
  setPatient(value?: GetTaskResponse.Patient): GetTaskResponse;
  hasPatient(): boolean;
  clearPatient(): GetTaskResponse;

  getPublic(): boolean;
  setPublic(value: boolean): GetTaskResponse;

  getDueAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDueAt(value?: google_protobuf_timestamp_pb.Timestamp): GetTaskResponse;
  hasDueAt(): boolean;
  clearDueAt(): GetTaskResponse;

  getCreatedBy(): string;
  setCreatedBy(value: string): GetTaskResponse;

  getSubtasksList(): Array<GetTaskResponse.SubTask>;
  setSubtasksList(value: Array<GetTaskResponse.SubTask>): GetTaskResponse;
  clearSubtasksList(): GetTaskResponse;
  addSubtasks(value?: GetTaskResponse.SubTask, index?: number): GetTaskResponse.SubTask;

  getOrganizationId(): string;
  setOrganizationId(value: string): GetTaskResponse;

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
    patient?: GetTaskResponse.Patient.AsObject,
    pb_public: boolean,
    dueAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    createdBy: string,
    subtasksList: Array<GetTaskResponse.SubTask.AsObject>,
    organizationId: string,
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

  getPublic(): boolean;
  setPublic(value: boolean): UpdateTaskRequest;
  hasPublic(): boolean;
  clearPublic(): UpdateTaskRequest;

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
    pb_public?: boolean,
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

  export enum PublicCase { 
    _PUBLIC_NOT_SET = 0,
    PUBLIC = 5,
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

export class AddSubTaskRequest extends jspb.Message {
  getName(): string;
  setName(value: string): AddSubTaskRequest;

  getTaskId(): string;
  setTaskId(value: string): AddSubTaskRequest;

  getDone(): boolean;
  setDone(value: boolean): AddSubTaskRequest;
  hasDone(): boolean;
  clearDone(): AddSubTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddSubTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AddSubTaskRequest): AddSubTaskRequest.AsObject;
  static serializeBinaryToWriter(message: AddSubTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddSubTaskRequest;
  static deserializeBinaryFromReader(message: AddSubTaskRequest, reader: jspb.BinaryReader): AddSubTaskRequest;
}

export namespace AddSubTaskRequest {
  export type AsObject = {
    name: string,
    taskId: string,
    done?: boolean,
  }

  export enum DoneCase { 
    _DONE_NOT_SET = 0,
    DONE = 3,
  }
}

export class AddSubTaskResponse extends jspb.Message {
  getId(): string;
  setId(value: string): AddSubTaskResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddSubTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AddSubTaskResponse): AddSubTaskResponse.AsObject;
  static serializeBinaryToWriter(message: AddSubTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddSubTaskResponse;
  static deserializeBinaryFromReader(message: AddSubTaskResponse, reader: jspb.BinaryReader): AddSubTaskResponse;
}

export namespace AddSubTaskResponse {
  export type AsObject = {
    id: string,
  }
}

export class RemoveSubTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): RemoveSubTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RemoveSubTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: RemoveSubTaskRequest): RemoveSubTaskRequest.AsObject;
  static serializeBinaryToWriter(message: RemoveSubTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RemoveSubTaskRequest;
  static deserializeBinaryFromReader(message: RemoveSubTaskRequest, reader: jspb.BinaryReader): RemoveSubTaskRequest;
}

export namespace RemoveSubTaskRequest {
  export type AsObject = {
    id: string,
  }
}

export class RemoveSubTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RemoveSubTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: RemoveSubTaskResponse): RemoveSubTaskResponse.AsObject;
  static serializeBinaryToWriter(message: RemoveSubTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RemoveSubTaskResponse;
  static deserializeBinaryFromReader(message: RemoveSubTaskResponse, reader: jspb.BinaryReader): RemoveSubTaskResponse;
}

export namespace RemoveSubTaskResponse {
  export type AsObject = {
  }
}

export class UpdateSubTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateSubTaskRequest;

  getName(): string;
  setName(value: string): UpdateSubTaskRequest;
  hasName(): boolean;
  clearName(): UpdateSubTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateSubTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateSubTaskRequest): UpdateSubTaskRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateSubTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateSubTaskRequest;
  static deserializeBinaryFromReader(message: UpdateSubTaskRequest, reader: jspb.BinaryReader): UpdateSubTaskRequest;
}

export namespace UpdateSubTaskRequest {
  export type AsObject = {
    id: string,
    name?: string,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdateSubTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateSubTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateSubTaskResponse): UpdateSubTaskResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateSubTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateSubTaskResponse;
  static deserializeBinaryFromReader(message: UpdateSubTaskResponse, reader: jspb.BinaryReader): UpdateSubTaskResponse;
}

export namespace UpdateSubTaskResponse {
  export type AsObject = {
  }
}

export class SubTaskToToDoRequest extends jspb.Message {
  getId(): string;
  setId(value: string): SubTaskToToDoRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubTaskToToDoRequest.AsObject;
  static toObject(includeInstance: boolean, msg: SubTaskToToDoRequest): SubTaskToToDoRequest.AsObject;
  static serializeBinaryToWriter(message: SubTaskToToDoRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubTaskToToDoRequest;
  static deserializeBinaryFromReader(message: SubTaskToToDoRequest, reader: jspb.BinaryReader): SubTaskToToDoRequest;
}

export namespace SubTaskToToDoRequest {
  export type AsObject = {
    id: string,
  }
}

export class SubTaskToToDoResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubTaskToToDoResponse.AsObject;
  static toObject(includeInstance: boolean, msg: SubTaskToToDoResponse): SubTaskToToDoResponse.AsObject;
  static serializeBinaryToWriter(message: SubTaskToToDoResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubTaskToToDoResponse;
  static deserializeBinaryFromReader(message: SubTaskToToDoResponse, reader: jspb.BinaryReader): SubTaskToToDoResponse;
}

export namespace SubTaskToToDoResponse {
  export type AsObject = {
  }
}

export class SubTaskToDoneRequest extends jspb.Message {
  getId(): string;
  setId(value: string): SubTaskToDoneRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubTaskToDoneRequest.AsObject;
  static toObject(includeInstance: boolean, msg: SubTaskToDoneRequest): SubTaskToDoneRequest.AsObject;
  static serializeBinaryToWriter(message: SubTaskToDoneRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubTaskToDoneRequest;
  static deserializeBinaryFromReader(message: SubTaskToDoneRequest, reader: jspb.BinaryReader): SubTaskToDoneRequest;
}

export namespace SubTaskToDoneRequest {
  export type AsObject = {
    id: string,
  }
}

export class SubTaskToDoneResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubTaskToDoneResponse.AsObject;
  static toObject(includeInstance: boolean, msg: SubTaskToDoneResponse): SubTaskToDoneResponse.AsObject;
  static serializeBinaryToWriter(message: SubTaskToDoneResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubTaskToDoneResponse;
  static deserializeBinaryFromReader(message: SubTaskToDoneResponse, reader: jspb.BinaryReader): SubTaskToDoneResponse;
}

export namespace SubTaskToDoneResponse {
  export type AsObject = {
  }
}

export class TaskToToDoRequest extends jspb.Message {
  getId(): string;
  setId(value: string): TaskToToDoRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskToToDoRequest.AsObject;
  static toObject(includeInstance: boolean, msg: TaskToToDoRequest): TaskToToDoRequest.AsObject;
  static serializeBinaryToWriter(message: TaskToToDoRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskToToDoRequest;
  static deserializeBinaryFromReader(message: TaskToToDoRequest, reader: jspb.BinaryReader): TaskToToDoRequest;
}

export namespace TaskToToDoRequest {
  export type AsObject = {
    id: string,
  }
}

export class TaskToToDoResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskToToDoResponse.AsObject;
  static toObject(includeInstance: boolean, msg: TaskToToDoResponse): TaskToToDoResponse.AsObject;
  static serializeBinaryToWriter(message: TaskToToDoResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskToToDoResponse;
  static deserializeBinaryFromReader(message: TaskToToDoResponse, reader: jspb.BinaryReader): TaskToToDoResponse;
}

export namespace TaskToToDoResponse {
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

export class PublishTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): PublishTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PublishTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: PublishTaskRequest): PublishTaskRequest.AsObject;
  static serializeBinaryToWriter(message: PublishTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PublishTaskRequest;
  static deserializeBinaryFromReader(message: PublishTaskRequest, reader: jspb.BinaryReader): PublishTaskRequest;
}

export namespace PublishTaskRequest {
  export type AsObject = {
    id: string,
  }
}

export class PublishTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PublishTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: PublishTaskResponse): PublishTaskResponse.AsObject;
  static serializeBinaryToWriter(message: PublishTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PublishTaskResponse;
  static deserializeBinaryFromReader(message: PublishTaskResponse, reader: jspb.BinaryReader): PublishTaskResponse;
}

export namespace PublishTaskResponse {
  export type AsObject = {
  }
}

export class UnpublishTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UnpublishTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnpublishTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UnpublishTaskRequest): UnpublishTaskRequest.AsObject;
  static serializeBinaryToWriter(message: UnpublishTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnpublishTaskRequest;
  static deserializeBinaryFromReader(message: UnpublishTaskRequest, reader: jspb.BinaryReader): UnpublishTaskRequest;
}

export namespace UnpublishTaskRequest {
  export type AsObject = {
    id: string,
  }
}

export class UnpublishTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnpublishTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UnpublishTaskResponse): UnpublishTaskResponse.AsObject;
  static serializeBinaryToWriter(message: UnpublishTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnpublishTaskResponse;
  static deserializeBinaryFromReader(message: UnpublishTaskResponse, reader: jspb.BinaryReader): UnpublishTaskResponse;
}

export namespace UnpublishTaskResponse {
  export type AsObject = {
  }
}

export class DeleteTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteTaskRequest): DeleteTaskRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteTaskRequest;
  static deserializeBinaryFromReader(message: DeleteTaskRequest, reader: jspb.BinaryReader): DeleteTaskRequest;
}

export namespace DeleteTaskRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteTaskResponse): DeleteTaskResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteTaskResponse;
  static deserializeBinaryFromReader(message: DeleteTaskResponse, reader: jspb.BinaryReader): DeleteTaskResponse;
}

export namespace DeleteTaskResponse {
  export type AsObject = {
  }
}

export enum TaskStatus { 
  TASK_STATUS_UNSPECIFIED = 0,
  TASK_STATUS_TODO = 1,
  TASK_STATUS_IN_PROGRESS = 2,
  TASK_STATUS_DONE = 3,
}
