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

export class GetRoomBedOfRoom extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomBedOfRoom;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomBedOfRoom.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomBedOfRoom): GetRoomBedOfRoom.AsObject;
  static serializeBinaryToWriter(message: GetRoomBedOfRoom, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomBedOfRoom;
  static deserializeBinaryFromReader(message: GetRoomBedOfRoom, reader: jspb.BinaryReader): GetRoomBedOfRoom;
}

export namespace GetRoomBedOfRoom {
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

  getBedsList(): Array<GetRoomBedOfRoom>;
  setBedsList(value: Array<GetRoomBedOfRoom>): GetRoomResponse;
  clearBedsList(): GetRoomResponse;
  addBeds(value?: GetRoomBedOfRoom, index?: number): GetRoomBedOfRoom;

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
    bedsList: Array<GetRoomBedOfRoom.AsObject>,
  }
}

export class GetRoomsBedOfRooms extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomsBedOfRooms;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsBedOfRooms.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsBedOfRooms): GetRoomsBedOfRooms.AsObject;
  static serializeBinaryToWriter(message: GetRoomsBedOfRooms, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsBedOfRooms;
  static deserializeBinaryFromReader(message: GetRoomsBedOfRooms, reader: jspb.BinaryReader): GetRoomsBedOfRooms;
}

export namespace GetRoomsBedOfRooms {
  export type AsObject = {
    id: string,
  }
}

export class GetRoomsRoom extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomsRoom;

  getName(): string;
  setName(value: string): GetRoomsRoom;

  getBedsList(): Array<GetRoomsBedOfRooms>;
  setBedsList(value: Array<GetRoomsBedOfRooms>): GetRoomsRoom;
  clearBedsList(): GetRoomsRoom;
  addBeds(value?: GetRoomsBedOfRooms, index?: number): GetRoomsBedOfRooms;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsRoom.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsRoom): GetRoomsRoom.AsObject;
  static serializeBinaryToWriter(message: GetRoomsRoom, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsRoom;
  static deserializeBinaryFromReader(message: GetRoomsRoom, reader: jspb.BinaryReader): GetRoomsRoom;
}

export namespace GetRoomsRoom {
  export type AsObject = {
    id: string,
    name: string,
    bedsList: Array<GetRoomsBedOfRooms.AsObject>,
  }
}

export class GetRoomsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsRequest): GetRoomsRequest.AsObject;
  static serializeBinaryToWriter(message: GetRoomsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsRequest;
  static deserializeBinaryFromReader(message: GetRoomsRequest, reader: jspb.BinaryReader): GetRoomsRequest;
}

export namespace GetRoomsRequest {
  export type AsObject = {
  }
}

export class GetRoomsResponse extends jspb.Message {
  getRoomsList(): Array<GetRoomsRoom>;
  setRoomsList(value: Array<GetRoomsRoom>): GetRoomsResponse;
  clearRoomsList(): GetRoomsResponse;
  addRooms(value?: GetRoomsRoom, index?: number): GetRoomsRoom;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsResponse): GetRoomsResponse.AsObject;
  static serializeBinaryToWriter(message: GetRoomsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsResponse;
  static deserializeBinaryFromReader(message: GetRoomsResponse, reader: jspb.BinaryReader): GetRoomsResponse;
}

export namespace GetRoomsResponse {
  export type AsObject = {
    roomsList: Array<GetRoomsRoom.AsObject>,
  }
}

export class GetRoomsByWardBedOfRooms extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomsByWardBedOfRooms;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsByWardBedOfRooms.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsByWardBedOfRooms): GetRoomsByWardBedOfRooms.AsObject;
  static serializeBinaryToWriter(message: GetRoomsByWardBedOfRooms, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsByWardBedOfRooms;
  static deserializeBinaryFromReader(message: GetRoomsByWardBedOfRooms, reader: jspb.BinaryReader): GetRoomsByWardBedOfRooms;
}

export namespace GetRoomsByWardBedOfRooms {
  export type AsObject = {
    id: string,
  }
}

export class GetRoomsByWardRoom extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomsByWardRoom;

  getName(): string;
  setName(value: string): GetRoomsByWardRoom;

  getBedsList(): Array<GetRoomsBedOfRooms>;
  setBedsList(value: Array<GetRoomsBedOfRooms>): GetRoomsByWardRoom;
  clearBedsList(): GetRoomsByWardRoom;
  addBeds(value?: GetRoomsBedOfRooms, index?: number): GetRoomsBedOfRooms;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsByWardRoom.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsByWardRoom): GetRoomsByWardRoom.AsObject;
  static serializeBinaryToWriter(message: GetRoomsByWardRoom, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsByWardRoom;
  static deserializeBinaryFromReader(message: GetRoomsByWardRoom, reader: jspb.BinaryReader): GetRoomsByWardRoom;
}

export namespace GetRoomsByWardRoom {
  export type AsObject = {
    id: string,
    name: string,
    bedsList: Array<GetRoomsBedOfRooms.AsObject>,
  }
}

export class GetRoomsByWardRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): GetRoomsByWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsByWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsByWardRequest): GetRoomsByWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetRoomsByWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsByWardRequest;
  static deserializeBinaryFromReader(message: GetRoomsByWardRequest, reader: jspb.BinaryReader): GetRoomsByWardRequest;
}

export namespace GetRoomsByWardRequest {
  export type AsObject = {
    wardId: string,
  }
}

export class GetRoomsByWardResponse extends jspb.Message {
  getRoomsList(): Array<GetRoomsRoom>;
  setRoomsList(value: Array<GetRoomsRoom>): GetRoomsByWardResponse;
  clearRoomsList(): GetRoomsByWardResponse;
  addRooms(value?: GetRoomsRoom, index?: number): GetRoomsRoom;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsByWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsByWardResponse): GetRoomsByWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetRoomsByWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsByWardResponse;
  static deserializeBinaryFromReader(message: GetRoomsByWardResponse, reader: jspb.BinaryReader): GetRoomsByWardResponse;
}

export namespace GetRoomsByWardResponse {
  export type AsObject = {
    roomsList: Array<GetRoomsRoom.AsObject>,
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

