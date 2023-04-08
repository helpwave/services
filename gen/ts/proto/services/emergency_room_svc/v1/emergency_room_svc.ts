/* eslint-disable */
import * as Long from "long";
import * as _m0 from "protobufjs/minimal";

export const protobufPackage = "proto.services.emergency_room_svc.v1";

/** TODO: move somewhere else */
export interface Point {
  /** @gotags: validate:"required" */
  lat: number;
  /** @gotags: validate:"required" */
  long: number;
}

export interface CreateERRequest {
  /** @gotags: validate:"required" */
  name: string;
  /** @gotags: validate:"required" */
  location:
    | Point
    | undefined;
  /** @gotags: validate:"required" */
  displayableAddress: string;
  open: boolean;
  /** @gotags: validate:"required" */
  utilization: number;
  /** @gotags: validate:"dive,uuid" */
  departments: string[];
}

export interface CreateERResponse {
  id: string;
  name: string;
  location: Point | undefined;
  displayableAddress: string;
  open: boolean;
  utilization: number;
  departments: DepartmentBase[];
}

export interface GetERRequest {
  /** @gotags: validate:"required,uuid" */
  id: string;
}

export interface DepartmentBase {
  id: string;
  name: string;
}

export interface GetERResponse {
  id: string;
  name: string;
  location: Point | undefined;
  displayableAddress: string;
  open: boolean;
  utilization: number;
  departments: DepartmentBase[];
}

/** TODO: move somewhere else */
export interface InclusiveIntInterval {
  min?: number | undefined;
  max?: number | undefined;
}

/** TODO: move to hwgorm */
export interface PagedRequest {
  /** @gotags: validate:"required" */
  page: number;
  /** @gotags: validate:"required" */
  pageSize: number;
}

/** TODO: move to hwgorm */
export interface PageInfo {
  page: number;
  pageSize: number;
  totalSize: number;
  lastPage: boolean;
}

export interface GetERsRequest {
  pagedRequest?: PagedRequest | undefined;
  open?: boolean | undefined;
  utilization?: InclusiveIntInterval | undefined;
  location?: Point | undefined;
}

export interface GetERsResponse {
  pageInfo: PageInfo | undefined;
  emergencyRooms: GetERResponse[];
}

export interface UpdateERRequest {
  /** @gotags: validate:"required,uuid" */
  id: string;
  name?: string | undefined;
  location?: Point | undefined;
  displayableAddress?: string | undefined;
  open?: boolean | undefined;
  utilization?: number | undefined;
}

export interface UpdateERResponse {
}

export interface AddDepartmentsToERRequest {
  /** @gotags: validate:"required,uuid" */
  id: string;
  /** @gotags: validate:"required" */
  departments: string[];
}

export interface AddDepartmentsToERResponse {
}

export interface RemoveDepartmentsFromERRequest {
  /** @gotags: validate:"required,uuid" */
  id: string;
  /** @gotags: validate:"required" */
  departments: string[];
}

export interface RemoveDepartmentsFromERResponse {
}

export interface DeleteERRequest {
  /** @gotags: validate:"required,uuid" */
  id: string;
}

export interface DeleteERResponse {
}

function createBasePoint(): Point {
  return { lat: 0, long: 0 };
}

export const Point = {
  encode(message: Point, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.lat !== 0) {
      writer.uint32(13).float(message.lat);
    }
    if (message.long !== 0) {
      writer.uint32(21).float(message.long);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Point {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBasePoint();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 13) {
            break;
          }

          message.lat = reader.float();
          continue;
        case 2:
          if (tag != 21) {
            break;
          }

          message.long = reader.float();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): Point {
    return { lat: isSet(object.lat) ? Number(object.lat) : 0, long: isSet(object.long) ? Number(object.long) : 0 };
  },

  toJSON(message: Point): unknown {
    const obj: any = {};
    message.lat !== undefined && (obj.lat = message.lat);
    message.long !== undefined && (obj.long = message.long);
    return obj;
  },

  create<I extends Exact<DeepPartial<Point>, I>>(base?: I): Point {
    return Point.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<Point>, I>>(object: I): Point {
    const message = createBasePoint();
    message.lat = object.lat ?? 0;
    message.long = object.long ?? 0;
    return message;
  },
};

function createBaseCreateERRequest(): CreateERRequest {
  return { name: "", location: undefined, displayableAddress: "", open: false, utilization: 0, departments: [] };
}

export const CreateERRequest = {
  encode(message: CreateERRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.location !== undefined) {
      Point.encode(message.location, writer.uint32(18).fork()).ldelim();
    }
    if (message.displayableAddress !== "") {
      writer.uint32(26).string(message.displayableAddress);
    }
    if (message.open === true) {
      writer.uint32(32).bool(message.open);
    }
    if (message.utilization !== 0) {
      writer.uint32(40).int32(message.utilization);
    }
    for (const v of message.departments) {
      writer.uint32(50).string(v!);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateERRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateERRequest();
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
          if (tag != 18) {
            break;
          }

          message.location = Point.decode(reader, reader.uint32());
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.displayableAddress = reader.string();
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.open = reader.bool();
          continue;
        case 5:
          if (tag != 40) {
            break;
          }

          message.utilization = reader.int32();
          continue;
        case 6:
          if (tag != 50) {
            break;
          }

          message.departments.push(reader.string());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateERRequest {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      location: isSet(object.location) ? Point.fromJSON(object.location) : undefined,
      displayableAddress: isSet(object.displayableAddress) ? String(object.displayableAddress) : "",
      open: isSet(object.open) ? Boolean(object.open) : false,
      utilization: isSet(object.utilization) ? Number(object.utilization) : 0,
      departments: Array.isArray(object?.departments) ? object.departments.map((e: any) => String(e)) : [],
    };
  },

  toJSON(message: CreateERRequest): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    message.location !== undefined && (obj.location = message.location ? Point.toJSON(message.location) : undefined);
    message.displayableAddress !== undefined && (obj.displayableAddress = message.displayableAddress);
    message.open !== undefined && (obj.open = message.open);
    message.utilization !== undefined && (obj.utilization = Math.round(message.utilization));
    if (message.departments) {
      obj.departments = message.departments.map((e) => e);
    } else {
      obj.departments = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateERRequest>, I>>(base?: I): CreateERRequest {
    return CreateERRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateERRequest>, I>>(object: I): CreateERRequest {
    const message = createBaseCreateERRequest();
    message.name = object.name ?? "";
    message.location = (object.location !== undefined && object.location !== null)
      ? Point.fromPartial(object.location)
      : undefined;
    message.displayableAddress = object.displayableAddress ?? "";
    message.open = object.open ?? false;
    message.utilization = object.utilization ?? 0;
    message.departments = object.departments?.map((e) => e) || [];
    return message;
  },
};

function createBaseCreateERResponse(): CreateERResponse {
  return {
    id: "",
    name: "",
    location: undefined,
    displayableAddress: "",
    open: false,
    utilization: 0,
    departments: [],
  };
}

export const CreateERResponse = {
  encode(message: CreateERResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.location !== undefined) {
      Point.encode(message.location, writer.uint32(26).fork()).ldelim();
    }
    if (message.displayableAddress !== "") {
      writer.uint32(34).string(message.displayableAddress);
    }
    if (message.open === true) {
      writer.uint32(40).bool(message.open);
    }
    if (message.utilization !== 0) {
      writer.uint32(48).int32(message.utilization);
    }
    for (const v of message.departments) {
      DepartmentBase.encode(v!, writer.uint32(58).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateERResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateERResponse();
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

          message.location = Point.decode(reader, reader.uint32());
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.displayableAddress = reader.string();
          continue;
        case 5:
          if (tag != 40) {
            break;
          }

          message.open = reader.bool();
          continue;
        case 6:
          if (tag != 48) {
            break;
          }

          message.utilization = reader.int32();
          continue;
        case 7:
          if (tag != 58) {
            break;
          }

          message.departments.push(DepartmentBase.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateERResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      location: isSet(object.location) ? Point.fromJSON(object.location) : undefined,
      displayableAddress: isSet(object.displayableAddress) ? String(object.displayableAddress) : "",
      open: isSet(object.open) ? Boolean(object.open) : false,
      utilization: isSet(object.utilization) ? Number(object.utilization) : 0,
      departments: Array.isArray(object?.departments)
        ? object.departments.map((e: any) => DepartmentBase.fromJSON(e))
        : [],
    };
  },

  toJSON(message: CreateERResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.location !== undefined && (obj.location = message.location ? Point.toJSON(message.location) : undefined);
    message.displayableAddress !== undefined && (obj.displayableAddress = message.displayableAddress);
    message.open !== undefined && (obj.open = message.open);
    message.utilization !== undefined && (obj.utilization = Math.round(message.utilization));
    if (message.departments) {
      obj.departments = message.departments.map((e) => e ? DepartmentBase.toJSON(e) : undefined);
    } else {
      obj.departments = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<CreateERResponse>, I>>(base?: I): CreateERResponse {
    return CreateERResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<CreateERResponse>, I>>(object: I): CreateERResponse {
    const message = createBaseCreateERResponse();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.location = (object.location !== undefined && object.location !== null)
      ? Point.fromPartial(object.location)
      : undefined;
    message.displayableAddress = object.displayableAddress ?? "";
    message.open = object.open ?? false;
    message.utilization = object.utilization ?? 0;
    message.departments = object.departments?.map((e) => DepartmentBase.fromPartial(e)) || [];
    return message;
  },
};

function createBaseGetERRequest(): GetERRequest {
  return { id: "" };
}

export const GetERRequest = {
  encode(message: GetERRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetERRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetERRequest();
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

  fromJSON(object: any): GetERRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: GetERRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetERRequest>, I>>(base?: I): GetERRequest {
    return GetERRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetERRequest>, I>>(object: I): GetERRequest {
    const message = createBaseGetERRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseDepartmentBase(): DepartmentBase {
  return { id: "", name: "" };
}

export const DepartmentBase = {
  encode(message: DepartmentBase, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): DepartmentBase {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDepartmentBase();
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

  fromJSON(object: any): DepartmentBase {
    return { id: isSet(object.id) ? String(object.id) : "", name: isSet(object.name) ? String(object.name) : "" };
  },

  toJSON(message: DepartmentBase): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  create<I extends Exact<DeepPartial<DepartmentBase>, I>>(base?: I): DepartmentBase {
    return DepartmentBase.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<DepartmentBase>, I>>(object: I): DepartmentBase {
    const message = createBaseDepartmentBase();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    return message;
  },
};

function createBaseGetERResponse(): GetERResponse {
  return {
    id: "",
    name: "",
    location: undefined,
    displayableAddress: "",
    open: false,
    utilization: 0,
    departments: [],
  };
}

export const GetERResponse = {
  encode(message: GetERResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.location !== undefined) {
      Point.encode(message.location, writer.uint32(26).fork()).ldelim();
    }
    if (message.displayableAddress !== "") {
      writer.uint32(34).string(message.displayableAddress);
    }
    if (message.open === true) {
      writer.uint32(40).bool(message.open);
    }
    if (message.utilization !== 0) {
      writer.uint32(48).int32(message.utilization);
    }
    for (const v of message.departments) {
      DepartmentBase.encode(v!, writer.uint32(58).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetERResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetERResponse();
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

          message.location = Point.decode(reader, reader.uint32());
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.displayableAddress = reader.string();
          continue;
        case 5:
          if (tag != 40) {
            break;
          }

          message.open = reader.bool();
          continue;
        case 6:
          if (tag != 48) {
            break;
          }

          message.utilization = reader.int32();
          continue;
        case 7:
          if (tag != 58) {
            break;
          }

          message.departments.push(DepartmentBase.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetERResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      location: isSet(object.location) ? Point.fromJSON(object.location) : undefined,
      displayableAddress: isSet(object.displayableAddress) ? String(object.displayableAddress) : "",
      open: isSet(object.open) ? Boolean(object.open) : false,
      utilization: isSet(object.utilization) ? Number(object.utilization) : 0,
      departments: Array.isArray(object?.departments)
        ? object.departments.map((e: any) => DepartmentBase.fromJSON(e))
        : [],
    };
  },

  toJSON(message: GetERResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.location !== undefined && (obj.location = message.location ? Point.toJSON(message.location) : undefined);
    message.displayableAddress !== undefined && (obj.displayableAddress = message.displayableAddress);
    message.open !== undefined && (obj.open = message.open);
    message.utilization !== undefined && (obj.utilization = Math.round(message.utilization));
    if (message.departments) {
      obj.departments = message.departments.map((e) => e ? DepartmentBase.toJSON(e) : undefined);
    } else {
      obj.departments = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<GetERResponse>, I>>(base?: I): GetERResponse {
    return GetERResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetERResponse>, I>>(object: I): GetERResponse {
    const message = createBaseGetERResponse();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.location = (object.location !== undefined && object.location !== null)
      ? Point.fromPartial(object.location)
      : undefined;
    message.displayableAddress = object.displayableAddress ?? "";
    message.open = object.open ?? false;
    message.utilization = object.utilization ?? 0;
    message.departments = object.departments?.map((e) => DepartmentBase.fromPartial(e)) || [];
    return message;
  },
};

function createBaseInclusiveIntInterval(): InclusiveIntInterval {
  return { min: undefined, max: undefined };
}

export const InclusiveIntInterval = {
  encode(message: InclusiveIntInterval, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.min !== undefined) {
      writer.uint32(8).int32(message.min);
    }
    if (message.max !== undefined) {
      writer.uint32(16).int32(message.max);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): InclusiveIntInterval {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInclusiveIntInterval();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.min = reader.int32();
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.max = reader.int32();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): InclusiveIntInterval {
    return {
      min: isSet(object.min) ? Number(object.min) : undefined,
      max: isSet(object.max) ? Number(object.max) : undefined,
    };
  },

  toJSON(message: InclusiveIntInterval): unknown {
    const obj: any = {};
    message.min !== undefined && (obj.min = Math.round(message.min));
    message.max !== undefined && (obj.max = Math.round(message.max));
    return obj;
  },

  create<I extends Exact<DeepPartial<InclusiveIntInterval>, I>>(base?: I): InclusiveIntInterval {
    return InclusiveIntInterval.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<InclusiveIntInterval>, I>>(object: I): InclusiveIntInterval {
    const message = createBaseInclusiveIntInterval();
    message.min = object.min ?? undefined;
    message.max = object.max ?? undefined;
    return message;
  },
};

function createBasePagedRequest(): PagedRequest {
  return { page: 0, pageSize: 0 };
}

export const PagedRequest = {
  encode(message: PagedRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.page !== 0) {
      writer.uint32(8).int32(message.page);
    }
    if (message.pageSize !== 0) {
      writer.uint32(16).int32(message.pageSize);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): PagedRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBasePagedRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.page = reader.int32();
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.pageSize = reader.int32();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): PagedRequest {
    return {
      page: isSet(object.page) ? Number(object.page) : 0,
      pageSize: isSet(object.pageSize) ? Number(object.pageSize) : 0,
    };
  },

  toJSON(message: PagedRequest): unknown {
    const obj: any = {};
    message.page !== undefined && (obj.page = Math.round(message.page));
    message.pageSize !== undefined && (obj.pageSize = Math.round(message.pageSize));
    return obj;
  },

  create<I extends Exact<DeepPartial<PagedRequest>, I>>(base?: I): PagedRequest {
    return PagedRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<PagedRequest>, I>>(object: I): PagedRequest {
    const message = createBasePagedRequest();
    message.page = object.page ?? 0;
    message.pageSize = object.pageSize ?? 0;
    return message;
  },
};

function createBasePageInfo(): PageInfo {
  return { page: 0, pageSize: 0, totalSize: 0, lastPage: false };
}

export const PageInfo = {
  encode(message: PageInfo, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.page !== 0) {
      writer.uint32(8).int32(message.page);
    }
    if (message.pageSize !== 0) {
      writer.uint32(16).int32(message.pageSize);
    }
    if (message.totalSize !== 0) {
      writer.uint32(24).int64(message.totalSize);
    }
    if (message.lastPage === true) {
      writer.uint32(32).bool(message.lastPage);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): PageInfo {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBasePageInfo();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.page = reader.int32();
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.pageSize = reader.int32();
          continue;
        case 3:
          if (tag != 24) {
            break;
          }

          message.totalSize = longToNumber(reader.int64() as Long);
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.lastPage = reader.bool();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): PageInfo {
    return {
      page: isSet(object.page) ? Number(object.page) : 0,
      pageSize: isSet(object.pageSize) ? Number(object.pageSize) : 0,
      totalSize: isSet(object.totalSize) ? Number(object.totalSize) : 0,
      lastPage: isSet(object.lastPage) ? Boolean(object.lastPage) : false,
    };
  },

  toJSON(message: PageInfo): unknown {
    const obj: any = {};
    message.page !== undefined && (obj.page = Math.round(message.page));
    message.pageSize !== undefined && (obj.pageSize = Math.round(message.pageSize));
    message.totalSize !== undefined && (obj.totalSize = Math.round(message.totalSize));
    message.lastPage !== undefined && (obj.lastPage = message.lastPage);
    return obj;
  },

  create<I extends Exact<DeepPartial<PageInfo>, I>>(base?: I): PageInfo {
    return PageInfo.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<PageInfo>, I>>(object: I): PageInfo {
    const message = createBasePageInfo();
    message.page = object.page ?? 0;
    message.pageSize = object.pageSize ?? 0;
    message.totalSize = object.totalSize ?? 0;
    message.lastPage = object.lastPage ?? false;
    return message;
  },
};

function createBaseGetERsRequest(): GetERsRequest {
  return { pagedRequest: undefined, open: undefined, utilization: undefined, location: undefined };
}

export const GetERsRequest = {
  encode(message: GetERsRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.pagedRequest !== undefined) {
      PagedRequest.encode(message.pagedRequest, writer.uint32(10).fork()).ldelim();
    }
    if (message.open !== undefined) {
      writer.uint32(16).bool(message.open);
    }
    if (message.utilization !== undefined) {
      InclusiveIntInterval.encode(message.utilization, writer.uint32(26).fork()).ldelim();
    }
    if (message.location !== undefined) {
      Point.encode(message.location, writer.uint32(34).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetERsRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetERsRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.pagedRequest = PagedRequest.decode(reader, reader.uint32());
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.open = reader.bool();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.utilization = InclusiveIntInterval.decode(reader, reader.uint32());
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.location = Point.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetERsRequest {
    return {
      pagedRequest: isSet(object.pagedRequest) ? PagedRequest.fromJSON(object.pagedRequest) : undefined,
      open: isSet(object.open) ? Boolean(object.open) : undefined,
      utilization: isSet(object.utilization) ? InclusiveIntInterval.fromJSON(object.utilization) : undefined,
      location: isSet(object.location) ? Point.fromJSON(object.location) : undefined,
    };
  },

  toJSON(message: GetERsRequest): unknown {
    const obj: any = {};
    message.pagedRequest !== undefined &&
      (obj.pagedRequest = message.pagedRequest ? PagedRequest.toJSON(message.pagedRequest) : undefined);
    message.open !== undefined && (obj.open = message.open);
    message.utilization !== undefined &&
      (obj.utilization = message.utilization ? InclusiveIntInterval.toJSON(message.utilization) : undefined);
    message.location !== undefined && (obj.location = message.location ? Point.toJSON(message.location) : undefined);
    return obj;
  },

  create<I extends Exact<DeepPartial<GetERsRequest>, I>>(base?: I): GetERsRequest {
    return GetERsRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetERsRequest>, I>>(object: I): GetERsRequest {
    const message = createBaseGetERsRequest();
    message.pagedRequest = (object.pagedRequest !== undefined && object.pagedRequest !== null)
      ? PagedRequest.fromPartial(object.pagedRequest)
      : undefined;
    message.open = object.open ?? undefined;
    message.utilization = (object.utilization !== undefined && object.utilization !== null)
      ? InclusiveIntInterval.fromPartial(object.utilization)
      : undefined;
    message.location = (object.location !== undefined && object.location !== null)
      ? Point.fromPartial(object.location)
      : undefined;
    return message;
  },
};

function createBaseGetERsResponse(): GetERsResponse {
  return { pageInfo: undefined, emergencyRooms: [] };
}

export const GetERsResponse = {
  encode(message: GetERsResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.pageInfo !== undefined) {
      PageInfo.encode(message.pageInfo, writer.uint32(10).fork()).ldelim();
    }
    for (const v of message.emergencyRooms) {
      GetERResponse.encode(v!, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetERsResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetERsResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.pageInfo = PageInfo.decode(reader, reader.uint32());
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.emergencyRooms.push(GetERResponse.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetERsResponse {
    return {
      pageInfo: isSet(object.pageInfo) ? PageInfo.fromJSON(object.pageInfo) : undefined,
      emergencyRooms: Array.isArray(object?.emergencyRooms)
        ? object.emergencyRooms.map((e: any) => GetERResponse.fromJSON(e))
        : [],
    };
  },

  toJSON(message: GetERsResponse): unknown {
    const obj: any = {};
    message.pageInfo !== undefined && (obj.pageInfo = message.pageInfo ? PageInfo.toJSON(message.pageInfo) : undefined);
    if (message.emergencyRooms) {
      obj.emergencyRooms = message.emergencyRooms.map((e) => e ? GetERResponse.toJSON(e) : undefined);
    } else {
      obj.emergencyRooms = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<GetERsResponse>, I>>(base?: I): GetERsResponse {
    return GetERsResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<GetERsResponse>, I>>(object: I): GetERsResponse {
    const message = createBaseGetERsResponse();
    message.pageInfo = (object.pageInfo !== undefined && object.pageInfo !== null)
      ? PageInfo.fromPartial(object.pageInfo)
      : undefined;
    message.emergencyRooms = object.emergencyRooms?.map((e) => GetERResponse.fromPartial(e)) || [];
    return message;
  },
};

function createBaseUpdateERRequest(): UpdateERRequest {
  return {
    id: "",
    name: undefined,
    location: undefined,
    displayableAddress: undefined,
    open: undefined,
    utilization: undefined,
  };
}

export const UpdateERRequest = {
  encode(message: UpdateERRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== undefined) {
      writer.uint32(18).string(message.name);
    }
    if (message.location !== undefined) {
      Point.encode(message.location, writer.uint32(26).fork()).ldelim();
    }
    if (message.displayableAddress !== undefined) {
      writer.uint32(34).string(message.displayableAddress);
    }
    if (message.open !== undefined) {
      writer.uint32(40).bool(message.open);
    }
    if (message.utilization !== undefined) {
      writer.uint32(48).int32(message.utilization);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateERRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateERRequest();
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

          message.location = Point.decode(reader, reader.uint32());
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.displayableAddress = reader.string();
          continue;
        case 5:
          if (tag != 40) {
            break;
          }

          message.open = reader.bool();
          continue;
        case 6:
          if (tag != 48) {
            break;
          }

          message.utilization = reader.int32();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpdateERRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : undefined,
      location: isSet(object.location) ? Point.fromJSON(object.location) : undefined,
      displayableAddress: isSet(object.displayableAddress) ? String(object.displayableAddress) : undefined,
      open: isSet(object.open) ? Boolean(object.open) : undefined,
      utilization: isSet(object.utilization) ? Number(object.utilization) : undefined,
    };
  },

  toJSON(message: UpdateERRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.location !== undefined && (obj.location = message.location ? Point.toJSON(message.location) : undefined);
    message.displayableAddress !== undefined && (obj.displayableAddress = message.displayableAddress);
    message.open !== undefined && (obj.open = message.open);
    message.utilization !== undefined && (obj.utilization = Math.round(message.utilization));
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateERRequest>, I>>(base?: I): UpdateERRequest {
    return UpdateERRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateERRequest>, I>>(object: I): UpdateERRequest {
    const message = createBaseUpdateERRequest();
    message.id = object.id ?? "";
    message.name = object.name ?? undefined;
    message.location = (object.location !== undefined && object.location !== null)
      ? Point.fromPartial(object.location)
      : undefined;
    message.displayableAddress = object.displayableAddress ?? undefined;
    message.open = object.open ?? undefined;
    message.utilization = object.utilization ?? undefined;
    return message;
  },
};

function createBaseUpdateERResponse(): UpdateERResponse {
  return {};
}

export const UpdateERResponse = {
  encode(_: UpdateERResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateERResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateERResponse();
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

  fromJSON(_: any): UpdateERResponse {
    return {};
  },

  toJSON(_: UpdateERResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<UpdateERResponse>, I>>(base?: I): UpdateERResponse {
    return UpdateERResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<UpdateERResponse>, I>>(_: I): UpdateERResponse {
    const message = createBaseUpdateERResponse();
    return message;
  },
};

function createBaseAddDepartmentsToERRequest(): AddDepartmentsToERRequest {
  return { id: "", departments: [] };
}

export const AddDepartmentsToERRequest = {
  encode(message: AddDepartmentsToERRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    for (const v of message.departments) {
      writer.uint32(18).string(v!);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddDepartmentsToERRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddDepartmentsToERRequest();
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

          message.departments.push(reader.string());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AddDepartmentsToERRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      departments: Array.isArray(object?.departments) ? object.departments.map((e: any) => String(e)) : [],
    };
  },

  toJSON(message: AddDepartmentsToERRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    if (message.departments) {
      obj.departments = message.departments.map((e) => e);
    } else {
      obj.departments = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<AddDepartmentsToERRequest>, I>>(base?: I): AddDepartmentsToERRequest {
    return AddDepartmentsToERRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<AddDepartmentsToERRequest>, I>>(object: I): AddDepartmentsToERRequest {
    const message = createBaseAddDepartmentsToERRequest();
    message.id = object.id ?? "";
    message.departments = object.departments?.map((e) => e) || [];
    return message;
  },
};

function createBaseAddDepartmentsToERResponse(): AddDepartmentsToERResponse {
  return {};
}

export const AddDepartmentsToERResponse = {
  encode(_: AddDepartmentsToERResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddDepartmentsToERResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddDepartmentsToERResponse();
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

  fromJSON(_: any): AddDepartmentsToERResponse {
    return {};
  },

  toJSON(_: AddDepartmentsToERResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<AddDepartmentsToERResponse>, I>>(base?: I): AddDepartmentsToERResponse {
    return AddDepartmentsToERResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<AddDepartmentsToERResponse>, I>>(_: I): AddDepartmentsToERResponse {
    const message = createBaseAddDepartmentsToERResponse();
    return message;
  },
};

function createBaseRemoveDepartmentsFromERRequest(): RemoveDepartmentsFromERRequest {
  return { id: "", departments: [] };
}

export const RemoveDepartmentsFromERRequest = {
  encode(message: RemoveDepartmentsFromERRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    for (const v of message.departments) {
      writer.uint32(18).string(v!);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RemoveDepartmentsFromERRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRemoveDepartmentsFromERRequest();
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

          message.departments.push(reader.string());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RemoveDepartmentsFromERRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      departments: Array.isArray(object?.departments) ? object.departments.map((e: any) => String(e)) : [],
    };
  },

  toJSON(message: RemoveDepartmentsFromERRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    if (message.departments) {
      obj.departments = message.departments.map((e) => e);
    } else {
      obj.departments = [];
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<RemoveDepartmentsFromERRequest>, I>>(base?: I): RemoveDepartmentsFromERRequest {
    return RemoveDepartmentsFromERRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<RemoveDepartmentsFromERRequest>, I>>(
    object: I,
  ): RemoveDepartmentsFromERRequest {
    const message = createBaseRemoveDepartmentsFromERRequest();
    message.id = object.id ?? "";
    message.departments = object.departments?.map((e) => e) || [];
    return message;
  },
};

function createBaseRemoveDepartmentsFromERResponse(): RemoveDepartmentsFromERResponse {
  return {};
}

export const RemoveDepartmentsFromERResponse = {
  encode(_: RemoveDepartmentsFromERResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RemoveDepartmentsFromERResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRemoveDepartmentsFromERResponse();
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

  fromJSON(_: any): RemoveDepartmentsFromERResponse {
    return {};
  },

  toJSON(_: RemoveDepartmentsFromERResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<RemoveDepartmentsFromERResponse>, I>>(base?: I): RemoveDepartmentsFromERResponse {
    return RemoveDepartmentsFromERResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<RemoveDepartmentsFromERResponse>, I>>(_: I): RemoveDepartmentsFromERResponse {
    const message = createBaseRemoveDepartmentsFromERResponse();
    return message;
  },
};

function createBaseDeleteERRequest(): DeleteERRequest {
  return { id: "" };
}

export const DeleteERRequest = {
  encode(message: DeleteERRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): DeleteERRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDeleteERRequest();
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

  fromJSON(object: any): DeleteERRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: DeleteERRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create<I extends Exact<DeepPartial<DeleteERRequest>, I>>(base?: I): DeleteERRequest {
    return DeleteERRequest.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<DeleteERRequest>, I>>(object: I): DeleteERRequest {
    const message = createBaseDeleteERRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseDeleteERResponse(): DeleteERResponse {
  return {};
}

export const DeleteERResponse = {
  encode(_: DeleteERResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): DeleteERResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDeleteERResponse();
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

  fromJSON(_: any): DeleteERResponse {
    return {};
  },

  toJSON(_: DeleteERResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create<I extends Exact<DeepPartial<DeleteERResponse>, I>>(base?: I): DeleteERResponse {
    return DeleteERResponse.fromPartial(base ?? {});
  },

  fromPartial<I extends Exact<DeepPartial<DeleteERResponse>, I>>(_: I): DeleteERResponse {
    const message = createBaseDeleteERResponse();
    return message;
  },
};

export interface EmergencyRoomService {
  CreateER(request: CreateERRequest): Promise<CreateERResponse>;
  GetER(request: GetERRequest): Promise<GetERResponse>;
  GetERs(request: GetERsRequest): Promise<GetERsResponse>;
  UpdateER(request: UpdateERRequest): Promise<UpdateERResponse>;
  AddDepartmentsToER(request: AddDepartmentsToERRequest): Promise<AddDepartmentsToERResponse>;
  RemoveDepartmentsFromER(request: RemoveDepartmentsFromERRequest): Promise<RemoveDepartmentsFromERResponse>;
  DeleteER(request: DeleteERRequest): Promise<DeleteERResponse>;
}

export class EmergencyRoomServiceClientImpl implements EmergencyRoomService {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || "proto.services.emergency_room_svc.v1.EmergencyRoomService";
    this.rpc = rpc;
    this.CreateER = this.CreateER.bind(this);
    this.GetER = this.GetER.bind(this);
    this.GetERs = this.GetERs.bind(this);
    this.UpdateER = this.UpdateER.bind(this);
    this.AddDepartmentsToER = this.AddDepartmentsToER.bind(this);
    this.RemoveDepartmentsFromER = this.RemoveDepartmentsFromER.bind(this);
    this.DeleteER = this.DeleteER.bind(this);
  }
  CreateER(request: CreateERRequest): Promise<CreateERResponse> {
    const data = CreateERRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateER", data);
    return promise.then((data) => CreateERResponse.decode(_m0.Reader.create(data)));
  }

  GetER(request: GetERRequest): Promise<GetERResponse> {
    const data = GetERRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "GetER", data);
    return promise.then((data) => GetERResponse.decode(_m0.Reader.create(data)));
  }

  GetERs(request: GetERsRequest): Promise<GetERsResponse> {
    const data = GetERsRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "GetERs", data);
    return promise.then((data) => GetERsResponse.decode(_m0.Reader.create(data)));
  }

  UpdateER(request: UpdateERRequest): Promise<UpdateERResponse> {
    const data = UpdateERRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "UpdateER", data);
    return promise.then((data) => UpdateERResponse.decode(_m0.Reader.create(data)));
  }

  AddDepartmentsToER(request: AddDepartmentsToERRequest): Promise<AddDepartmentsToERResponse> {
    const data = AddDepartmentsToERRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "AddDepartmentsToER", data);
    return promise.then((data) => AddDepartmentsToERResponse.decode(_m0.Reader.create(data)));
  }

  RemoveDepartmentsFromER(request: RemoveDepartmentsFromERRequest): Promise<RemoveDepartmentsFromERResponse> {
    const data = RemoveDepartmentsFromERRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "RemoveDepartmentsFromER", data);
    return promise.then((data) => RemoveDepartmentsFromERResponse.decode(_m0.Reader.create(data)));
  }

  DeleteER(request: DeleteERRequest): Promise<DeleteERResponse> {
    const data = DeleteERRequest.encode(request).finish();
    const promise = this.rpc.request(this.service, "DeleteER", data);
    return promise.then((data) => DeleteERResponse.decode(_m0.Reader.create(data)));
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
