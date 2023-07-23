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
  hasIsPersonal(): boolean;
  clearIsPersonal(): CreateOrganizationRequest;

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
    isPersonal?: boolean,
  }

  export enum IsPersonalCase { 
    _IS_PERSONAL_NOT_SET = 0,
    IS_PERSONAL = 4,
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
  hasIsPersonal(): boolean;
  clearIsPersonal(): CreateOrganizationForUserRequest;

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
    isPersonal?: boolean,
    userId: string,
  }

  export enum IsPersonalCase { 
    _IS_PERSONAL_NOT_SET = 0,
    IS_PERSONAL = 4,
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

export class GetOrganizationsByUserRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetOrganizationsByUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetOrganizationsByUserRequest): GetOrganizationsByUserRequest.AsObject;
  static serializeBinaryToWriter(message: GetOrganizationsByUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetOrganizationsByUserRequest;
  static deserializeBinaryFromReader(message: GetOrganizationsByUserRequest, reader: jspb.BinaryReader): GetOrganizationsByUserRequest;
}

export namespace GetOrganizationsByUserRequest {
  export type AsObject = {
  }
}

export class GetOrganizationsByUserResponse extends jspb.Message {
  getOrganizationsList(): Array<GetOrganizationsByUserResponse.Organization>;
  setOrganizationsList(value: Array<GetOrganizationsByUserResponse.Organization>): GetOrganizationsByUserResponse;
  clearOrganizationsList(): GetOrganizationsByUserResponse;
  addOrganizations(value?: GetOrganizationsByUserResponse.Organization, index?: number): GetOrganizationsByUserResponse.Organization;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetOrganizationsByUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetOrganizationsByUserResponse): GetOrganizationsByUserResponse.AsObject;
  static serializeBinaryToWriter(message: GetOrganizationsByUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetOrganizationsByUserResponse;
  static deserializeBinaryFromReader(message: GetOrganizationsByUserResponse, reader: jspb.BinaryReader): GetOrganizationsByUserResponse;
}

export namespace GetOrganizationsByUserResponse {
  export type AsObject = {
    organizationsList: Array<GetOrganizationsByUserResponse.Organization.AsObject>,
  }

  export class Organization extends jspb.Message {
    getId(): string;
    setId(value: string): Organization;

    getLongName(): string;
    setLongName(value: string): Organization;

    getShortName(): string;
    setShortName(value: string): Organization;

    getContactEmail(): string;
    setContactEmail(value: string): Organization;

    getAvatarUrl(): string;
    setAvatarUrl(value: string): Organization;

    getIsPersonal(): boolean;
    setIsPersonal(value: boolean): Organization;

    getMembersList(): Array<GetOrganizationsByUserResponse.Organization.Member>;
    setMembersList(value: Array<GetOrganizationsByUserResponse.Organization.Member>): Organization;
    clearMembersList(): Organization;
    addMembers(value?: GetOrganizationsByUserResponse.Organization.Member, index?: number): GetOrganizationsByUserResponse.Organization.Member;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Organization.AsObject;
    static toObject(includeInstance: boolean, msg: Organization): Organization.AsObject;
    static serializeBinaryToWriter(message: Organization, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Organization;
    static deserializeBinaryFromReader(message: Organization, reader: jspb.BinaryReader): Organization;
  }

  export namespace Organization {
    export type AsObject = {
      id: string,
      longName: string,
      shortName: string,
      contactEmail: string,
      avatarUrl: string,
      isPersonal: boolean,
      membersList: Array<GetOrganizationsByUserResponse.Organization.Member.AsObject>,
    }

    export class Member extends jspb.Message {
      getUserId(): string;
      setUserId(value: string): Member;

      getEmail(): string;
      setEmail(value: string): Member;

      getNickname(): string;
      setNickname(value: string): Member;

      getAvatarUrl(): string;
      setAvatarUrl(value: string): Member;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): Member.AsObject;
      static toObject(includeInstance: boolean, msg: Member): Member.AsObject;
      static serializeBinaryToWriter(message: Member, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): Member;
      static deserializeBinaryFromReader(message: Member, reader: jspb.BinaryReader): Member;
    }

    export namespace Member {
      export type AsObject = {
        userId: string,
        email: string,
        nickname: string,
        avatarUrl: string,
      }
    }

  }

}

export class UpdateOrganizationRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateOrganizationRequest;

  getLongName(): string;
  setLongName(value: string): UpdateOrganizationRequest;
  hasLongName(): boolean;
  clearLongName(): UpdateOrganizationRequest;

  getShortName(): string;
  setShortName(value: string): UpdateOrganizationRequest;
  hasShortName(): boolean;
  clearShortName(): UpdateOrganizationRequest;

  getContactEmail(): string;
  setContactEmail(value: string): UpdateOrganizationRequest;
  hasContactEmail(): boolean;
  clearContactEmail(): UpdateOrganizationRequest;

  getAvatarUrl(): string;
  setAvatarUrl(value: string): UpdateOrganizationRequest;
  hasAvatarUrl(): boolean;
  clearAvatarUrl(): UpdateOrganizationRequest;

  getIsPersonal(): boolean;
  setIsPersonal(value: boolean): UpdateOrganizationRequest;
  hasIsPersonal(): boolean;
  clearIsPersonal(): UpdateOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateOrganizationRequest): UpdateOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateOrganizationRequest;
  static deserializeBinaryFromReader(message: UpdateOrganizationRequest, reader: jspb.BinaryReader): UpdateOrganizationRequest;
}

export namespace UpdateOrganizationRequest {
  export type AsObject = {
    id: string,
    longName?: string,
    shortName?: string,
    contactEmail?: string,
    avatarUrl?: string,
    isPersonal?: boolean,
  }

  export enum LongNameCase { 
    _LONG_NAME_NOT_SET = 0,
    LONG_NAME = 2,
  }

  export enum ShortNameCase { 
    _SHORT_NAME_NOT_SET = 0,
    SHORT_NAME = 3,
  }

  export enum ContactEmailCase { 
    _CONTACT_EMAIL_NOT_SET = 0,
    CONTACT_EMAIL = 4,
  }

  export enum AvatarUrlCase { 
    _AVATAR_URL_NOT_SET = 0,
    AVATAR_URL = 5,
  }

  export enum IsPersonalCase { 
    _IS_PERSONAL_NOT_SET = 0,
    IS_PERSONAL = 6,
  }
}

export class UpdateOrganizationResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateOrganizationResponse): UpdateOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateOrganizationResponse;
  static deserializeBinaryFromReader(message: UpdateOrganizationResponse, reader: jspb.BinaryReader): UpdateOrganizationResponse;
}

export namespace UpdateOrganizationResponse {
  export type AsObject = {
  }
}

export class DeleteOrganizationRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteOrganizationRequest): DeleteOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteOrganizationRequest;
  static deserializeBinaryFromReader(message: DeleteOrganizationRequest, reader: jspb.BinaryReader): DeleteOrganizationRequest;
}

export namespace DeleteOrganizationRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteOrganizationResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteOrganizationResponse): DeleteOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteOrganizationResponse;
  static deserializeBinaryFromReader(message: DeleteOrganizationResponse, reader: jspb.BinaryReader): DeleteOrganizationResponse;
}

export namespace DeleteOrganizationResponse {
  export type AsObject = {
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
  getOrganizationId(): string;
  setOrganizationId(value: string): InviteMemberRequest;

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
    organizationId: string,
    email: string,
  }
}

export class InviteMemberResponse extends jspb.Message {
  getId(): string;
  setId(value: string): InviteMemberResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteMemberResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InviteMemberResponse): InviteMemberResponse.AsObject;
  static serializeBinaryToWriter(message: InviteMemberResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteMemberResponse;
  static deserializeBinaryFromReader(message: InviteMemberResponse, reader: jspb.BinaryReader): InviteMemberResponse;
}

export namespace InviteMemberResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetInvitationsByOrganizationRequest extends jspb.Message {
  getOrganizationId(): string;
  setOrganizationId(value: string): GetInvitationsByOrganizationRequest;

  getState(): InvitationState;
  setState(value: InvitationState): GetInvitationsByOrganizationRequest;
  hasState(): boolean;
  clearState(): GetInvitationsByOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetInvitationsByOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetInvitationsByOrganizationRequest): GetInvitationsByOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: GetInvitationsByOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetInvitationsByOrganizationRequest;
  static deserializeBinaryFromReader(message: GetInvitationsByOrganizationRequest, reader: jspb.BinaryReader): GetInvitationsByOrganizationRequest;
}

export namespace GetInvitationsByOrganizationRequest {
  export type AsObject = {
    organizationId: string,
    state?: InvitationState,
  }

  export enum StateCase { 
    _STATE_NOT_SET = 0,
    STATE = 2,
  }
}

export class GetInvitationsByOrganizationResponse extends jspb.Message {
  getInvitationsList(): Array<GetInvitationsByOrganizationResponse.Invitation>;
  setInvitationsList(value: Array<GetInvitationsByOrganizationResponse.Invitation>): GetInvitationsByOrganizationResponse;
  clearInvitationsList(): GetInvitationsByOrganizationResponse;
  addInvitations(value?: GetInvitationsByOrganizationResponse.Invitation, index?: number): GetInvitationsByOrganizationResponse.Invitation;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetInvitationsByOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetInvitationsByOrganizationResponse): GetInvitationsByOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: GetInvitationsByOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetInvitationsByOrganizationResponse;
  static deserializeBinaryFromReader(message: GetInvitationsByOrganizationResponse, reader: jspb.BinaryReader): GetInvitationsByOrganizationResponse;
}

export namespace GetInvitationsByOrganizationResponse {
  export type AsObject = {
    invitationsList: Array<GetInvitationsByOrganizationResponse.Invitation.AsObject>,
  }

  export class Invitation extends jspb.Message {
    getId(): string;
    setId(value: string): Invitation;

    getEmail(): string;
    setEmail(value: string): Invitation;

    getOrganizationId(): string;
    setOrganizationId(value: string): Invitation;

    getState(): InvitationState;
    setState(value: InvitationState): Invitation;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Invitation.AsObject;
    static toObject(includeInstance: boolean, msg: Invitation): Invitation.AsObject;
    static serializeBinaryToWriter(message: Invitation, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Invitation;
    static deserializeBinaryFromReader(message: Invitation, reader: jspb.BinaryReader): Invitation;
  }

  export namespace Invitation {
    export type AsObject = {
      id: string,
      email: string,
      organizationId: string,
      state: InvitationState,
    }
  }

}

export class GetInvitationsByUserRequest extends jspb.Message {
  getState(): InvitationState;
  setState(value: InvitationState): GetInvitationsByUserRequest;
  hasState(): boolean;
  clearState(): GetInvitationsByUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetInvitationsByUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetInvitationsByUserRequest): GetInvitationsByUserRequest.AsObject;
  static serializeBinaryToWriter(message: GetInvitationsByUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetInvitationsByUserRequest;
  static deserializeBinaryFromReader(message: GetInvitationsByUserRequest, reader: jspb.BinaryReader): GetInvitationsByUserRequest;
}

export namespace GetInvitationsByUserRequest {
  export type AsObject = {
    state?: InvitationState,
  }

  export enum StateCase { 
    _STATE_NOT_SET = 0,
    STATE = 1,
  }
}

export class GetInvitationsByUserResponse extends jspb.Message {
  getInvitationsList(): Array<GetInvitationsByUserResponse.Invitation>;
  setInvitationsList(value: Array<GetInvitationsByUserResponse.Invitation>): GetInvitationsByUserResponse;
  clearInvitationsList(): GetInvitationsByUserResponse;
  addInvitations(value?: GetInvitationsByUserResponse.Invitation, index?: number): GetInvitationsByUserResponse.Invitation;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetInvitationsByUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetInvitationsByUserResponse): GetInvitationsByUserResponse.AsObject;
  static serializeBinaryToWriter(message: GetInvitationsByUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetInvitationsByUserResponse;
  static deserializeBinaryFromReader(message: GetInvitationsByUserResponse, reader: jspb.BinaryReader): GetInvitationsByUserResponse;
}

export namespace GetInvitationsByUserResponse {
  export type AsObject = {
    invitationsList: Array<GetInvitationsByUserResponse.Invitation.AsObject>,
  }

  export class Invitation extends jspb.Message {
    getId(): string;
    setId(value: string): Invitation;

    getEmail(): string;
    setEmail(value: string): Invitation;

    getOrganization(): GetInvitationsByUserResponse.Invitation.Organization | undefined;
    setOrganization(value?: GetInvitationsByUserResponse.Invitation.Organization): Invitation;
    hasOrganization(): boolean;
    clearOrganization(): Invitation;

    getState(): InvitationState;
    setState(value: InvitationState): Invitation;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Invitation.AsObject;
    static toObject(includeInstance: boolean, msg: Invitation): Invitation.AsObject;
    static serializeBinaryToWriter(message: Invitation, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Invitation;
    static deserializeBinaryFromReader(message: Invitation, reader: jspb.BinaryReader): Invitation;
  }

  export namespace Invitation {
    export type AsObject = {
      id: string,
      email: string,
      organization?: GetInvitationsByUserResponse.Invitation.Organization.AsObject,
      state: InvitationState,
    }

    export class Organization extends jspb.Message {
      getId(): string;
      setId(value: string): Organization;

      getLongName(): string;
      setLongName(value: string): Organization;

      getAvatarUrl(): string;
      setAvatarUrl(value: string): Organization;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): Organization.AsObject;
      static toObject(includeInstance: boolean, msg: Organization): Organization.AsObject;
      static serializeBinaryToWriter(message: Organization, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): Organization;
      static deserializeBinaryFromReader(message: Organization, reader: jspb.BinaryReader): Organization;
    }

    export namespace Organization {
      export type AsObject = {
        id: string,
        longName: string,
        avatarUrl: string,
      }
    }

  }

}

export class AcceptInvitationRequest extends jspb.Message {
  getInvitationId(): string;
  setInvitationId(value: string): AcceptInvitationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AcceptInvitationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AcceptInvitationRequest): AcceptInvitationRequest.AsObject;
  static serializeBinaryToWriter(message: AcceptInvitationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AcceptInvitationRequest;
  static deserializeBinaryFromReader(message: AcceptInvitationRequest, reader: jspb.BinaryReader): AcceptInvitationRequest;
}

export namespace AcceptInvitationRequest {
  export type AsObject = {
    invitationId: string,
  }
}

export class AcceptInvitationResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AcceptInvitationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AcceptInvitationResponse): AcceptInvitationResponse.AsObject;
  static serializeBinaryToWriter(message: AcceptInvitationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AcceptInvitationResponse;
  static deserializeBinaryFromReader(message: AcceptInvitationResponse, reader: jspb.BinaryReader): AcceptInvitationResponse;
}

export namespace AcceptInvitationResponse {
  export type AsObject = {
  }
}

export class DeclineInvitationRequest extends jspb.Message {
  getInvitationId(): string;
  setInvitationId(value: string): DeclineInvitationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeclineInvitationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeclineInvitationRequest): DeclineInvitationRequest.AsObject;
  static serializeBinaryToWriter(message: DeclineInvitationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeclineInvitationRequest;
  static deserializeBinaryFromReader(message: DeclineInvitationRequest, reader: jspb.BinaryReader): DeclineInvitationRequest;
}

export namespace DeclineInvitationRequest {
  export type AsObject = {
    invitationId: string,
  }
}

export class DeclineInvitationResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeclineInvitationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeclineInvitationResponse): DeclineInvitationResponse.AsObject;
  static serializeBinaryToWriter(message: DeclineInvitationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeclineInvitationResponse;
  static deserializeBinaryFromReader(message: DeclineInvitationResponse, reader: jspb.BinaryReader): DeclineInvitationResponse;
}

export namespace DeclineInvitationResponse {
  export type AsObject = {
  }
}

export enum InvitationState { 
  INVITATION_STATE_UNSPECIFIED = 0,
  INVITATION_STATE_PENDING = 1,
  INVITATION_STATE_ACCEPTED = 2,
  INVITATION_STATE_REJECTED = 3,
}
