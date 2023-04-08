/* eslint-disable */
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.user_svc.v1";

export interface CreateUserRequest {
  /** @gotags: validate:"required,email" */
  email: string;
  /** @gotags: validate:"required" */
  nickname: string;
  /** @gotags: validate:"required" */
  fullName: string;
  /** @gotags: validate:"required" */
  password: string;
}

export interface CreateUserResponse {
  userId: string;
}

export interface UpdateUserRequest {
  /** if userId is missing the requesting user's id is used */
  userId?: string | undefined;
  fullName?: string | undefined;
  nickname?:
    | string
    | undefined;
  /** @gotags: validate:"omitempty,email" */
  email?: string | undefined;
  password?: string | undefined;
}

export interface UpdateUserResponse {
}

export interface CreateOrganizationRequest {
  /** @gotags: validate:"required,gte=4,lte=64" */
  longName: string;
  /** @gotags: validate:"omitempty,gte=2,lte=16" */
  shortName: string;
  /** @gotags: validate:"required,email" */
  contactEmail: string;
}

export interface CreateOrganizationResponse {
  id: string;
  longName: string;
  shortName: string;
  contactEmail: string;
  avatarUrl: string;
  isPersonal: boolean;
}

function createBaseCreateUserRequest(): CreateUserRequest {
  return { email: "", nickname: "", fullName: "", password: "" };
}

export const CreateUserRequest = {
  encode(message: CreateUserRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.email !== "") {
      writer.uint32(10).string(message.email);
    }
    if (message.nickname !== "") {
      writer.uint32(18).string(message.nickname);
    }
    if (message.fullName !== "") {
      writer.uint32(26).string(message.fullName);
    }
    if (message.password !== "") {
      writer.uint32(34).string(message.password);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateUserRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateUserRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.email = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.nickname = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.fullName = reader.string();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.password = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateUserRequest {
    return {
      email: isSet(object.email) ? String(object.email) : "",
      nickname: isSet(object.nickname) ? String(object.nickname) : "",
      fullName: isSet(object.fullName) ? String(object.fullName) : "",
      password: isSet(object.password) ? String(object.password) : "",
    };
  },

  toJSON(message: CreateUserRequest): unknown {
    const obj: any = {};
    message.email !== undefined && (obj.email = message.email);
    message.nickname !== undefined && (obj.nickname = message.nickname);
    message.fullName !== undefined && (obj.fullName = message.fullName);
    message.password !== undefined && (obj.password = message.password);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateUserRequest>, I>>(base?: I): CreateUserRequest {
    return CreateUserRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateUserRequest>, I>>(object: I): CreateUserRequest {
    const message = createBaseCreateUserRequest();
    message.email = object.email ?? "";
    message.nickname = object.nickname ?? "";
    message.fullName = object.fullName ?? "";
    message.password = object.password ?? "";
    return message;
  },
};

function createBaseCreateUserResponse(): CreateUserResponse {
  return { userId: "" };
}

export const CreateUserResponse = {
  encode(message: CreateUserResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.userId !== "") {
      writer.uint32(10).string(message.userId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateUserResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateUserResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.userId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateUserResponse {
    return { userId: isSet(object.userId) ? String(object.userId) : "" };
  },

  toJSON(message: CreateUserResponse): unknown {
    const obj: any = {};
    message.userId !== undefined && (obj.userId = message.userId);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateUserResponse>, I>>(base?: I): CreateUserResponse {
    return CreateUserResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateUserResponse>, I>>(object: I): CreateUserResponse {
    const message = createBaseCreateUserResponse();
    message.userId = object.userId ?? "";
    return message;
  },
};

function createBaseUpdateUserRequest(): UpdateUserRequest {
  return { userId: undefined, fullName: undefined, nickname: undefined, email: undefined, password: undefined };
}

export const UpdateUserRequest = {
  encode(message: UpdateUserRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.userId !== undefined) {
      writer.uint32(10).string(message.userId);
    }
    if (message.fullName !== undefined) {
      writer.uint32(18).string(message.fullName);
    }
    if (message.nickname !== undefined) {
      writer.uint32(26).string(message.nickname);
    }
    if (message.email !== undefined) {
      writer.uint32(34).string(message.email);
    }
    if (message.password !== undefined) {
      writer.uint32(42).string(message.password);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateUserRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateUserRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.userId = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.fullName = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.nickname = reader.string();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.email = reader.string();
          continue;
        case 5:
          if (tag != 42) {
            break;
          }

          message.password = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpdateUserRequest {
    return {
      userId: isSet(object.userId) ? String(object.userId) : undefined,
      fullName: isSet(object.fullName) ? String(object.fullName) : undefined,
      nickname: isSet(object.nickname) ? String(object.nickname) : undefined,
      email: isSet(object.email) ? String(object.email) : undefined,
      password: isSet(object.password) ? String(object.password) : undefined,
    };
  },

  toJSON(message: UpdateUserRequest): unknown {
    const obj: any = {};
    message.userId !== undefined && (obj.userId = message.userId);
    message.fullName !== undefined && (obj.fullName = message.fullName);
    message.nickname !== undefined && (obj.nickname = message.nickname);
    message.email !== undefined && (obj.email = message.email);
    message.password !== undefined && (obj.password = message.password);
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateUserRequest>, I>>(base?: I): UpdateUserRequest {
    return UpdateUserRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateUserRequest>, I>>(object: I): UpdateUserRequest {
    const message = createBaseUpdateUserRequest();
    message.userId = object.userId ?? undefined;
    message.fullName = object.fullName ?? undefined;
    message.nickname = object.nickname ?? undefined;
    message.email = object.email ?? undefined;
    message.password = object.password ?? undefined;
    return message;
  },
};

function createBaseUpdateUserResponse(): UpdateUserResponse {
  return {};
}

export const UpdateUserResponse = {
  encode(_: UpdateUserResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateUserResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateUserResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): UpdateUserResponse {
    return {};
  },

  toJSON(_: UpdateUserResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateUserResponse>, I>>(base?: I): UpdateUserResponse {
    return UpdateUserResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateUserResponse>, I>>(_: I): UpdateUserResponse {
    const message = createBaseUpdateUserResponse();
    return message;
  },
};

function createBaseCreateOrganizationRequest(): CreateOrganizationRequest {
  return { longName: "", shortName: "", contactEmail: "" };
}

export const CreateOrganizationRequest = {
  encode(message: CreateOrganizationRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.longName !== "") {
      writer.uint32(10).string(message.longName);
    }
    if (message.shortName !== "") {
      writer.uint32(18).string(message.shortName);
    }
    if (message.contactEmail !== "") {
      writer.uint32(26).string(message.contactEmail);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateOrganizationRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateOrganizationRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.longName = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.shortName = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.contactEmail = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateOrganizationRequest {
    return {
      longName: isSet(object.longName) ? String(object.longName) : "",
      shortName: isSet(object.shortName) ? String(object.shortName) : "",
      contactEmail: isSet(object.contactEmail) ? String(object.contactEmail) : "",
    };
  },

  toJSON(message: CreateOrganizationRequest): unknown {
    const obj: any = {};
    message.longName !== undefined && (obj.longName = message.longName);
    message.shortName !== undefined && (obj.shortName = message.shortName);
    message.contactEmail !== undefined && (obj.contactEmail = message.contactEmail);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateOrganizationRequest>, I>>(base?: I): CreateOrganizationRequest {
    return CreateOrganizationRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateOrganizationRequest>, I>>(object: I): CreateOrganizationRequest {
    const message = createBaseCreateOrganizationRequest();
    message.longName = object.longName ?? "";
    message.shortName = object.shortName ?? "";
    message.contactEmail = object.contactEmail ?? "";
    return message;
  },
};

function createBaseCreateOrganizationResponse(): CreateOrganizationResponse {
  return { id: "", longName: "", shortName: "", contactEmail: "", avatarUrl: "", isPersonal: false };
}

export const CreateOrganizationResponse = {
  encode(message: CreateOrganizationResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.longName !== "") {
      writer.uint32(18).string(message.longName);
    }
    if (message.shortName !== "") {
      writer.uint32(26).string(message.shortName);
    }
    if (message.contactEmail !== "") {
      writer.uint32(34).string(message.contactEmail);
    }
    if (message.avatarUrl !== "") {
      writer.uint32(42).string(message.avatarUrl);
    }
    if (message.isPersonal === true) {
      writer.uint32(48).bool(message.isPersonal);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateOrganizationResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateOrganizationResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.longName = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.shortName = reader.string();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.contactEmail = reader.string();
          continue;
        case 5:
          if (tag != 42) {
            break;
          }

          message.avatarUrl = reader.string();
          continue;
        case 6:
          if (tag != 48) {
            break;
          }

          message.isPersonal = reader.bool();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateOrganizationResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      longName: isSet(object.longName) ? String(object.longName) : "",
      shortName: isSet(object.shortName) ? String(object.shortName) : "",
      contactEmail: isSet(object.contactEmail) ? String(object.contactEmail) : "",
      avatarUrl: isSet(object.avatarUrl) ? String(object.avatarUrl) : "",
      isPersonal: isSet(object.isPersonal) ? Boolean(object.isPersonal) : false,
    };
  },

  toJSON(message: CreateOrganizationResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.longName !== undefined && (obj.longName = message.longName);
    message.shortName !== undefined && (obj.shortName = message.shortName);
    message.contactEmail !== undefined && (obj.contactEmail = message.contactEmail);
    message.avatarUrl !== undefined && (obj.avatarUrl = message.avatarUrl);
    message.isPersonal !== undefined && (obj.isPersonal = message.isPersonal);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateOrganizationResponse>, I>>(base?: I): CreateOrganizationResponse {
    return CreateOrganizationResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateOrganizationResponse>, I>>(object: I): CreateOrganizationResponse {
    const message = createBaseCreateOrganizationResponse();
    message.id = object.id ?? "";
    message.longName = object.longName ?? "";
    message.shortName = object.shortName ?? "";
    message.contactEmail = object.contactEmail ?? "";
    message.avatarUrl = object.avatarUrl ?? "";
    message.isPersonal = object.isPersonal ?? false;
    return message;
  },
};

export interface UserService {
  CreateUser(request: CreateUserRequest): Promise<CreateUserResponse>;
  UpdateUser(request: UpdateUserRequest): Promise<UpdateUserResponse>;
  CreateOrganization(request: CreateOrganizationRequest): Promise<CreateOrganizationResponse>;
}

export class UserServiceClientImpl implements UserService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.user_svc.v1.UserService";
    this.rpc = rpc;
    this.CreateUser = this.CreateUser.bind(this);
    this.UpdateUser = this.UpdateUser.bind(this);
    this.CreateOrganization = this.CreateOrganization.bind(this);
  }
  CreateUser(request: CreateUserRequest): Promise<CreateUserResponse> {
    const data = CreateUserRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateUser", data);
    return promise.then((data) => CreateUserResponse.decode(_m0.Reader.create(data)));
  }

  UpdateUser(request: UpdateUserRequest): Promise<UpdateUserResponse> {
    const data = UpdateUserRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UpdateUser", data);
    return promise.then((data) => UpdateUserResponse.decode(_m0.Reader.create(data)));
  }

  CreateOrganization(request: CreateOrganizationRequest): Promise<CreateOrganizationResponse> {
    const data = CreateOrganizationRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateOrganization", data);
    return promise.then((data) => CreateOrganizationResponse.decode(_m0.Reader.create(data)));
  }
}

interface Rpc {
  request(service: string, method: string, data: Uint8Array): Promise<Uint8Array>;
}

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
