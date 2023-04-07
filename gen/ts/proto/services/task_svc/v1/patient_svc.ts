/* eslint-disable */
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.task_svc.v1";

export interface CreatePatientRequest {
  /** @gotags: validate:"required" */
  humanReadableIdentifier: string;
}

export interface CreatePatientResponse {
  id: string;
}

export interface GetPatientRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
}

export interface GetPatientResponse {
  /** @gotags: validate:"uuid4" */
  id: string;
  /** @gotags: validate:"required" */
  humanReadableIdentifier: string;
}

export interface UpdatePatientRequest {
  /** @gotags: validate:"uuid4" */
  id: string;
  humanReadableIdentifier?: string | undefined;
}

export interface UpdatePatientResponse {
}

function createBaseCreatePatientRequest(): CreatePatientRequest {
  return { humanReadableIdentifier: "" };
}

export const CreatePatientRequest = {
  encode(message: CreatePatientRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.humanReadableIdentifier !== "") {
      writer.uint32(10).string(message.humanReadableIdentifier);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreatePatientRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreatePatientRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.humanReadableIdentifier = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreatePatientRequest {
    return {
      humanReadableIdentifier: isSet(object.humanReadableIdentifier) ? String(object.humanReadableIdentifier) : "",
    };
  },

  toJSON(message: CreatePatientRequest): unknown {
    const obj: any = {};
    message.humanReadableIdentifier !== undefined && (obj.humanReadableIdentifier = message.humanReadableIdentifier);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreatePatientRequest>, I>>(base?: I): CreatePatientRequest {
    return CreatePatientRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreatePatientRequest>, I>>(object: I): CreatePatientRequest {
    const message = createBaseCreatePatientRequest();
    message.humanReadableIdentifier = object.humanReadableIdentifier ?? "";
    return message;
  },
};

function createBaseCreatePatientResponse(): CreatePatientResponse {
  return { id: "" };
}

export const CreatePatientResponse = {
  encode(message: CreatePatientResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreatePatientResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreatePatientResponse();
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

  fromJSON(object: any): CreatePatientResponse {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: CreatePatientResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<CreatePatientResponse>, I>>(base?: I): CreatePatientResponse {
    return CreatePatientResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreatePatientResponse>, I>>(object: I): CreatePatientResponse {
    const message = createBaseCreatePatientResponse();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetPatientRequest(): GetPatientRequest {
  return { id: "" };
}

export const GetPatientRequest = {
  encode(message: GetPatientRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetPatientRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetPatientRequest();
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

  fromJSON(object: any): GetPatientRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: GetPatientRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetPatientRequest>, I>>(base?: I): GetPatientRequest {
    return GetPatientRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetPatientRequest>, I>>(object: I): GetPatientRequest {
    const message = createBaseGetPatientRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetPatientResponse(): GetPatientResponse {
  return { id: "", humanReadableIdentifier: "" };
}

export const GetPatientResponse = {
  encode(message: GetPatientResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.humanReadableIdentifier !== "") {
      writer.uint32(18).string(message.humanReadableIdentifier);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetPatientResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetPatientResponse();
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

          message.humanReadableIdentifier = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetPatientResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      humanReadableIdentifier: isSet(object.humanReadableIdentifier) ? String(object.humanReadableIdentifier) : "",
    };
  },

  toJSON(message: GetPatientResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.humanReadableIdentifier !== undefined && (obj.humanReadableIdentifier = message.humanReadableIdentifier);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetPatientResponse>, I>>(base?: I): GetPatientResponse {
    return GetPatientResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetPatientResponse>, I>>(object: I): GetPatientResponse {
    const message = createBaseGetPatientResponse();
    message.id = object.id ?? "";
    message.humanReadableIdentifier = object.humanReadableIdentifier ?? "";
    return message;
  },
};

function createBaseUpdatePatientRequest(): UpdatePatientRequest {
  return { id: "", humanReadableIdentifier: undefined };
}

export const UpdatePatientRequest = {
  encode(message: UpdatePatientRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.humanReadableIdentifier !== undefined) {
      writer.uint32(18).string(message.humanReadableIdentifier);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdatePatientRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdatePatientRequest();
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

          message.humanReadableIdentifier = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpdatePatientRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      humanReadableIdentifier: isSet(object.humanReadableIdentifier)
        ? String(object.humanReadableIdentifier)
        : undefined,
    };
  },

  toJSON(message: UpdatePatientRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.humanReadableIdentifier !== undefined && (obj.humanReadableIdentifier = message.humanReadableIdentifier);
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdatePatientRequest>, I>>(base?: I): UpdatePatientRequest {
    return UpdatePatientRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdatePatientRequest>, I>>(object: I): UpdatePatientRequest {
    const message = createBaseUpdatePatientRequest();
    message.id = object.id ?? "";
    message.humanReadableIdentifier = object.humanReadableIdentifier ?? undefined;
    return message;
  },
};

function createBaseUpdatePatientResponse(): UpdatePatientResponse {
  return {};
}

export const UpdatePatientResponse = {
  encode(_: UpdatePatientResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdatePatientResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdatePatientResponse();
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

  fromJSON(_: any): UpdatePatientResponse {
    return {};
  },

  toJSON(_: UpdatePatientResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdatePatientResponse>, I>>(base?: I): UpdatePatientResponse {
    return UpdatePatientResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdatePatientResponse>, I>>(_: I): UpdatePatientResponse {
    const message = createBaseUpdatePatientResponse();
    return message;
  },
};

export interface PatientService {
  CreatePatient(request: CreatePatientRequest): Promise<CreatePatientResponse>;
  GetPatient(request: GetPatientRequest): Promise<GetPatientResponse>;
  UpdatePatient(request: UpdatePatientRequest): Promise<UpdatePatientResponse>;
}

export class PatientServiceClientImpl implements PatientService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.task_svc.v1.PatientService";
    this.rpc = rpc;
    this.CreatePatient = this.CreatePatient.bind(this);
    this.GetPatient = this.GetPatient.bind(this);
    this.UpdatePatient = this.UpdatePatient.bind(this);
  }
  CreatePatient(request: CreatePatientRequest): Promise<CreatePatientResponse> {
    const data = CreatePatientRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreatePatient", data);
    return promise.then((data) => CreatePatientResponse.decode(_m0.Reader.create(data)));
  }

  GetPatient(request: GetPatientRequest): Promise<GetPatientResponse> {
    const data = GetPatientRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "GetPatient", data);
    return promise.then((data) => GetPatientResponse.decode(_m0.Reader.create(data)));
  }

  UpdatePatient(request: UpdatePatientRequest): Promise<UpdatePatientResponse> {
    const data = UpdatePatientRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UpdatePatient", data);
    return promise.then((data) => UpdatePatientResponse.decode(_m0.Reader.create(data)));
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
