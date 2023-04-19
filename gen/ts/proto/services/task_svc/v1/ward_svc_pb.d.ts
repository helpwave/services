import * as jspb from 'google-protobuf'



export class CreateWardRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateWardRequest): CreateWardRequest.AsObject;
  static serializeBinaryToWriter(message: CreateWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateWardRequest;
  static deserializeBinaryFromReader(message: CreateWardRequest, reader: jspb.BinaryReader): CreateWardRequest;
}

export namespace CreateWardRequest {
  export type AsObject = {
    name: string,
  }
}

export class CreateWardResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateWardResponse;

  getName(): string;
  setName(value: string): CreateWardResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateWardResponse): CreateWardResponse.AsObject;
  static serializeBinaryToWriter(message: CreateWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateWardResponse;
  static deserializeBinaryFromReader(message: CreateWardResponse, reader: jspb.BinaryReader): CreateWardResponse;
}

export namespace CreateWardResponse {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class GetWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardRequest): GetWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardRequest;
  static deserializeBinaryFromReader(message: GetWardRequest, reader: jspb.BinaryReader): GetWardRequest;
}

export namespace GetWardRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetWardResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardResponse;

  getName(): string;
  setName(value: string): GetWardResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardResponse): GetWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardResponse;
  static deserializeBinaryFromReader(message: GetWardResponse, reader: jspb.BinaryReader): GetWardResponse;
}

export namespace GetWardResponse {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class GetWardByOrganizationWard extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardByOrganizationWard;

  getName(): string;
  setName(value: string): GetWardByOrganizationWard;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardByOrganizationWard.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardByOrganizationWard): GetWardByOrganizationWard.AsObject;
  static serializeBinaryToWriter(message: GetWardByOrganizationWard, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardByOrganizationWard;
  static deserializeBinaryFromReader(message: GetWardByOrganizationWard, reader: jspb.BinaryReader): GetWardByOrganizationWard;
}

export namespace GetWardByOrganizationWard {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class GetWardByOrganizationRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardByOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardByOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardByOrganizationRequest): GetWardByOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardByOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardByOrganizationRequest;
  static deserializeBinaryFromReader(message: GetWardByOrganizationRequest, reader: jspb.BinaryReader): GetWardByOrganizationRequest;
}

export namespace GetWardByOrganizationRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetWardByOrganizationResponse extends jspb.Message {
  getWardsList(): Array<GetWardByOrganizationWard>;
  setWardsList(value: Array<GetWardByOrganizationWard>): GetWardByOrganizationResponse;
  clearWardsList(): GetWardByOrganizationResponse;
  addWards(value?: GetWardByOrganizationWard, index?: number): GetWardByOrganizationWard;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardByOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardByOrganizationResponse): GetWardByOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardByOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardByOrganizationResponse;
  static deserializeBinaryFromReader(message: GetWardByOrganizationResponse, reader: jspb.BinaryReader): GetWardByOrganizationResponse;
}

export namespace GetWardByOrganizationResponse {
  export type AsObject = {
    wardsList: Array<GetWardByOrganizationWard.AsObject>,
  }
}

export class UpdateWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateWardRequest;

  getName(): string;
  setName(value: string): UpdateWardRequest;
  hasName(): boolean;
  clearName(): UpdateWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateWardRequest): UpdateWardRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateWardRequest;
  static deserializeBinaryFromReader(message: UpdateWardRequest, reader: jspb.BinaryReader): UpdateWardRequest;
}

export namespace UpdateWardRequest {
  export type AsObject = {
    id: string,
    name?: string,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdateWardResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateWardResponse): UpdateWardResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateWardResponse;
  static deserializeBinaryFromReader(message: UpdateWardResponse, reader: jspb.BinaryReader): UpdateWardResponse;
}

export namespace UpdateWardResponse {
  export type AsObject = {
  }
}

export class DeleteWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteWardRequest): DeleteWardRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteWardRequest;
  static deserializeBinaryFromReader(message: DeleteWardRequest, reader: jspb.BinaryReader): DeleteWardRequest;
}

export namespace DeleteWardRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteWardResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteWardResponse): DeleteWardResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteWardResponse;
  static deserializeBinaryFromReader(message: DeleteWardResponse, reader: jspb.BinaryReader): DeleteWardResponse;
}

export namespace DeleteWardResponse {
  export type AsObject = {
  }
}

