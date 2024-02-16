import * as jspb from 'google-protobuf'



export class CreatePropertySetRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreatePropertySetRequest;

  getPropertiesList(): Array<string>;
  setPropertiesList(value: Array<string>): CreatePropertySetRequest;
  clearPropertiesList(): CreatePropertySetRequest;
  addProperties(value: string, index?: number): CreatePropertySetRequest;

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
    propertiesList: Array<string>,
  }
}

export class CreatePropertySetResponse extends jspb.Message {
  getPropertySetId(): string;
  setPropertySetId(value: string): CreatePropertySetResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePropertySetResponse): CreatePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePropertySetResponse;
  static deserializeBinaryFromReader(message: CreatePropertySetResponse, reader: jspb.BinaryReader): CreatePropertySetResponse;
}

export namespace CreatePropertySetResponse {
  export type AsObject = {
    propertySetId: string,
  }
}

export class UpdatePropertySetRequest extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): UpdatePropertySetRequest;

  getName(): string;
  setName(value: string): UpdatePropertySetRequest;
  hasName(): boolean;
  clearName(): UpdatePropertySetRequest;

  getAddedPropertiesList(): Array<string>;
  setAddedPropertiesList(value: Array<string>): UpdatePropertySetRequest;
  clearAddedPropertiesList(): UpdatePropertySetRequest;
  addAddedProperties(value: string, index?: number): UpdatePropertySetRequest;

  getRemovedPropertiesList(): Array<string>;
  setRemovedPropertiesList(value: Array<string>): UpdatePropertySetRequest;
  clearRemovedPropertiesList(): UpdatePropertySetRequest;
  addRemovedProperties(value: string, index?: number): UpdatePropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertySetRequest): UpdatePropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertySetRequest;
  static deserializeBinaryFromReader(message: UpdatePropertySetRequest, reader: jspb.BinaryReader): UpdatePropertySetRequest;
}

export namespace UpdatePropertySetRequest {
  export type AsObject = {
    setId: string,
    name?: string,
    addedPropertiesList: Array<string>,
    removedPropertiesList: Array<string>,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdatePropertySetResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePropertySetResponse): UpdatePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePropertySetResponse;
  static deserializeBinaryFromReader(message: UpdatePropertySetResponse, reader: jspb.BinaryReader): UpdatePropertySetResponse;
}

export namespace UpdatePropertySetResponse {
  export type AsObject = {
  }
}

export class DeletePropertySetRequest extends jspb.Message {
  getSetId(): string;
  setSetId(value: string): DeletePropertySetRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeletePropertySetRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeletePropertySetRequest): DeletePropertySetRequest.AsObject;
  static serializeBinaryToWriter(message: DeletePropertySetRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeletePropertySetRequest;
  static deserializeBinaryFromReader(message: DeletePropertySetRequest, reader: jspb.BinaryReader): DeletePropertySetRequest;
}

export namespace DeletePropertySetRequest {
  export type AsObject = {
    setId: string,
  }
}

export class DeletePropertySetResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeletePropertySetResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeletePropertySetResponse): DeletePropertySetResponse.AsObject;
  static serializeBinaryToWriter(message: DeletePropertySetResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeletePropertySetResponse;
  static deserializeBinaryFromReader(message: DeletePropertySetResponse, reader: jspb.BinaryReader): DeletePropertySetResponse;
}

export namespace DeletePropertySetResponse {
  export type AsObject = {
  }
}

