import * as jspb from 'google-protobuf'



export class CreateRoomRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateRoomRequest;

  getAmountOfBeds(): number;
  setAmountOfBeds(value: number): CreateRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateRoomRequest): CreateRoomRequest.AsObject;
  static serializeBinaryToWriter(message: CreateRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateRoomRequest;
  static deserializeBinaryFromReader(message: CreateRoomRequest, reader: jspb.BinaryReader): CreateRoomRequest;
}

export namespace CreateRoomRequest {
  export type AsObject = {
    name: string,
    amountOfBeds: number,
  }
}

export class CreateRoomResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateRoomResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateRoomResponse): CreateRoomResponse.AsObject;
  static serializeBinaryToWriter(message: CreateRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateRoomResponse;
  static deserializeBinaryFromReader(message: CreateRoomResponse, reader: jspb.BinaryReader): CreateRoomResponse;
}

export namespace CreateRoomResponse {
  export type AsObject = {
    id: string,
  }
}

export class BedOfRoom extends jspb.Message {
  getId(): string;
  setId(value: string): BedOfRoom;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): BedOfRoom.AsObject;
  static toObject(includeInstance: boolean, msg: BedOfRoom): BedOfRoom.AsObject;
  static serializeBinaryToWriter(message: BedOfRoom, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): BedOfRoom;
  static deserializeBinaryFromReader(message: BedOfRoom, reader: jspb.BinaryReader): BedOfRoom;
}

export namespace BedOfRoom {
  export type AsObject = {
    id: string,
  }
}

export class GetRoomRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomRequest): GetRoomRequest.AsObject;
  static serializeBinaryToWriter(message: GetRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomRequest;
  static deserializeBinaryFromReader(message: GetRoomRequest, reader: jspb.BinaryReader): GetRoomRequest;
}

export namespace GetRoomRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetRoomResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomResponse;

  getName(): string;
  setName(value: string): GetRoomResponse;

  getBedsList(): Array<BedOfRoom>;
  setBedsList(value: Array<BedOfRoom>): GetRoomResponse;
  clearBedsList(): GetRoomResponse;
  addBeds(value?: BedOfRoom, index?: number): BedOfRoom;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomResponse): GetRoomResponse.AsObject;
  static serializeBinaryToWriter(message: GetRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomResponse;
  static deserializeBinaryFromReader(message: GetRoomResponse, reader: jspb.BinaryReader): GetRoomResponse;
}

export namespace GetRoomResponse {
  export type AsObject = {
    id: string,
    name: string,
    bedsList: Array<BedOfRoom.AsObject>,
  }
}

export class UpdateRoomRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateRoomRequest;

  getName(): string;
  setName(value: string): UpdateRoomRequest;
  hasName(): boolean;
  clearName(): UpdateRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateRoomRequest): UpdateRoomRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateRoomRequest;
  static deserializeBinaryFromReader(message: UpdateRoomRequest, reader: jspb.BinaryReader): UpdateRoomRequest;
}

export namespace UpdateRoomRequest {
  export type AsObject = {
    id: string,
    name?: string,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdateRoomResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateRoomResponse): UpdateRoomResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateRoomResponse;
  static deserializeBinaryFromReader(message: UpdateRoomResponse, reader: jspb.BinaryReader): UpdateRoomResponse;
}

export namespace UpdateRoomResponse {
  export type AsObject = {
  }
}

export class AddBedsToRoomRequest extends jspb.Message {
  getId(): string;
  setId(value: string): AddBedsToRoomRequest;

  getAmountOfBeds(): number;
  setAmountOfBeds(value: number): AddBedsToRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddBedsToRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AddBedsToRoomRequest): AddBedsToRoomRequest.AsObject;
  static serializeBinaryToWriter(message: AddBedsToRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddBedsToRoomRequest;
  static deserializeBinaryFromReader(message: AddBedsToRoomRequest, reader: jspb.BinaryReader): AddBedsToRoomRequest;
}

export namespace AddBedsToRoomRequest {
  export type AsObject = {
    id: string,
    amountOfBeds: number,
  }
}

export class AddBedsToRoomResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddBedsToRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AddBedsToRoomResponse): AddBedsToRoomResponse.AsObject;
  static serializeBinaryToWriter(message: AddBedsToRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddBedsToRoomResponse;
  static deserializeBinaryFromReader(message: AddBedsToRoomResponse, reader: jspb.BinaryReader): AddBedsToRoomResponse;
}

export namespace AddBedsToRoomResponse {
  export type AsObject = {
  }
}

