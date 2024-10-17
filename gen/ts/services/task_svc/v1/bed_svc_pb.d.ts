import * as jspb from 'google-protobuf'



export class CreateBedRequest extends jspb.Message {
  getRoomId(): string;
  setRoomId(value: string): CreateBedRequest;

  getName(): string;
  setName(value: string): CreateBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateBedRequest): CreateBedRequest.AsObject;
  static serializeBinaryToWriter(message: CreateBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateBedRequest;
  static deserializeBinaryFromReader(message: CreateBedRequest, reader: jspb.BinaryReader): CreateBedRequest;
}

export namespace CreateBedRequest {
  export type AsObject = {
    roomId: string,
    name: string,
  }
}

export class CreateBedResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateBedResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateBedResponse): CreateBedResponse.AsObject;
  static serializeBinaryToWriter(message: CreateBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateBedResponse;
  static deserializeBinaryFromReader(message: CreateBedResponse, reader: jspb.BinaryReader): CreateBedResponse;
}

export namespace CreateBedResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedRequest): GetBedRequest.AsObject;
  static serializeBinaryToWriter(message: GetBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedRequest;
  static deserializeBinaryFromReader(message: GetBedRequest, reader: jspb.BinaryReader): GetBedRequest;
}

export namespace GetBedRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetBedResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetBedResponse;

  getRoomId(): string;
  setRoomId(value: string): GetBedResponse;

  getName(): string;
  setName(value: string): GetBedResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedResponse): GetBedResponse.AsObject;
  static serializeBinaryToWriter(message: GetBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedResponse;
  static deserializeBinaryFromReader(message: GetBedResponse, reader: jspb.BinaryReader): GetBedResponse;
}

export namespace GetBedResponse {
  export type AsObject = {
    id: string,
    roomId: string,
    name: string,
  }
}

export class GetBedByPatientRequest extends jspb.Message {
  getPatientId(): string;
  setPatientId(value: string): GetBedByPatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedByPatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedByPatientRequest): GetBedByPatientRequest.AsObject;
  static serializeBinaryToWriter(message: GetBedByPatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedByPatientRequest;
  static deserializeBinaryFromReader(message: GetBedByPatientRequest, reader: jspb.BinaryReader): GetBedByPatientRequest;
}

export namespace GetBedByPatientRequest {
  export type AsObject = {
    patientId: string,
  }
}

export class GetBedByPatientResponse extends jspb.Message {
  getRoom(): GetBedByPatientResponse.Room | undefined;
  setRoom(value?: GetBedByPatientResponse.Room): GetBedByPatientResponse;
  hasRoom(): boolean;
  clearRoom(): GetBedByPatientResponse;

  getBed(): GetBedByPatientResponse.Bed | undefined;
  setBed(value?: GetBedByPatientResponse.Bed): GetBedByPatientResponse;
  hasBed(): boolean;
  clearBed(): GetBedByPatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedByPatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedByPatientResponse): GetBedByPatientResponse.AsObject;
  static serializeBinaryToWriter(message: GetBedByPatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedByPatientResponse;
  static deserializeBinaryFromReader(message: GetBedByPatientResponse, reader: jspb.BinaryReader): GetBedByPatientResponse;
}

export namespace GetBedByPatientResponse {
  export type AsObject = {
    room?: GetBedByPatientResponse.Room.AsObject,
    bed?: GetBedByPatientResponse.Bed.AsObject,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getWardId(): string;
    setWardId(value: string): Room;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Room.AsObject;
    static toObject(includeInstance: boolean, msg: Room): Room.AsObject;
    static serializeBinaryToWriter(message: Room, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Room;
    static deserializeBinaryFromReader(message: Room, reader: jspb.BinaryReader): Room;
  }

  export namespace Room {
    export type AsObject = {
      id: string,
      name: string,
      wardId: string,
    }
  }


  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Bed.AsObject;
    static toObject(includeInstance: boolean, msg: Bed): Bed.AsObject;
    static serializeBinaryToWriter(message: Bed, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Bed;
    static deserializeBinaryFromReader(message: Bed, reader: jspb.BinaryReader): Bed;
  }

  export namespace Bed {
    export type AsObject = {
      id: string,
      name: string,
    }
  }


  export enum RoomCase { 
    _ROOM_NOT_SET = 0,
    ROOM = 1,
  }

  export enum BedCase { 
    _BED_NOT_SET = 0,
    BED = 2,
  }
}

export class GetBedsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedsRequest): GetBedsRequest.AsObject;
  static serializeBinaryToWriter(message: GetBedsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedsRequest;
  static deserializeBinaryFromReader(message: GetBedsRequest, reader: jspb.BinaryReader): GetBedsRequest;
}

export namespace GetBedsRequest {
  export type AsObject = {
  }
}

export class GetBedsResponse extends jspb.Message {
  getBedsList(): Array<GetBedsResponse.Bed>;
  setBedsList(value: Array<GetBedsResponse.Bed>): GetBedsResponse;
  clearBedsList(): GetBedsResponse;
  addBeds(value?: GetBedsResponse.Bed, index?: number): GetBedsResponse.Bed;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedsResponse): GetBedsResponse.AsObject;
  static serializeBinaryToWriter(message: GetBedsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedsResponse;
  static deserializeBinaryFromReader(message: GetBedsResponse, reader: jspb.BinaryReader): GetBedsResponse;
}

export namespace GetBedsResponse {
  export type AsObject = {
    bedsList: Array<GetBedsResponse.Bed.AsObject>,
  }

  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getRoomId(): string;
    setRoomId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Bed.AsObject;
    static toObject(includeInstance: boolean, msg: Bed): Bed.AsObject;
    static serializeBinaryToWriter(message: Bed, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Bed;
    static deserializeBinaryFromReader(message: Bed, reader: jspb.BinaryReader): Bed;
  }

  export namespace Bed {
    export type AsObject = {
      id: string,
      roomId: string,
      name: string,
    }
  }

}

export class GetBedsByRoomRequest extends jspb.Message {
  getRoomId(): string;
  setRoomId(value: string): GetBedsByRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedsByRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedsByRoomRequest): GetBedsByRoomRequest.AsObject;
  static serializeBinaryToWriter(message: GetBedsByRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedsByRoomRequest;
  static deserializeBinaryFromReader(message: GetBedsByRoomRequest, reader: jspb.BinaryReader): GetBedsByRoomRequest;
}

export namespace GetBedsByRoomRequest {
  export type AsObject = {
    roomId: string,
  }
}

export class GetBedsByRoomResponse extends jspb.Message {
  getBedsList(): Array<GetBedsByRoomResponse.Bed>;
  setBedsList(value: Array<GetBedsByRoomResponse.Bed>): GetBedsByRoomResponse;
  clearBedsList(): GetBedsByRoomResponse;
  addBeds(value?: GetBedsByRoomResponse.Bed, index?: number): GetBedsByRoomResponse.Bed;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBedsByRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetBedsByRoomResponse): GetBedsByRoomResponse.AsObject;
  static serializeBinaryToWriter(message: GetBedsByRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBedsByRoomResponse;
  static deserializeBinaryFromReader(message: GetBedsByRoomResponse, reader: jspb.BinaryReader): GetBedsByRoomResponse;
}

export namespace GetBedsByRoomResponse {
  export type AsObject = {
    bedsList: Array<GetBedsByRoomResponse.Bed.AsObject>,
  }

  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Bed.AsObject;
    static toObject(includeInstance: boolean, msg: Bed): Bed.AsObject;
    static serializeBinaryToWriter(message: Bed, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Bed;
    static deserializeBinaryFromReader(message: Bed, reader: jspb.BinaryReader): Bed;
  }

  export namespace Bed {
    export type AsObject = {
      id: string,
      name: string,
    }
  }

}

export class UpdateBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateBedRequest;

  getRoomId(): string;
  setRoomId(value: string): UpdateBedRequest;
  hasRoomId(): boolean;
  clearRoomId(): UpdateBedRequest;

  getName(): string;
  setName(value: string): UpdateBedRequest;
  hasName(): boolean;
  clearName(): UpdateBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateBedRequest): UpdateBedRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateBedRequest;
  static deserializeBinaryFromReader(message: UpdateBedRequest, reader: jspb.BinaryReader): UpdateBedRequest;
}

export namespace UpdateBedRequest {
  export type AsObject = {
    id: string,
    roomId?: string,
    name?: string,
  }

  export enum RoomIdCase { 
    _ROOM_ID_NOT_SET = 0,
    ROOM_ID = 2,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 3,
  }
}

export class UpdateBedResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateBedResponse): UpdateBedResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateBedResponse;
  static deserializeBinaryFromReader(message: UpdateBedResponse, reader: jspb.BinaryReader): UpdateBedResponse;
}

export namespace UpdateBedResponse {
  export type AsObject = {
  }
}

export class DeleteBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteBedRequest): DeleteBedRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteBedRequest;
  static deserializeBinaryFromReader(message: DeleteBedRequest, reader: jspb.BinaryReader): DeleteBedRequest;
}

export namespace DeleteBedRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteBedResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteBedResponse): DeleteBedResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteBedResponse;
  static deserializeBinaryFromReader(message: DeleteBedResponse, reader: jspb.BinaryReader): DeleteBedResponse;
}

export namespace DeleteBedResponse {
  export type AsObject = {
  }
}

