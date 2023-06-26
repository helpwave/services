import * as jspb from 'google-protobuf'



export class CreateTaskTemplateRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateTaskTemplateRequest;

  getDescription(): string;
  setDescription(value: string): CreateTaskTemplateRequest;

  getPublic(): boolean;
  setPublic(value: boolean): CreateTaskTemplateRequest;

  getWardId(): string;
  setWardId(value: string): CreateTaskTemplateRequest;
  hasWardId(): boolean;
  clearWardId(): CreateTaskTemplateRequest;

  getSubtasksList(): Array<CreateTaskTemplateRequest.SubTask>;
  setSubtasksList(value: Array<CreateTaskTemplateRequest.SubTask>): CreateTaskTemplateRequest;
  clearSubtasksList(): CreateTaskTemplateRequest;
  addSubtasks(value?: CreateTaskTemplateRequest.SubTask, index?: number): CreateTaskTemplateRequest.SubTask;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateTaskTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateTaskTemplateRequest): CreateTaskTemplateRequest.AsObject;
  static serializeBinaryToWriter(message: CreateTaskTemplateRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateTaskTemplateRequest;
  static deserializeBinaryFromReader(message: CreateTaskTemplateRequest, reader: jspb.BinaryReader): CreateTaskTemplateRequest;
}

export namespace CreateTaskTemplateRequest {
  export type AsObject = {
    name: string,
    description: string,
    pb_public: boolean,
    wardId?: string,
    subtasksList: Array<CreateTaskTemplateRequest.SubTask.AsObject>,
  }

  export class SubTask extends jspb.Message {
    getName(): string;
    setName(value: string): SubTask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SubTask.AsObject;
    static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
    static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SubTask;
    static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
  }

  export namespace SubTask {
    export type AsObject = {
      name: string,
    }
  }


  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 4,
  }
}

export class CreateTaskTemplateResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateTaskTemplateResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateTaskTemplateResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateTaskTemplateResponse): CreateTaskTemplateResponse.AsObject;
  static serializeBinaryToWriter(message: CreateTaskTemplateResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateTaskTemplateResponse;
  static deserializeBinaryFromReader(message: CreateTaskTemplateResponse, reader: jspb.BinaryReader): CreateTaskTemplateResponse;
}

export namespace CreateTaskTemplateResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetAllTaskTemplatesByWardRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): GetAllTaskTemplatesByWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllTaskTemplatesByWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllTaskTemplatesByWardRequest): GetAllTaskTemplatesByWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllTaskTemplatesByWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllTaskTemplatesByWardRequest;
  static deserializeBinaryFromReader(message: GetAllTaskTemplatesByWardRequest, reader: jspb.BinaryReader): GetAllTaskTemplatesByWardRequest;
}

export namespace GetAllTaskTemplatesByWardRequest {
  export type AsObject = {
    wardId: string,
  }
}

export class GetAllTaskTemplatesByWardResponse extends jspb.Message {
  getTemplatesList(): Array<GetAllTaskTemplatesByWardResponse.TaskTemplate>;
  setTemplatesList(value: Array<GetAllTaskTemplatesByWardResponse.TaskTemplate>): GetAllTaskTemplatesByWardResponse;
  clearTemplatesList(): GetAllTaskTemplatesByWardResponse;
  addTemplates(value?: GetAllTaskTemplatesByWardResponse.TaskTemplate, index?: number): GetAllTaskTemplatesByWardResponse.TaskTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllTaskTemplatesByWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllTaskTemplatesByWardResponse): GetAllTaskTemplatesByWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllTaskTemplatesByWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllTaskTemplatesByWardResponse;
  static deserializeBinaryFromReader(message: GetAllTaskTemplatesByWardResponse, reader: jspb.BinaryReader): GetAllTaskTemplatesByWardResponse;
}

export namespace GetAllTaskTemplatesByWardResponse {
  export type AsObject = {
    templatesList: Array<GetAllTaskTemplatesByWardResponse.TaskTemplate.AsObject>,
  }

  export class TaskTemplate extends jspb.Message {
    getId(): string;
    setId(value: string): TaskTemplate;

    getName(): string;
    setName(value: string): TaskTemplate;

    getDescription(): string;
    setDescription(value: string): TaskTemplate;

    getIsPublic(): boolean;
    setIsPublic(value: boolean): TaskTemplate;

    getWardId(): string;
    setWardId(value: string): TaskTemplate;
    hasWardId(): boolean;
    clearWardId(): TaskTemplate;

    getUserId(): string;
    setUserId(value: string): TaskTemplate;
    hasUserId(): boolean;
    clearUserId(): TaskTemplate;

    getSubtasksList(): Array<GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask>;
    setSubtasksList(value: Array<GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask>): TaskTemplate;
    clearSubtasksList(): TaskTemplate;
    addSubtasks(value?: GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask, index?: number): GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): TaskTemplate.AsObject;
    static toObject(includeInstance: boolean, msg: TaskTemplate): TaskTemplate.AsObject;
    static serializeBinaryToWriter(message: TaskTemplate, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): TaskTemplate;
    static deserializeBinaryFromReader(message: TaskTemplate, reader: jspb.BinaryReader): TaskTemplate;
  }

  export namespace TaskTemplate {
    export type AsObject = {
      id: string,
      name: string,
      description: string,
      isPublic: boolean,
      wardId?: string,
      userId?: string,
      subtasksList: Array<GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask.AsObject>,
    }

    export class SubTask extends jspb.Message {
      getId(): string;
      setId(value: string): SubTask;

      getTaskTemplateId(): string;
      setTaskTemplateId(value: string): SubTask;

      getName(): string;
      setName(value: string): SubTask;

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
        taskTemplateId: string,
        name: string,
      }
    }


    export enum WardIdCase { 
      _WARD_ID_NOT_SET = 0,
      WARD_ID = 5,
    }

    export enum UserIdCase { 
      _USER_ID_NOT_SET = 0,
      USER_ID = 6,
    }
  }

}

