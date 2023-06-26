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

export class UpdateTaskTemplateRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateTaskTemplateRequest;

  getName(): string;
  setName(value: string): UpdateTaskTemplateRequest;
  hasName(): boolean;
  clearName(): UpdateTaskTemplateRequest;

  getDescription(): string;
  setDescription(value: string): UpdateTaskTemplateRequest;
  hasDescription(): boolean;
  clearDescription(): UpdateTaskTemplateRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskTemplateRequest): UpdateTaskTemplateRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskTemplateRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskTemplateRequest;
  static deserializeBinaryFromReader(message: UpdateTaskTemplateRequest, reader: jspb.BinaryReader): UpdateTaskTemplateRequest;
}

export namespace UpdateTaskTemplateRequest {
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

export class UpdateTaskTemplateResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskTemplateResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskTemplateResponse): UpdateTaskTemplateResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskTemplateResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskTemplateResponse;
  static deserializeBinaryFromReader(message: UpdateTaskTemplateResponse, reader: jspb.BinaryReader): UpdateTaskTemplateResponse;
}

export namespace UpdateTaskTemplateResponse {
  export type AsObject = {
  }
}

export class UpdateTaskTemplateSubTaskRequest extends jspb.Message {
  getSubtaskId(): string;
  setSubtaskId(value: string): UpdateTaskTemplateSubTaskRequest;

  getName(): string;
  setName(value: string): UpdateTaskTemplateSubTaskRequest;
  hasName(): boolean;
  clearName(): UpdateTaskTemplateSubTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskTemplateSubTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskTemplateSubTaskRequest): UpdateTaskTemplateSubTaskRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskTemplateSubTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskTemplateSubTaskRequest;
  static deserializeBinaryFromReader(message: UpdateTaskTemplateSubTaskRequest, reader: jspb.BinaryReader): UpdateTaskTemplateSubTaskRequest;
}

export namespace UpdateTaskTemplateSubTaskRequest {
  export type AsObject = {
    subtaskId: string,
    name?: string,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdateTaskTemplateSubTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateTaskTemplateSubTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateTaskTemplateSubTaskResponse): UpdateTaskTemplateSubTaskResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateTaskTemplateSubTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateTaskTemplateSubTaskResponse;
  static deserializeBinaryFromReader(message: UpdateTaskTemplateSubTaskResponse, reader: jspb.BinaryReader): UpdateTaskTemplateSubTaskResponse;
}

export namespace UpdateTaskTemplateSubTaskResponse {
  export type AsObject = {
  }
}

