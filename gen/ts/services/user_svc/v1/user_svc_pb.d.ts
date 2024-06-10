import * as jspb from 'google-protobuf'



export class CreateUserRequest extends jspb.Message {
  getId(): string;
  setId(value: string): CreateUserRequest;

  getEmail(): string;
  setEmail(value: string): CreateUserRequest;

  getNickname(): string;
  setNickname(value: string): CreateUserRequest;

  getName(): string;
  setName(value: string): CreateUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateUserRequest): CreateUserRequest.AsObject;
  static serializeBinaryToWriter(message: CreateUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateUserRequest;
  static deserializeBinaryFromReader(message: CreateUserRequest, reader: jspb.BinaryReader): CreateUserRequest;
}

export namespace CreateUserRequest {
  export type AsObject = {
    id: string,
    email: string,
    nickname: string,
    name: string,
  }
}

export class CreateUserResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateUserResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateUserResponse): CreateUserResponse.AsObject;
  static serializeBinaryToWriter(message: CreateUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateUserResponse;
  static deserializeBinaryFromReader(message: CreateUserResponse, reader: jspb.BinaryReader): CreateUserResponse;
}

export namespace CreateUserResponse {
  export type AsObject = {
    id: string,
  }
}

export class ReadSelfOrganization extends jspb.Message {
  getId(): string;
  setId(value: string): ReadSelfOrganization;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadSelfOrganization.AsObject;
  static toObject(includeInstance: boolean, msg: ReadSelfOrganization): ReadSelfOrganization.AsObject;
  static serializeBinaryToWriter(message: ReadSelfOrganization, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadSelfOrganization;
  static deserializeBinaryFromReader(message: ReadSelfOrganization, reader: jspb.BinaryReader): ReadSelfOrganization;
}

export namespace ReadSelfOrganization {
  export type AsObject = {
    id: string,
  }
}

export class ReadSelfRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadSelfRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ReadSelfRequest): ReadSelfRequest.AsObject;
  static serializeBinaryToWriter(message: ReadSelfRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadSelfRequest;
  static deserializeBinaryFromReader(message: ReadSelfRequest, reader: jspb.BinaryReader): ReadSelfRequest;
}

export namespace ReadSelfRequest {
  export type AsObject = {
  }
}

export class ReadSelfResponse extends jspb.Message {
  getId(): string;
  setId(value: string): ReadSelfResponse;

  getName(): string;
  setName(value: string): ReadSelfResponse;

  getNickname(): string;
  setNickname(value: string): ReadSelfResponse;

  getAvatarUrl(): string;
  setAvatarUrl(value: string): ReadSelfResponse;
  hasAvatarUrl(): boolean;
  clearAvatarUrl(): ReadSelfResponse;

  getOrganizationsList(): Array<ReadSelfOrganization>;
  setOrganizationsList(value: Array<ReadSelfOrganization>): ReadSelfResponse;
  clearOrganizationsList(): ReadSelfResponse;
  addOrganizations(value?: ReadSelfOrganization, index?: number): ReadSelfOrganization;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadSelfResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ReadSelfResponse): ReadSelfResponse.AsObject;
  static serializeBinaryToWriter(message: ReadSelfResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadSelfResponse;
  static deserializeBinaryFromReader(message: ReadSelfResponse, reader: jspb.BinaryReader): ReadSelfResponse;
}

export namespace ReadSelfResponse {
  export type AsObject = {
    id: string,
    name: string,
    nickname: string,
    avatarUrl?: string,
    organizationsList: Array<ReadSelfOrganization.AsObject>,
  }

  export enum AvatarUrlCase { 
    _AVATAR_URL_NOT_SET = 0,
    AVATAR_URL = 4,
  }
}

export class ReadPublicProfileRequest extends jspb.Message {
  getId(): string;
  setId(value: string): ReadPublicProfileRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadPublicProfileRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ReadPublicProfileRequest): ReadPublicProfileRequest.AsObject;
  static serializeBinaryToWriter(message: ReadPublicProfileRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadPublicProfileRequest;
  static deserializeBinaryFromReader(message: ReadPublicProfileRequest, reader: jspb.BinaryReader): ReadPublicProfileRequest;
}

export namespace ReadPublicProfileRequest {
  export type AsObject = {
    id: string,
  }
}

export class ReadPublicProfileResponse extends jspb.Message {
  getId(): string;
  setId(value: string): ReadPublicProfileResponse;

  getName(): string;
  setName(value: string): ReadPublicProfileResponse;

  getNickname(): string;
  setNickname(value: string): ReadPublicProfileResponse;

  getAvatarUrl(): string;
  setAvatarUrl(value: string): ReadPublicProfileResponse;
  hasAvatarUrl(): boolean;
  clearAvatarUrl(): ReadPublicProfileResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadPublicProfileResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ReadPublicProfileResponse): ReadPublicProfileResponse.AsObject;
  static serializeBinaryToWriter(message: ReadPublicProfileResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadPublicProfileResponse;
  static deserializeBinaryFromReader(message: ReadPublicProfileResponse, reader: jspb.BinaryReader): ReadPublicProfileResponse;
}

export namespace ReadPublicProfileResponse {
  export type AsObject = {
    id: string,
    name: string,
    nickname: string,
    avatarUrl?: string,
  }

  export enum AvatarUrlCase { 
    _AVATAR_URL_NOT_SET = 0,
    AVATAR_URL = 4,
  }
}

export class UpdateUserRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateUserRequest): UpdateUserRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateUserRequest;
  static deserializeBinaryFromReader(message: UpdateUserRequest, reader: jspb.BinaryReader): UpdateUserRequest;
}

export namespace UpdateUserRequest {
  export type AsObject = {
    id: string,
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

