/* eslint-disable */
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.task_svc.v1";

export interface CreateWardRequest {
  /** @gotags: validate:"required" */
  name: string;
}

export interface CreateWardResponse {
  id: string;
  name: string;
}

export interface GetWardRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface GetWardResponse {
  id: string;
  name: string;
}

export interface UpdateWardRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
  name?: string | undefined;
}

export interface UpdateWardResponse {
}

function createBaseCreateWardRequest(): CreateWardRequest {
  return { name: "" };
}

export const CreateWardRequest = {
  encode(message: CreateWardRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateWardRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateWardRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.name = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateWardRequest {
    return { name: isSet(object.name) ? String(object.name) : "" };
  },

  toJSON(message: CreateWardRequest): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateWardRequest>, I>>(base?: I): CreateWardRequest {
    return CreateWardRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateWardRequest>, I>>(object: I): CreateWardRequest {
    const message = createBaseCreateWardRequest();
    message.name = object.name ?? "";
    return message;
  },
};

function createBaseCreateWardResponse(): CreateWardResponse {
  return { id: "", name: "" };
}

export const CreateWardResponse = {
  encode(message: CreateWardResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateWardResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateWardResponse();
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

          message.name = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateWardResponse {
    return { id: isSet(object.id) ? String(object.id) : "", name: isSet(object.name) ? String(object.name) : "" };
  },

  toJSON(message: CreateWardResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateWardResponse>, I>>(base?: I): CreateWardResponse {
    return CreateWardResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateWardResponse>, I>>(object: I): CreateWardResponse {
    const message = createBaseCreateWardResponse();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    return message;
  },
};

function createBaseGetWardRequest(): GetWardRequest {
  return { id: "" };
}

export const GetWardRequest = {
  encode(message: GetWardRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetWardRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetWardRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetWardRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: GetWardRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetWardRequest>, I>>(base?: I): GetWardRequest {
    return GetWardRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetWardRequest>, I>>(object: I): GetWardRequest {
    const message = createBaseGetWardRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetWardResponse(): GetWardResponse {
  return { id: "", name: "" };
}

export const GetWardResponse = {
  encode(message: GetWardResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetWardResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetWardResponse();
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

          message.name = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetWardResponse {
    return { id: isSet(object.id) ? String(object.id) : "", name: isSet(object.name) ? String(object.name) : "" };
  },

  toJSON(message: GetWardResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetWardResponse>, I>>(base?: I): GetWardResponse {
    return GetWardResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetWardResponse>, I>>(object: I): GetWardResponse {
    const message = createBaseGetWardResponse();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    return message;
  },
};

function createBaseUpdateWardRequest(): UpdateWardRequest {
  return { id: "", name: undefined };
}

export const UpdateWardRequest = {
  encode(message: UpdateWardRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== undefined) {
      writer.uint32(18).string(message.name);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateWardRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateWardRequest();
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

          message.name = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpdateWardRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : undefined,
    };
  },

  toJSON(message: UpdateWardRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateWardRequest>, I>>(base?: I): UpdateWardRequest {
    return UpdateWardRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateWardRequest>, I>>(object: I): UpdateWardRequest {
    const message = createBaseUpdateWardRequest();
    message.id = object.id ?? "";
    message.name = object.name ?? undefined;
    return message;
  },
};

function createBaseUpdateWardResponse(): UpdateWardResponse {
  return {};
}

export const UpdateWardResponse = {
  encode(_: UpdateWardResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateWardResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateWardResponse();
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

  fromJSON(_: any): UpdateWardResponse {
    return {};
  },

  toJSON(_: UpdateWardResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateWardResponse>, I>>(base?: I): UpdateWardResponse {
    return UpdateWardResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateWardResponse>, I>>(_: I): UpdateWardResponse {
    const message = createBaseUpdateWardResponse();
    return message;
  },
};

export interface WardService {
  CreateWard(request: CreateWardRequest): Promise<CreateWardResponse>;
  GetWard(request: GetWardRequest): Promise<GetWardResponse>;
  UpdateWard(request: UpdateWardRequest): Promise<UpdateWardResponse>;
}

export class WardServiceClientImpl implements WardService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.task_svc.v1.WardService";
    this.rpc = rpc;
    this.CreateWard = this.CreateWard.bind(this);
    this.GetWard = this.GetWard.bind(this);
    this.UpdateWard = this.UpdateWard.bind(this);
  }
  CreateWard(request: CreateWardRequest): Promise<CreateWardResponse> {
    const data = CreateWardRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateWard", data);
    return promise.then((data) => CreateWardResponse.decode(_m0.Reader.create(data)));
  }

  GetWard(request: GetWardRequest): Promise<GetWardResponse> {
    const data = GetWardRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "GetWard", data);
    return promise.then((data) => GetWardResponse.decode(_m0.Reader.create(data)));
  }

  UpdateWard(request: UpdateWardRequest): Promise<UpdateWardResponse> {
    const data = UpdateWardRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UpdateWard", data);
    return promise.then((data) => UpdateWardResponse.decode(_m0.Reader.create(data)));
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
