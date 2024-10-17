import * as jspb from 'google-protobuf'



export class UpdateNameEvent extends jspb.Message {
  getName(): string;
  setName(value: string): UpdateNameEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateNameEvent.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateNameEvent): UpdateNameEvent.AsObject;
  static serializeBinaryToWriter(message: UpdateNameEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateNameEvent;
  static deserializeBinaryFromReader(message: UpdateNameEvent, reader: jspb.BinaryReader): UpdateNameEvent;
}

export namespace UpdateNameEvent {
  export type AsObject = {
    name: string,
  }
}

