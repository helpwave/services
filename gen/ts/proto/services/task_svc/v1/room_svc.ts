/* eslint-disable */
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.task_svc.v1";

export interface CreateRoomRequest {
  /** @gotags: validate:"required" */
  name: string;
  /** @gotags: validate:"required" */
  amountOfBeds: number;
}

export interface CreateRoomResponse {
  id: string;
}

export interface BedOfRoom {
  id: string;
}

export interface GetRoomRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface GetRoomResponse {
  id: string;
  name: string;
  beds: BedOfRoom[];
}

export interface UpdateRoomRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
  name?: string | undefined;
}

export interface UpdateRoomResponse {
}

export interface AddBedsToRoomRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
  amountOfBeds: number;
}

export interface AddBedsToRoomResponse {
}

function createBaseCreateRoomRequest(): CreateRoomRequest {
  return { name: "", amountOfBeds: 0 };
}

export const CreateRoomRequest = {
  encode(message: CreateRoomRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.amountOfBeds !== 0) {
      writer.uint32(16).uint32(message.amountOfBeds);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateRoomRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateRoomRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.name = reader.string();
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.amountOfBeds = reader.uint32();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateRoomRequest {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      amountOfBeds: isSet(object.amountOfBeds) ? Number(object.amountOfBeds) : 0,
    };
  },

  toJSON(message: CreateRoomRequest): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    message.amountOfBeds !== undefined && (obj.amountOfBeds = Math.round(message.amountOfBeds));
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateRoomRequest>, I>>(base?: I): CreateRoomRequest {
    return CreateRoomRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateRoomRequest>, I>>(object: I): CreateRoomRequest {
    const message = createBaseCreateRoomRequest();
    message.name = object.name ?? "";
    message.amountOfBeds = object.amountOfBeds ?? 0;
    return message;
  },
};

function createBaseCreateRoomResponse(): CreateRoomResponse {
  return { id: "" };
}

export const CreateRoomResponse = {
  encode(message: CreateRoomResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateRoomResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateRoomResponse();
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

  fromJSON(object: any): CreateRoomResponse {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: CreateRoomResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateRoomResponse>, I>>(base?: I): CreateRoomResponse {
    return CreateRoomResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateRoomResponse>, I>>(object: I): CreateRoomResponse {
    const message = createBaseCreateRoomResponse();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseBedOfRoom(): BedOfRoom {
  return { id: "" };
}

export const BedOfRoom = {
  encode(message: BedOfRoom, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): BedOfRoom {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseBedOfRoom();
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

  fromJSON(object: any): BedOfRoom {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: BedOfRoom): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<BedOfRoom>, I>>(base?: I): BedOfRoom {
    return BedOfRoom.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<BedOfRoom>, I>>(object: I): BedOfRoom {
    const message = createBaseBedOfRoom();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetRoomRequest(): GetRoomRequest {
  return { id: "" };
}

export const GetRoomRequest = {
  encode(message: GetRoomRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetRoomRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetRoomRequest();
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

  fromJSON(object: any): GetRoomRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: GetRoomRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetRoomRequest>, I>>(base?: I): GetRoomRequest {
    return GetRoomRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetRoomRequest>, I>>(object: I): GetRoomRequest {
    const message = createBaseGetRoomRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetRoomResponse(): GetRoomResponse {
  return { id: "", name: "", beds: [] };
}

export const GetRoomResponse = {
  encode(message: GetRoomResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    for (const v of message.beds) {
      BedOfRoom.encode(v!, writer.uint32(26).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetRoomResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetRoomResponse();
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
        case 3:
          if (tag != 26) {
            break;
          }

          message.beds.push(BedOfRoom.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetRoomResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      beds: Array.isArray(object?.beds) ? object.beds.map((e: any) => BedOfRoom.fromJSON(e)) : [],
    };
  },

  toJSON(message: GetRoomResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    if (message.beds) {
      obj.beds = message.beds.map((e) => e ? BedOfRoom.toJSON(e) : undefined);
    } else {
      obj.beds = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<GetRoomResponse>, I>>(base?: I): GetRoomResponse {
    return GetRoomResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetRoomResponse>, I>>(object: I): GetRoomResponse {
    const message = createBaseGetRoomResponse();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.beds = object.beds?.map((e) => BedOfRoom.fromPartial(e)) || [];
    return message;
  },
};

function createBaseUpdateRoomRequest(): UpdateRoomRequest {
  return { id: "", name: undefined };
}

export const UpdateRoomRequest = {
  encode(message: UpdateRoomRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== undefined) {
      writer.uint32(18).string(message.name);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateRoomRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateRoomRequest();
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

  fromJSON(object: any): UpdateRoomRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : undefined,
    };
  },

  toJSON(message: UpdateRoomRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateRoomRequest>, I>>(base?: I): UpdateRoomRequest {
    return UpdateRoomRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateRoomRequest>, I>>(object: I): UpdateRoomRequest {
    const message = createBaseUpdateRoomRequest();
    message.id = object.id ?? "";
    message.name = object.name ?? undefined;
    return message;
  },
};

function createBaseUpdateRoomResponse(): UpdateRoomResponse {
  return {};
}

export const UpdateRoomResponse = {
  encode(_: UpdateRoomResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateRoomResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateRoomResponse();
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

  fromJSON(_: any): UpdateRoomResponse {
    return {};
  },

  toJSON(_: UpdateRoomResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateRoomResponse>, I>>(base?: I): UpdateRoomResponse {
    return UpdateRoomResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateRoomResponse>, I>>(_: I): UpdateRoomResponse {
    const message = createBaseUpdateRoomResponse();
    return message;
  },
};

function createBaseAddBedsToRoomRequest(): AddBedsToRoomRequest {
  return { id: "", amountOfBeds: 0 };
}

export const AddBedsToRoomRequest = {
  encode(message: AddBedsToRoomRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.amountOfBeds !== 0) {
      writer.uint32(24).uint32(message.amountOfBeds);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddBedsToRoomRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddBedsToRoomRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 3:
          if (tag != 24) {
            break;
          }

          message.amountOfBeds = reader.uint32();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AddBedsToRoomRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      amountOfBeds: isSet(object.amountOfBeds) ? Number(object.amountOfBeds) : 0,
    };
  },

  toJSON(message: AddBedsToRoomRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.amountOfBeds !== undefined && (obj.amountOfBeds = Math.round(message.amountOfBeds));
    return obj;
  },

  create<I extends Exact<DeepPartial<AddBedsToRoomRequest>, I>>(base?: I): AddBedsToRoomRequest {
    return AddBedsToRoomRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<AddBedsToRoomRequest>, I>>(object: I): AddBedsToRoomRequest {
    const message = createBaseAddBedsToRoomRequest();
    message.id = object.id ?? "";
    message.amountOfBeds = object.amountOfBeds ?? 0;
    return message;
  },
};

function createBaseAddBedsToRoomResponse(): AddBedsToRoomResponse {
  return {};
}

export const AddBedsToRoomResponse = {
  encode(_: AddBedsToRoomResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddBedsToRoomResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddBedsToRoomResponse();
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

  fromJSON(_: any): AddBedsToRoomResponse {
    return {};
  },

  toJSON(_: AddBedsToRoomResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<AddBedsToRoomResponse>, I>>(base?: I): AddBedsToRoomResponse {
    return AddBedsToRoomResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<AddBedsToRoomResponse>, I>>(_: I): AddBedsToRoomResponse {
    const message = createBaseAddBedsToRoomResponse();
    return message;
  },
};

export interface RoomService {
  CreateRoom(request: CreateRoomRequest): Promise<CreateRoomResponse>;
  GetRoom(request: GetRoomRequest): Promise<GetRoomResponse>;
  UpdateRoom(request: UpdateRoomRequest): Promise<UpdateRoomResponse>;
  AddBedsToRoom(request: AddBedsToRoomRequest): Promise<AddBedsToRoomResponse>;
}

export class RoomServiceClientImpl implements RoomService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.task_svc.v1.RoomService";
    this.rpc = rpc;
    this.CreateRoom = this.CreateRoom.bind(this);
    this.GetRoom = this.GetRoom.bind(this);
    this.UpdateRoom = this.UpdateRoom.bind(this);
    this.AddBedsToRoom = this.AddBedsToRoom.bind(this);
  }
  CreateRoom(request: CreateRoomRequest): Promise<CreateRoomResponse> {
    const data = CreateRoomRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateRoom", data);
    return promise.then((data) => CreateRoomResponse.decode(_m0.Reader.create(data)));
  }

  GetRoom(request: GetRoomRequest): Promise<GetRoomResponse> {
    const data = GetRoomRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "GetRoom", data);
    return promise.then((data) => GetRoomResponse.decode(_m0.Reader.create(data)));
  }

  UpdateRoom(request: UpdateRoomRequest): Promise<UpdateRoomResponse> {
    const data = UpdateRoomRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UpdateRoom", data);
    return promise.then((data) => UpdateRoomResponse.decode(_m0.Reader.create(data)));
  }

  AddBedsToRoom(request: AddBedsToRoomRequest): Promise<AddBedsToRoomResponse> {
    const data = AddBedsToRoomRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "AddBedsToRoom", data);
    return promise.then((data) => AddBedsToRoomResponse.decode(_m0.Reader.create(data)));
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
