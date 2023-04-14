import * as jspb from 'google-protobuf'



export class CreateOrganizationRequest extends jspb.Message {
  getLongName(): string;
  setLongName(value: string): CreateOrganizationRequest;

  getShortName(): string;
  setShortName(value: string): CreateOrganizationRequest;

  getContactEmail(): string;
  setContactEmail(value: string): CreateOrganizationRequest;

  getIsPersonal(): boolean;
  setIsPersonal(value: boolean): CreateOrganizationRequest;

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
    isPersonal: boolean,
  }
}

export class CreateOrganizationResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateOrganizationResponse;

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
  }
}

export class CreateOrganizationForUserRequest extends jspb.Message {
  getLongName(): string;
  setLongName(value: string): CreateOrganizationForUserRequest;

  getShortName(): string;
  setShortName(value: string): CreateOrganizationForUserRequest;

  getContactEmail(): string;
  setContactEmail(value: string): CreateOrganizationForUserRequest;

  getIsPersonal(): boolean;
  setIsPersonal(value: boolean): CreateOrganizationForUserRequest;

  getUserId(): string;
  setUserId(value: string): CreateOrganizationForUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateOrganizationForUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateOrganizationForUserRequest): CreateOrganizationForUserRequest.AsObject;
  static serializeBinaryToWriter(message: CreateOrganizationForUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateOrganizationForUserRequest;
  static deserializeBinaryFromReader(message: CreateOrganizationForUserRequest, reader: jspb.BinaryReader): CreateOrganizationForUserRequest;
}

export namespace CreateOrganizationForUserRequest {
  export type AsObject = {
    longName: string,
    shortName: string,
    contactEmail: string,
    isPersonal: boolean,
    userId: string,
  }
}

export class CreateOrganizationForUserResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateOrganizationForUserResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateOrganizationForUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateOrganizationForUserResponse): CreateOrganizationForUserResponse.AsObject;
  static serializeBinaryToWriter(message: CreateOrganizationForUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateOrganizationForUserResponse;
  static deserializeBinaryFromReader(message: CreateOrganizationForUserResponse, reader: jspb.BinaryReader): CreateOrganizationForUserResponse;
}

export namespace CreateOrganizationForUserResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetOrganizationMember extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): GetOrganizationMember;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetOrganizationMember.AsObject;
  static toObject(includeInstance: boolean, msg: GetOrganizationMember): GetOrganizationMember.AsObject;
  static serializeBinaryToWriter(message: GetOrganizationMember, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetOrganizationMember;
  static deserializeBinaryFromReader(message: GetOrganizationMember, reader: jspb.BinaryReader): GetOrganizationMember;
}

export namespace GetOrganizationMember {
  export type AsObject = {
    userId: string,
  }
}

export class GetOrganizationRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetOrganizationRequest): GetOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: GetOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetOrganizationRequest;
  static deserializeBinaryFromReader(message: GetOrganizationRequest, reader: jspb.BinaryReader): GetOrganizationRequest;
}

export namespace GetOrganizationRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetOrganizationResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetOrganizationResponse;

  getLongName(): string;
  setLongName(value: string): GetOrganizationResponse;

  getShortName(): string;
  setShortName(value: string): GetOrganizationResponse;

  getContactEmail(): string;
  setContactEmail(value: string): GetOrganizationResponse;

  getAvatarUrl(): string;
  setAvatarUrl(value: string): GetOrganizationResponse;

  getIsPersonal(): boolean;
  setIsPersonal(value: boolean): GetOrganizationResponse;

  getMembersList(): Array<GetOrganizationMember>;
  setMembersList(value: Array<GetOrganizationMember>): GetOrganizationResponse;
  clearMembersList(): GetOrganizationResponse;
  addMembers(value?: GetOrganizationMember, index?: number): GetOrganizationMember;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetOrganizationResponse): GetOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: GetOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetOrganizationResponse;
  static deserializeBinaryFromReader(message: GetOrganizationResponse, reader: jspb.BinaryReader): GetOrganizationResponse;
}

export namespace GetOrganizationResponse {
  export type AsObject = {
    id: string,
    longName: string,
    shortName: string,
    contactEmail: string,
    avatarUrl: string,
    isPersonal: boolean,
    membersList: Array<GetOrganizationMember.AsObject>,
  }
}

export class AddMemberRequest extends jspb.Message {
  getId(): string;
  setId(value: string): AddMemberRequest;

  getUserId(): string;
  setUserId(value: string): AddMemberRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddMemberRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AddMemberRequest): AddMemberRequest.AsObject;
  static serializeBinaryToWriter(message: AddMemberRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddMemberRequest;
  static deserializeBinaryFromReader(message: AddMemberRequest, reader: jspb.BinaryReader): AddMemberRequest;
}

export namespace AddMemberRequest {
  export type AsObject = {
    id: string,
    userId: string,
  }
}

export class AddMemberResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddMemberResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AddMemberResponse): AddMemberResponse.AsObject;
  static serializeBinaryToWriter(message: AddMemberResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddMemberResponse;
  static deserializeBinaryFromReader(message: AddMemberResponse, reader: jspb.BinaryReader): AddMemberResponse;
}

export namespace AddMemberResponse {
  export type AsObject = {
  }
}

export class RemoveMemberRequest extends jspb.Message {
  getId(): string;
  setId(value: string): RemoveMemberRequest;

  getUserId(): string;
  setUserId(value: string): RemoveMemberRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RemoveMemberRequest.AsObject;
  static toObject(includeInstance: boolean, msg: RemoveMemberRequest): RemoveMemberRequest.AsObject;
  static serializeBinaryToWriter(message: RemoveMemberRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RemoveMemberRequest;
  static deserializeBinaryFromReader(message: RemoveMemberRequest, reader: jspb.BinaryReader): RemoveMemberRequest;
}

export namespace RemoveMemberRequest {
  export type AsObject = {
    id: string,
    userId: string,
  }
}

export class RemoveMemberResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RemoveMemberResponse.AsObject;
  static toObject(includeInstance: boolean, msg: RemoveMemberResponse): RemoveMemberResponse.AsObject;
  static serializeBinaryToWriter(message: RemoveMemberResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RemoveMemberResponse;
  static deserializeBinaryFromReader(message: RemoveMemberResponse, reader: jspb.BinaryReader): RemoveMemberResponse;
}

export namespace RemoveMemberResponse {
  export type AsObject = {
  }
}

export class InviteMemberRequest extends jspb.Message {
  getId(): string;
  setId(value: string): InviteMemberRequest;

  getEmail(): string;
  setEmail(value: string): InviteMemberRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteMemberRequest.AsObject;
  static toObject(includeInstance: boolean, msg: InviteMemberRequest): InviteMemberRequest.AsObject;
  static serializeBinaryToWriter(message: InviteMemberRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteMemberRequest;
  static deserializeBinaryFromReader(message: InviteMemberRequest, reader: jspb.BinaryReader): InviteMemberRequest;
}

export namespace InviteMemberRequest {
  export type AsObject = {
    id: string,
    email: string,
  }
}

export class InviteMemberResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteMemberResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InviteMemberResponse): InviteMemberResponse.AsObject;
  static serializeBinaryToWriter(message: InviteMemberResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteMemberResponse;
  static deserializeBinaryFromReader(message: InviteMemberResponse, reader: jspb.BinaryReader): InviteMemberResponse;
}

export namespace InviteMemberResponse {
  export type AsObject = {
  }
}

