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

export class GetAllTaskTemplatesRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllTaskTemplatesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllTaskTemplatesRequest): GetAllTaskTemplatesRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllTaskTemplatesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllTaskTemplatesRequest;
  static deserializeBinaryFromReader(message: GetAllTaskTemplatesRequest, reader: jspb.BinaryReader): GetAllTaskTemplatesRequest;
}

export namespace GetAllTaskTemplatesRequest {
  export type AsObject = {
  }
}

export class GetAllTaskTemplatesResponse extends jspb.Message {
  getTemplatesList(): Array<GetAllTaskTemplatesResponse.TaskTemplate>;
  setTemplatesList(value: Array<GetAllTaskTemplatesResponse.TaskTemplate>): GetAllTaskTemplatesResponse;
  clearTemplatesList(): GetAllTaskTemplatesResponse;
  addTemplates(value?: GetAllTaskTemplatesResponse.TaskTemplate, index?: number): GetAllTaskTemplatesResponse.TaskTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllTaskTemplatesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllTaskTemplatesResponse): GetAllTaskTemplatesResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllTaskTemplatesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllTaskTemplatesResponse;
  static deserializeBinaryFromReader(message: GetAllTaskTemplatesResponse, reader: jspb.BinaryReader): GetAllTaskTemplatesResponse;
}

export namespace GetAllTaskTemplatesResponse {
  export type AsObject = {
    templatesList: Array<GetAllTaskTemplatesResponse.TaskTemplate.AsObject>,
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

    getUserId(): string;
    setUserId(value: string): TaskTemplate;
    hasUserId(): boolean;
    clearUserId(): TaskTemplate;

    getSubtasksList(): Array<GetAllTaskTemplatesResponse.TaskTemplate.SubTask>;
    setSubtasksList(value: Array<GetAllTaskTemplatesResponse.TaskTemplate.SubTask>): TaskTemplate;
    clearSubtasksList(): TaskTemplate;
    addSubtasks(value?: GetAllTaskTemplatesResponse.TaskTemplate.SubTask, index?: number): GetAllTaskTemplatesResponse.TaskTemplate.SubTask;

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
      userId?: string,
      subtasksList: Array<GetAllTaskTemplatesResponse.TaskTemplate.SubTask.AsObject>,
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


    export enum UserIdCase { 
      _USER_ID_NOT_SET = 0,
      USER_ID = 6,
    }
  }

}

