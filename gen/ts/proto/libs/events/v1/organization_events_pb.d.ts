import * as jspb from 'google-protobuf'



export class OrganizationCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): OrganizationCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): OrganizationCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: OrganizationCreatedEvent): OrganizationCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: OrganizationCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): OrganizationCreatedEvent;
  static deserializeBinaryFromReader(message: OrganizationCreatedEvent, reader: jspb.BinaryReader): OrganizationCreatedEvent;
}

export namespace OrganizationCreatedEvent {
  export type AsObject = {
    id: string,
  }
}

