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

export class DeleteTaskTemplateRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteTaskTemplateRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteTaskTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteTaskTemplateRequest): DeleteTaskTemplateRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteTaskTemplateRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteTaskTemplateRequest;
  static deserializeBinaryFromReader(message: DeleteTaskTemplateRequest, reader: jspb.BinaryReader): DeleteTaskTemplateRequest;
}

export namespace DeleteTaskTemplateRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteTaskTemplateResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteTaskTemplateResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteTaskTemplateResponse): DeleteTaskTemplateResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteTaskTemplateResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteTaskTemplateResponse;
  static deserializeBinaryFromReader(message: DeleteTaskTemplateResponse, reader: jspb.BinaryReader): DeleteTaskTemplateResponse;
}

export namespace DeleteTaskTemplateResponse {
  export type AsObject = {
  }
}

export class DeleteTaskTemplateSubTaskRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteTaskTemplateSubTaskRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteTaskTemplateSubTaskRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteTaskTemplateSubTaskRequest): DeleteTaskTemplateSubTaskRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteTaskTemplateSubTaskRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteTaskTemplateSubTaskRequest;
  static deserializeBinaryFromReader(message: DeleteTaskTemplateSubTaskRequest, reader: jspb.BinaryReader): DeleteTaskTemplateSubTaskRequest;
}

export namespace DeleteTaskTemplateSubTaskRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteTaskTemplateSubTaskResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteTaskTemplateSubTaskResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteTaskTemplateSubTaskResponse): DeleteTaskTemplateSubTaskResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteTaskTemplateSubTaskResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteTaskTemplateSubTaskResponse;
  static deserializeBinaryFromReader(message: DeleteTaskTemplateSubTaskResponse, reader: jspb.BinaryReader): DeleteTaskTemplateSubTaskResponse;
}

export namespace DeleteTaskTemplateSubTaskResponse {
  export type AsObject = {
  }
}

