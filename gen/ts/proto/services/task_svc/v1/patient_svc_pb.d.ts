import * as jspb from 'google-protobuf'



export class CreatePatientRequest extends jspb.Message {
  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): CreatePatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePatientRequest): CreatePatientRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePatientRequest;
  static deserializeBinaryFromReader(message: CreatePatientRequest, reader: jspb.BinaryReader): CreatePatientRequest;
}

export namespace CreatePatientRequest {
  export type AsObject = {
    humanReadableIdentifier: string,
  }
}

export class CreatePatientResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreatePatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePatientResponse): CreatePatientResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePatientResponse;
  static deserializeBinaryFromReader(message: CreatePatientResponse, reader: jspb.BinaryReader): CreatePatientResponse;
}

export namespace CreatePatientResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetPatientRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientRequest): GetPatientRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientRequest;
  static deserializeBinaryFromReader(message: GetPatientRequest, reader: jspb.BinaryReader): GetPatientRequest;
}

export namespace GetPatientRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetPatientResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientResponse;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): GetPatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientResponse): GetPatientResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientResponse;
  static deserializeBinaryFromReader(message: GetPatientResponse, reader: jspb.BinaryReader): GetPatientResponse;
}

export namespace GetPatientResponse {
  export type AsObject = {
    id: string,
    humanReadableIdentifier: string,
  }
}

export class UpdatePatientRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdatePatientRequest;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): UpdatePatientRequest;
  hasHumanReadableIdentifier(): boolean;
  clearHumanReadableIdentifier(): UpdatePatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientRequest): UpdatePatientRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientRequest;
  static deserializeBinaryFromReader(message: UpdatePatientRequest, reader: jspb.BinaryReader): UpdatePatientRequest;
}

export namespace UpdatePatientRequest {
  export type AsObject = {
    id: string,
    humanReadableIdentifier?: string,
  }

  export enum HumanReadableIdentifierCase { 
    _HUMAN_READABLE_IDENTIFIER_NOT_SET = 0,
    HUMAN_READABLE_IDENTIFIER = 2,
  }
}

export class UpdatePatientResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientResponse): UpdatePatientResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientResponse;
  static deserializeBinaryFromReader(message: UpdatePatientResponse, reader: jspb.BinaryReader): UpdatePatientResponse;
}

export namespace UpdatePatientResponse {
  export type AsObject = {
  }
}

