import * as jspb from 'google-protobuf'



export class Event extends jspb.Message {
  getEventId(): string;
  setEventId(value: string): Event;

  getEventType(): string;
  setEventType(value: string): Event;

  getAggregateId(): string;
  setAggregateId(value: string): Event;

  getAggregateType(): string;
  setAggregateType(value: string): Event;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Event.AsObject;
  static toObject(includeInstance: boolean, msg: Event): Event.AsObject;
  static serializeBinaryToWriter(message: Event, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Event;
  static deserializeBinaryFromReader(message: Event, reader: jspb.BinaryReader): Event;
}

export namespace Event {
  export type AsObject = {
    eventId: string,
    eventType: string,
    aggregateId: string,
    aggregateType: string,
  }
}

export class ReceiveUpdatesRequest extends jspb.Message {
  getRevision(): number;
  setRevision(value: number): ReceiveUpdatesRequest;
  hasRevision(): boolean;
  clearRevision(): ReceiveUpdatesRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReceiveUpdatesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ReceiveUpdatesRequest): ReceiveUpdatesRequest.AsObject;
  static serializeBinaryToWriter(message: ReceiveUpdatesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReceiveUpdatesRequest;
  static deserializeBinaryFromReader(message: ReceiveUpdatesRequest, reader: jspb.BinaryReader): ReceiveUpdatesRequest;
}

export namespace ReceiveUpdatesRequest {
  export type AsObject = {
    revision?: number,
  }

  export enum RevisionCase { 
    _REVISION_NOT_SET = 0,
    REVISION = 1,
  }
}

export class ReceiveUpdatesResponse extends jspb.Message {
  getRevision(): number;
  setRevision(value: number): ReceiveUpdatesResponse;

  getEvent(): Event | undefined;
  setEvent(value?: Event): ReceiveUpdatesResponse;
  hasEvent(): boolean;
  clearEvent(): ReceiveUpdatesResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReceiveUpdatesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ReceiveUpdatesResponse): ReceiveUpdatesResponse.AsObject;
  static serializeBinaryToWriter(message: ReceiveUpdatesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReceiveUpdatesResponse;
  static deserializeBinaryFromReader(message: ReceiveUpdatesResponse, reader: jspb.BinaryReader): ReceiveUpdatesResponse;
}

export namespace ReceiveUpdatesResponse {
  export type AsObject = {
    revision: number,
    event?: Event.AsObject,
  }
}

