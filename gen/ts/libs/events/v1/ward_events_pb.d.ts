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

