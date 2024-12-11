import * as jspb from 'google-protobuf'

import * as libs_events_v1_options_pb from '../../../libs/events/v1/options_pb'; // proto import: "libs/events/v1/options.proto"


export class RoomCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): RoomCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RoomCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: RoomCreatedEvent): RoomCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: RoomCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RoomCreatedEvent;
  static deserializeBinaryFromReader(message: RoomCreatedEvent, reader: jspb.BinaryReader): RoomCreatedEvent;
}

export namespace RoomCreatedEvent {
  export type AsObject = {
    id: string,
  }
}

export class RoomUpdatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): RoomUpdatedEvent;

  getName(): string;
  setName(value: string): RoomUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RoomUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: RoomUpdatedEvent): RoomUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: RoomUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RoomUpdatedEvent;
  static deserializeBinaryFromReader(message: RoomUpdatedEvent, reader: jspb.BinaryReader): RoomUpdatedEvent;
}

export namespace RoomUpdatedEvent {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class RoomDeletedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): RoomDeletedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RoomDeletedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: RoomDeletedEvent): RoomDeletedEvent.AsObject;
  static serializeBinaryToWriter(message: RoomDeletedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RoomDeletedEvent;
  static deserializeBinaryFromReader(message: RoomDeletedEvent, reader: jspb.BinaryReader): RoomDeletedEvent;
}

export namespace RoomDeletedEvent {
  export type AsObject = {
    id: string,
  }
}

