import * as jspb from 'google-protobuf'

import * as libs_events_v1_options_pb from '../../../libs/events/v1/options_pb'; // proto import: "libs/events/v1/options.proto"


export class WardCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): WardCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): WardCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: WardCreatedEvent): WardCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: WardCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): WardCreatedEvent;
  static deserializeBinaryFromReader(message: WardCreatedEvent, reader: jspb.BinaryReader): WardCreatedEvent;
}

export namespace WardCreatedEvent {
  export type AsObject = {
    id: string,
  }
}

export class WardUpdatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): WardUpdatedEvent;

  getName(): string;
  setName(value: string): WardUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): WardUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: WardUpdatedEvent): WardUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: WardUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): WardUpdatedEvent;
  static deserializeBinaryFromReader(message: WardUpdatedEvent, reader: jspb.BinaryReader): WardUpdatedEvent;
}

export namespace WardUpdatedEvent {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class WardDeletedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): WardDeletedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): WardDeletedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: WardDeletedEvent): WardDeletedEvent.AsObject;
  static serializeBinaryToWriter(message: WardDeletedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): WardDeletedEvent;
  static deserializeBinaryFromReader(message: WardDeletedEvent, reader: jspb.BinaryReader): WardDeletedEvent;
}

export namespace WardDeletedEvent {
  export type AsObject = {
    id: string,
  }
}

