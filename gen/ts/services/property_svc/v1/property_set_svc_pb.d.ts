import * as jspb from 'google-protobuf'



export class CreatePropertySetRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreatePropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertySetRequest): CreatePropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertySetRequest;
  static deserializeBinaryFromReader(message: CreatePropertySetRequest, reader: jspb.BinaryReader): CreatePropertySetRequest;
}

export namespace CreatePropertySetRequest {
  export type AsObject = {
    name: string,
  }
}

export class CreatePropertySetResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreatePropertySetResponse;

  getConsistency(): string;
  setConsistency(value: string): CreatePropertySetResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertySetResponse): CreatePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertySetResponse;
  static deserializeBinaryFromReader(message: CreatePropertySetResponse, reader: jspb.BinaryReader): CreatePropertySetResponse;
}

export namespace CreatePropertySetResponse {
  export type AsObject = {
    id: string,
    consistency: string,
  }
}

export class GetPropertySetRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertySetRequest): GetPropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: GetPropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertySetRequest;
  static deserializeBinaryFromReader(message: GetPropertySetRequest, reader: jspb.BinaryReader): GetPropertySetRequest;
}

export namespace GetPropertySetRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetPropertySetResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPropertySetResponse;

  getName(): string;
  setName(value: string): GetPropertySetResponse;

  getConsistency(): string;
  setConsistency(value: string): GetPropertySetResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPropertySetResponse): GetPropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: GetPropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPropertySetResponse;
  static deserializeBinaryFromReader(message: GetPropertySetResponse, reader: jspb.BinaryReader): GetPropertySetResponse;
}

export namespace GetPropertySetResponse {
  export type AsObject = {
    id: string,
    name: string,
    consistency: string,
  }
}

