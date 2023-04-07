/* eslint-disable */
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.libs.events.v1";

/**
 * This event will be published by the user-svc after a new user was created
 * TOPIC: USER_CREATED
 */
export interface UserCreatedEvent {
  id: string;
  email: string;
  nickname: string;
  fullName: string;
}

function createBaseUserCreatedEvent(): UserCreatedEvent {
  return { id: "", email: "", nickname: "", fullName: "" };
}

export const UserCreatedEvent = {
  encode(message: UserCreatedEvent, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.email !== "") {
      writer.uint32(18).string(message.email);
    }
    if (message.nickname !== "") {
      writer.uint32(26).string(message.nickname);
    }
    if (message.fullName !== "") {
      writer.uint32(34).string(message.fullName);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UserCreatedEvent {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUserCreatedEvent();
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

          message.email = reader.string();
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

          message.fullName = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UserCreatedEvent {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      email: isSet(object.email) ? String(object.email) : "",
      nickname: isSet(object.nickname) ? String(object.nickname) : "",
      fullName: isSet(object.fullName) ? String(object.fullName) : "",
    };
  },

  toJSON(message: UserCreatedEvent): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.email !== undefined && (obj.email = message.email);
    message.nickname !== undefined && (obj.nickname = message.nickname);
    message.fullName !== undefined && (obj.fullName = message.fullName);
    return obj;
  },

  create<I extends Exact<DeepPartial<UserCreatedEvent>, I>>(base?: I): UserCreatedEvent {
    return UserCreatedEvent.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UserCreatedEvent>, I>>(object: I): UserCreatedEvent {
    const message = createBaseUserCreatedEvent();
    message.id = object.id ?? "";
    message.email = object.email ?? "";
    message.nickname = object.nickname ?? "";
    message.fullName = object.fullName ?? "";
    return message;
  },
};

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
