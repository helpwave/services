import * as jspb from 'google-protobuf'

import * as libs_events_v1_options_pb from '../../../libs/events/v1/options_pb'; // proto import: "libs/events/v1/options.proto"


export class BedCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): BedCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): BedCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: BedCreatedEvent): BedCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: BedCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): BedCreatedEvent;
  static deserializeBinaryFromReader(message: BedCreatedEvent, reader: jspb.BinaryReader): BedCreatedEvent;
}

export namespace BedCreatedEvent {
  export type AsObject = {
    id: string,
  }
}

export class BedUpdatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): BedUpdatedEvent;

  getName(): string;
  setName(value: string): BedUpdatedEvent;

  getRoomId(): string;
  setRoomId(value: string): BedUpdatedEvent;
  hasRoomId(): boolean;
  clearRoomId(): BedUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): BedUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: BedUpdatedEvent): BedUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: BedUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): BedUpdatedEvent;
  static deserializeBinaryFromReader(message: BedUpdatedEvent, reader: jspb.BinaryReader): BedUpdatedEvent;
}

export namespace BedUpdatedEvent {
  export type AsObject = {
    id: string,
    name: string,
    roomId?: string,
  }

  export enum RoomIdCase { 
    _ROOM_ID_NOT_SET = 0,
    ROOM_ID = 3,
  }
}

export class BedDeletedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): BedDeletedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): BedDeletedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: BedDeletedEvent): BedDeletedEvent.AsObject;
  static serializeBinaryToWriter(message: BedDeletedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): BedDeletedEvent;
  static deserializeBinaryFromReader(message: BedDeletedEvent, reader: jspb.BinaryReader): BedDeletedEvent;
}

export namespace BedDeletedEvent {
  export type AsObject = {
    id: string,
  }
}

