import * as jspb from 'google-protobuf'



export class EntityEvent extends jspb.Message {
  getEntityId(): string;
  setEntityId(value: string): EntityEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): EntityEvent.AsObject;
  static toObject(includeInstance: boolean, msg: EntityEvent): EntityEvent.AsObject;
  static serializeBinaryToWriter(message: EntityEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): EntityEvent;
  static deserializeBinaryFromReader(message: EntityEvent, reader: jspb.BinaryReader): EntityEvent;
}

export namespace EntityEvent {
  export type AsObject = {
    entityId: string,
  }
}

export class DomainEvent extends jspb.Message {
  getEventId(): string;
  setEventId(value: string): DomainEvent;

  getEventType(): string;
  setEventType(value: string): DomainEvent;

  getAggregateId(): string;
  setAggregateId(value: string): DomainEvent;

  getAggregateType(): string;
  setAggregateType(value: string): DomainEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DomainEvent.AsObject;
  static toObject(includeInstance: boolean, msg: DomainEvent): DomainEvent.AsObject;
  static serializeBinaryToWriter(message: DomainEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DomainEvent;
  static deserializeBinaryFromReader(message: DomainEvent, reader: jspb.BinaryReader): DomainEvent;
}

export namespace DomainEvent {
  export type AsObject = {
    eventId: string,
    eventType: string,
    aggregateId: string,
    aggregateType: string,
  }
}

export class ReceiveUpdatesRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReceiveUpdatesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ReceiveUpdatesRequest): ReceiveUpdatesRequest.AsObject;
  static serializeBinaryToWriter(message: ReceiveUpdatesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReceiveUpdatesRequest;
  static deserializeBinaryFromReader(message: ReceiveUpdatesRequest, reader: jspb.BinaryReader): ReceiveUpdatesRequest;
}

export namespace ReceiveUpdatesRequest {
  export type AsObject = {
  }
}

export class ReceiveUpdatesResponse extends jspb.Message {
  getEntityEvent(): EntityEvent | undefined;
  setEntityEvent(value?: EntityEvent): ReceiveUpdatesResponse;
  hasEntityEvent(): boolean;
  clearEntityEvent(): ReceiveUpdatesResponse;

  getDomainEvent(): DomainEvent | undefined;
  setDomainEvent(value?: DomainEvent): ReceiveUpdatesResponse;
  hasDomainEvent(): boolean;
  clearDomainEvent(): ReceiveUpdatesResponse;

  getEventCase(): ReceiveUpdatesResponse.EventCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReceiveUpdatesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ReceiveUpdatesResponse): ReceiveUpdatesResponse.AsObject;
  static serializeBinaryToWriter(message: ReceiveUpdatesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReceiveUpdatesResponse;
  static deserializeBinaryFromReader(message: ReceiveUpdatesResponse, reader: jspb.BinaryReader): ReceiveUpdatesResponse;
}

export namespace ReceiveUpdatesResponse {
  export type AsObject = {
    entityEvent?: EntityEvent.AsObject,
    domainEvent?: DomainEvent.AsObject,
  }

  export enum EventCase { 
    EVENT_NOT_SET = 0,
    ENTITY_EVENT = 1,
    DOMAIN_EVENT = 2,
  }
}

