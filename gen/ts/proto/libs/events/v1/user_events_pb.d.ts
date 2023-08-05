import * as jspb from 'google-protobuf'



export class UserRegisteredEvent extends jspb.Message {
  getId(): string;
  setId(value: string): UserRegisteredEvent;

  getEmail(): string;
  setEmail(value: string): UserRegisteredEvent;

  getNickname(): string;
  setNickname(value: string): UserRegisteredEvent;

  getName(): string;
  setName(value: string): UserRegisteredEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UserRegisteredEvent.AsObject;
  static toObject(includeInstance: boolean, msg: UserRegisteredEvent): UserRegisteredEvent.AsObject;
  static serializeBinaryToWriter(message: UserRegisteredEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UserRegisteredEvent;
  static deserializeBinaryFromReader(message: UserRegisteredEvent, reader: jspb.BinaryReader): UserRegisteredEvent;
}

export namespace UserRegisteredEvent {
  export type AsObject = {
    id: string,
    email: string,
    nickname: string,
    name: string,
  }
}

export class UserCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): UserCreatedEvent;

  getEmail(): string;
  setEmail(value: string): UserCreatedEvent;

  getNickname(): string;
  setNickname(value: string): UserCreatedEvent;

  getName(): string;
  setName(value: string): UserCreatedEvent;

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
    name: string,
  }
}

export class UserUpdatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): UserUpdatedEvent;

  getEmail(): string;
  setEmail(value: string): UserUpdatedEvent;
  hasEmail(): boolean;
  clearEmail(): UserUpdatedEvent;

  getNickname(): string;
  setNickname(value: string): UserUpdatedEvent;
  hasNickname(): boolean;
  clearNickname(): UserUpdatedEvent;

  getName(): string;
  setName(value: string): UserUpdatedEvent;
  hasName(): boolean;
  clearName(): UserUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UserUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: UserUpdatedEvent): UserUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: UserUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UserUpdatedEvent;
  static deserializeBinaryFromReader(message: UserUpdatedEvent, reader: jspb.BinaryReader): UserUpdatedEvent;
}

export namespace UserUpdatedEvent {
  export type AsObject = {
    id: string,
    email?: string,
    nickname?: string,
    name?: string,
  }

  export enum EmailCase { 
    _EMAIL_NOT_SET = 0,
    EMAIL = 2,
  }

  export enum NicknameCase { 
    _NICKNAME_NOT_SET = 0,
    NICKNAME = 3,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 4,
  }
}

