import * as jspb from 'google-protobuf'



export class UserCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): UserCreatedEvent;

  getEmail(): string;
  setEmail(value: string): UserCreatedEvent;

  getNickname(): string;
  setNickname(value: string): UserCreatedEvent;

  getFullName(): string;
  setFullName(value: string): UserCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UserCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: UserCreatedEvent): UserCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: UserCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UserCreatedEvent;
  static deserializeBinaryFromReader(message: UserCreatedEvent, reader: jspb.BinaryReader): UserCreatedEvent;
}

export namespace UserCreatedEvent {
  export type AsObject = {
    id: string,
    email: string,
    nickname: string,
    fullName: string,
  }
}

