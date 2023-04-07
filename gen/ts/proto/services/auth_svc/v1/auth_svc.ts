/* eslint-disable */
import * as Long from "long";
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.auth_svc.v1";

/** More in <a href="https://wiki.helpwave.de/doc/authentication-jedzCcERwF">the wiki</a> */
export interface PrelimAuthRequestRequest {
}

export interface PrelimAuthRequestResponse {
  /** the Authorization Request URL including Client ID, Scopes and so on. Start the Auth Flow by redirecting here. */
  url: string;
}

/**
 * Once an Access Token became stale, you can request a new one here using the Refresh Token.
 * You should make sure the refresh token is still valid.
 * More in <a href="https://wiki.helpwave.de/doc/authentication-jedzCcERwF">the wiki</a>
 */
export interface RefreshTokenRequest {
  /** @gotags: validate:"required" */
  refreshToken: string;
}

/** New set of tokens */
export interface RefreshTokenResponse {
  accessToken: string;
  refreshToken: string;
  /** expiry (unix) timestamp of the Access Token */
  exp: number;
}

function createBasePrelimAuthRequestRequest(): PrelimAuthRequestRequest {
  return {};
}

export const PrelimAuthRequestRequest = {
  encode(_: PrelimAuthRequestRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): PrelimAuthRequestRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBasePrelimAuthRequestRequest();
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

  fromJSON(_: any): PrelimAuthRequestRequest {
    return {};
  },

  toJSON(_: PrelimAuthRequestRequest): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<PrelimAuthRequestRequest>, I>>(base?: I): PrelimAuthRequestRequest {
    return PrelimAuthRequestRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<PrelimAuthRequestRequest>, I>>(_: I): PrelimAuthRequestRequest {
    const message = createBasePrelimAuthRequestRequest();
    return message;
  },
};

function createBasePrelimAuthRequestResponse(): PrelimAuthRequestResponse {
  return { url: "" };
}

export const PrelimAuthRequestResponse = {
  encode(message: PrelimAuthRequestResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.url !== "") {
      writer.uint32(10).string(message.url);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): PrelimAuthRequestResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBasePrelimAuthRequestResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.url = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): PrelimAuthRequestResponse {
    return { url: isSet(object.url) ? String(object.url) : "" };
  },

  toJSON(message: PrelimAuthRequestResponse): unknown {
    const obj: any = {};
    message.url !== undefined && (obj.url = message.url);
    return obj;
  },

  create<I extends Exact<DeepPartial<PrelimAuthRequestResponse>, I>>(base?: I): PrelimAuthRequestResponse {
    return PrelimAuthRequestResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<PrelimAuthRequestResponse>, I>>(object: I): PrelimAuthRequestResponse {
    const message = createBasePrelimAuthRequestResponse();
    message.url = object.url ?? "";
    return message;
  },
};

function createBaseRefreshTokenRequest(): RefreshTokenRequest {
  return { refreshToken: "" };
}

export const RefreshTokenRequest = {
  encode(message: RefreshTokenRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.refreshToken !== "") {
      writer.uint32(10).string(message.refreshToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RefreshTokenRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRefreshTokenRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.refreshToken = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RefreshTokenRequest {
    return { refreshToken: isSet(object.refreshToken) ? String(object.refreshToken) : "" };
  },

  toJSON(message: RefreshTokenRequest): unknown {
    const obj: any = {};
    message.refreshToken !== undefined && (obj.refreshToken = message.refreshToken);
    return obj;
  },

  create<I extends Exact<DeepPartial<RefreshTokenRequest>, I>>(base?: I): RefreshTokenRequest {
    return RefreshTokenRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<RefreshTokenRequest>, I>>(object: I): RefreshTokenRequest {
    const message = createBaseRefreshTokenRequest();
    message.refreshToken = object.refreshToken ?? "";
    return message;
  },
};

function createBaseRefreshTokenResponse(): RefreshTokenResponse {
  return { accessToken: "", refreshToken: "", exp: 0 };
}

export const RefreshTokenResponse = {
  encode(message: RefreshTokenResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.accessToken !== "") {
      writer.uint32(10).string(message.accessToken);
    }
    if (message.refreshToken !== "") {
      writer.uint32(18).string(message.refreshToken);
    }
    if (message.exp !== 0) {
      writer.uint32(24).int64(message.exp);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RefreshTokenResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRefreshTokenResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.accessToken = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.refreshToken = reader.string();
          continue;
        case 3:
          if (tag != 24) {
            break;
          }

          message.exp = longToNumber(reader.int64() as Long);
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RefreshTokenResponse {
    return {
      accessToken: isSet(object.accessToken) ? String(object.accessToken) : "",
      refreshToken: isSet(object.refreshToken) ? String(object.refreshToken) : "",
      exp: isSet(object.exp) ? Number(object.exp) : 0,
    };
  },

  toJSON(message: RefreshTokenResponse): unknown {
    const obj: any = {};
    message.accessToken !== undefined && (obj.accessToken = message.accessToken);
    message.refreshToken !== undefined && (obj.refreshToken = message.refreshToken);
    message.exp !== undefined && (obj.exp = Math.round(message.exp));
    return obj;
  },

  create<I extends Exact<DeepPartial<RefreshTokenResponse>, I>>(base?: I): RefreshTokenResponse {
    return RefreshTokenResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<RefreshTokenResponse>, I>>(object: I): RefreshTokenResponse {
    const message = createBaseRefreshTokenResponse();
    message.accessToken = object.accessToken ?? "";
    message.refreshToken = object.refreshToken ?? "";
    message.exp = object.exp ?? 0;
    return message;
  },
};

export interface AuthService {
  PrelimAuthRequest(request: PrelimAuthRequestRequest): Promise<PrelimAuthRequestResponse>;
  RefreshToken(request: RefreshTokenRequest): Promise<RefreshTokenResponse>;
}

export class AuthServiceClientImpl implements AuthService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.auth_svc.v1.AuthService";
    this.rpc = rpc;
    this.PrelimAuthRequest = this.PrelimAuthRequest.bind(this);
    this.RefreshToken = this.RefreshToken.bind(this);
  }
  PrelimAuthRequest(request: PrelimAuthRequestRequest): Promise<PrelimAuthRequestResponse> {
    const data = PrelimAuthRequestRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "PrelimAuthRequest", data);
    return promise.then((data) => PrelimAuthRequestResponse.decode(_m0.Reader.create(data)));
  }

  RefreshToken(request: RefreshTokenRequest): Promise<RefreshTokenResponse> {
    const data = RefreshTokenRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "RefreshToken", data);
    return promise.then((data) => RefreshTokenResponse.decode(_m0.Reader.create(data)));
  }
}

interface Rpc {
  request(service: string, method: string, data: Uint8Array): Promise<Uint8Array>;
}

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var tsProtoGlobalThis: any = (() => {
  if (typeof globalThis !== "undefined") {
    return globalThis;
  }
  if (typeof self !== "undefined") {
    return self;
  }
  if (typeof window !== "undefined") {
    return window;
  }
  if (typeof global !== "undefined") {
    return global;
  }
  throw "Unable to locate global object";
})();

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

function longToNumber(long: Long): number {
  if (long.gt(Number.MAX_SAFE_INTEGER)) {
    throw new tsProtoGlobalThis.Error("Value is larger than Number.MAX_SAFE_INTEGER");
  }
  return long.toNumber();
}

// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
