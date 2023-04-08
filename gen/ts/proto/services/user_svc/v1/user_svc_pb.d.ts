import * as jspb from 'google-protobuf'



export class CreateUserRequest extends jspb.Message {
  getEmail(): string;
  setEmail(value: string): CreateUserRequest;

  getNickname(): string;
  setNickname(value: string): CreateUserRequest;

  getFullName(): string;
  setFullName(value: string): CreateUserRequest;

  getPassword(): string;
  setPassword(value: string): CreateUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateUserRequest): CreateUserRequest.AsObject;
  static serializeBinaryToWriter(message: CreateUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateUserRequest;
  static deserializeBinaryFromReader(message: CreateUserRequest, reader: jspb.BinaryReader): CreateUserRequest;
}

export namespace CreateUserRequest {
  export type AsObject = {
    email: string,
    nickname: string,
    fullName: string,
    password: string,
  }
}

export class CreateUserResponse extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): CreateUserResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateUserResponse): CreateUserResponse.AsObject;
  static serializeBinaryToWriter(message: CreateUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateUserResponse;
  static deserializeBinaryFromReader(message: CreateUserResponse, reader: jspb.BinaryReader): CreateUserResponse;
}

export namespace CreateUserResponse {
  export type AsObject = {
    userId: string,
  }
}

export class UpdateUserRequest extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): UpdateUserRequest;
  hasUserId(): boolean;
  clearUserId(): UpdateUserRequest;

  getFullName(): string;
  setFullName(value: string): UpdateUserRequest;
  hasFullName(): boolean;
  clearFullName(): UpdateUserRequest;

  getNickname(): string;
  setNickname(value: string): UpdateUserRequest;
  hasNickname(): boolean;
  clearNickname(): UpdateUserRequest;

  getEmail(): string;
  setEmail(value: string): UpdateUserRequest;
  hasEmail(): boolean;
  clearEmail(): UpdateUserRequest;

  getPassword(): string;
  setPassword(value: string): UpdateUserRequest;
  hasPassword(): boolean;
  clearPassword(): UpdateUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateUserRequest): UpdateUserRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateUserRequest;
  static deserializeBinaryFromReader(message: UpdateUserRequest, reader: jspb.BinaryReader): UpdateUserRequest;
}

export namespace UpdateUserRequest {
  export type AsObject = {
    userId?: string,
    fullName?: string,
    nickname?: string,
    email?: string,
    password?: string,
  }

  export enum UserIdCase { 
    _USER_ID_NOT_SET = 0,
    USER_ID = 1,
  }

  export enum FullNameCase { 
    _FULL_NAME_NOT_SET = 0,
    FULL_NAME = 2,
  }

  export enum NicknameCase { 
    _NICKNAME_NOT_SET = 0,
    NICKNAME = 3,
  }

  export enum EmailCase { 
    _EMAIL_NOT_SET = 0,
    EMAIL = 4,
  }

  export enum PasswordCase { 
    _PASSWORD_NOT_SET = 0,
    PASSWORD = 5,
  }
}

export class UpdateUserResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateUserResponse): UpdateUserResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateUserResponse;
  static deserializeBinaryFromReader(message: UpdateUserResponse, reader: jspb.BinaryReader): UpdateUserResponse;
}

export namespace UpdateUserResponse {
  export type AsObject = {
  }
}

export class CreateOrganizationRequest extends jspb.Message {
  getLongName(): string;
  setLongName(value: string): CreateOrganizationRequest;

  getShortName(): string;
  setShortName(value: string): CreateOrganizationRequest;

  getContactEmail(): string;
  setContactEmail(value: string): CreateOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateOrganizationRequest): CreateOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: CreateOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateOrganizationRequest;
  static deserializeBinaryFromReader(message: CreateOrganizationRequest, reader: jspb.BinaryReader): CreateOrganizationRequest;
}

export namespace CreateOrganizationRequest {
  export type AsObject = {
    longName: string,
    shortName: string,
    contactEmail: string,
  }
}

export class CreateOrganizationResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateOrganizationResponse;

  getLongName(): string;
  setLongName(value: string): CreateOrganizationResponse;

  getShortName(): string;
  setShortName(value: string): CreateOrganizationResponse;

  getContactEmail(): string;
  setContactEmail(value: string): CreateOrganizationResponse;

  getAvatarUrl(): string;
  setAvatarUrl(value: string): CreateOrganizationResponse;

  getIsPersonal(): boolean;
  setIsPersonal(value: boolean): CreateOrganizationResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateOrganizationResponse): CreateOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: CreateOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateOrganizationResponse;
  static deserializeBinaryFromReader(message: CreateOrganizationResponse, reader: jspb.BinaryReader): CreateOrganizationResponse;
}

export namespace CreateOrganizationResponse {
  export type AsObject = {
    id: string,
    longName: string,
    shortName: string,
    contactEmail: string,
    avatarUrl: string,
    isPersonal: boolean,
  }
}

