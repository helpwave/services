import * as jspb from 'google-protobuf'



export class Point extends jspb.Message {
  getLat(): number;
  setLat(value: number): Point;

  getLong(): number;
  setLong(value: number): Point;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Point.AsObject;
  static toObject(includeInstance: boolean, msg: Point): Point.AsObject;
  static serializeBinaryToWriter(message: Point, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Point;
  static deserializeBinaryFromReader(message: Point, reader: jspb.BinaryReader): Point;
}

export namespace Point {
  export type AsObject = {
    lat: number,
    pb_long: number,
  }
}

export class CreateERRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateERRequest;

  getLocation(): Point | undefined;
  setLocation(value?: Point): CreateERRequest;
  hasLocation(): boolean;
  clearLocation(): CreateERRequest;

  getDisplayableAddress(): string;
  setDisplayableAddress(value: string): CreateERRequest;

  getOpen(): boolean;
  setOpen(value: boolean): CreateERRequest;

  getUtilization(): number;
  setUtilization(value: number): CreateERRequest;

  getDepartmentsList(): Array<string>;
  setDepartmentsList(value: Array<string>): CreateERRequest;
  clearDepartmentsList(): CreateERRequest;
  addDepartments(value: string, index?: number): CreateERRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateERRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateERRequest): CreateERRequest.AsObject;
  static serializeBinaryToWriter(message: CreateERRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateERRequest;
  static deserializeBinaryFromReader(message: CreateERRequest, reader: jspb.BinaryReader): CreateERRequest;
}

export namespace CreateERRequest {
  export type AsObject = {
    name: string,
    location?: Point.AsObject,
    displayableAddress: string,
    open: boolean,
    utilization: number,
    departmentsList: Array<string>,
  }
}

export class CreateERResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateERResponse;

  getName(): string;
  setName(value: string): CreateERResponse;

  getLocation(): Point | undefined;
  setLocation(value?: Point): CreateERResponse;
  hasLocation(): boolean;
  clearLocation(): CreateERResponse;

  getDisplayableAddress(): string;
  setDisplayableAddress(value: string): CreateERResponse;

  getOpen(): boolean;
  setOpen(value: boolean): CreateERResponse;

  getUtilization(): number;
  setUtilization(value: number): CreateERResponse;

  getDepartmentsList(): Array<DepartmentBase>;
  setDepartmentsList(value: Array<DepartmentBase>): CreateERResponse;
  clearDepartmentsList(): CreateERResponse;
  addDepartments(value?: DepartmentBase, index?: number): DepartmentBase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateERResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateERResponse): CreateERResponse.AsObject;
  static serializeBinaryToWriter(message: CreateERResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateERResponse;
  static deserializeBinaryFromReader(message: CreateERResponse, reader: jspb.BinaryReader): CreateERResponse;
}

export namespace CreateERResponse {
  export type AsObject = {
    id: string,
    name: string,
    location?: Point.AsObject,
    displayableAddress: string,
    open: boolean,
    utilization: number,
    departmentsList: Array<DepartmentBase.AsObject>,
  }
}

export class GetERRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetERRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetERRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetERRequest): GetERRequest.AsObject;
  static serializeBinaryToWriter(message: GetERRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetERRequest;
  static deserializeBinaryFromReader(message: GetERRequest, reader: jspb.BinaryReader): GetERRequest;
}

export namespace GetERRequest {
  export type AsObject = {
    id: string,
  }
}

export class DepartmentBase extends jspb.Message {
  getId(): string;
  setId(value: string): DepartmentBase;

  getName(): string;
  setName(value: string): DepartmentBase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DepartmentBase.AsObject;
  static toObject(includeInstance: boolean, msg: DepartmentBase): DepartmentBase.AsObject;
  static serializeBinaryToWriter(message: DepartmentBase, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DepartmentBase;
  static deserializeBinaryFromReader(message: DepartmentBase, reader: jspb.BinaryReader): DepartmentBase;
}

export namespace DepartmentBase {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class GetERResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetERResponse;

  getName(): string;
  setName(value: string): GetERResponse;

  getLocation(): Point | undefined;
  setLocation(value?: Point): GetERResponse;
  hasLocation(): boolean;
  clearLocation(): GetERResponse;

  getDisplayableAddress(): string;
  setDisplayableAddress(value: string): GetERResponse;

  getOpen(): boolean;
  setOpen(value: boolean): GetERResponse;

  getUtilization(): number;
  setUtilization(value: number): GetERResponse;

  getDepartmentsList(): Array<DepartmentBase>;
  setDepartmentsList(value: Array<DepartmentBase>): GetERResponse;
  clearDepartmentsList(): GetERResponse;
  addDepartments(value?: DepartmentBase, index?: number): DepartmentBase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetERResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetERResponse): GetERResponse.AsObject;
  static serializeBinaryToWriter(message: GetERResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetERResponse;
  static deserializeBinaryFromReader(message: GetERResponse, reader: jspb.BinaryReader): GetERResponse;
}

export namespace GetERResponse {
  export type AsObject = {
    id: string,
    name: string,
    location?: Point.AsObject,
    displayableAddress: string,
    open: boolean,
    utilization: number,
    departmentsList: Array<DepartmentBase.AsObject>,
  }
}

export class InclusiveIntInterval extends jspb.Message {
  getMin(): number;
  setMin(value: number): InclusiveIntInterval;
  hasMin(): boolean;
  clearMin(): InclusiveIntInterval;

  getMax(): number;
  setMax(value: number): InclusiveIntInterval;
  hasMax(): boolean;
  clearMax(): InclusiveIntInterval;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InclusiveIntInterval.AsObject;
  static toObject(includeInstance: boolean, msg: InclusiveIntInterval): InclusiveIntInterval.AsObject;
  static serializeBinaryToWriter(message: InclusiveIntInterval, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InclusiveIntInterval;
  static deserializeBinaryFromReader(message: InclusiveIntInterval, reader: jspb.BinaryReader): InclusiveIntInterval;
}

export namespace InclusiveIntInterval {
  export type AsObject = {
    min?: number,
    max?: number,
  }

  export enum MinCase { 
    _MIN_NOT_SET = 0,
    MIN = 1,
  }

  export enum MaxCase { 
    _MAX_NOT_SET = 0,
    MAX = 2,
  }
}

export class PagedRequest extends jspb.Message {
  getPage(): number;
  setPage(value: number): PagedRequest;

  getPageSize(): number;
  setPageSize(value: number): PagedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PagedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: PagedRequest): PagedRequest.AsObject;
  static serializeBinaryToWriter(message: PagedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PagedRequest;
  static deserializeBinaryFromReader(message: PagedRequest, reader: jspb.BinaryReader): PagedRequest;
}

export namespace PagedRequest {
  export type AsObject = {
    page: number,
    pageSize: number,
  }
}

export class PageInfo extends jspb.Message {
  getPage(): number;
  setPage(value: number): PageInfo;

  getPageSize(): number;
  setPageSize(value: number): PageInfo;

  getTotalSize(): number;
  setTotalSize(value: number): PageInfo;

  getLastPage(): boolean;
  setLastPage(value: boolean): PageInfo;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PageInfo.AsObject;
  static toObject(includeInstance: boolean, msg: PageInfo): PageInfo.AsObject;
  static serializeBinaryToWriter(message: PageInfo, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PageInfo;
  static deserializeBinaryFromReader(message: PageInfo, reader: jspb.BinaryReader): PageInfo;
}

export namespace PageInfo {
  export type AsObject = {
    page: number,
    pageSize: number,
    totalSize: number,
    lastPage: boolean,
  }
}

export class GetERsRequest extends jspb.Message {
  getPagedRequest(): PagedRequest | undefined;
  setPagedRequest(value?: PagedRequest): GetERsRequest;
  hasPagedRequest(): boolean;
  clearPagedRequest(): GetERsRequest;

  getOpen(): boolean;
  setOpen(value: boolean): GetERsRequest;
  hasOpen(): boolean;
  clearOpen(): GetERsRequest;

  getUtilization(): InclusiveIntInterval | undefined;
  setUtilization(value?: InclusiveIntInterval): GetERsRequest;
  hasUtilization(): boolean;
  clearUtilization(): GetERsRequest;

  getLocation(): Point | undefined;
  setLocation(value?: Point): GetERsRequest;
  hasLocation(): boolean;
  clearLocation(): GetERsRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetERsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetERsRequest): GetERsRequest.AsObject;
  static serializeBinaryToWriter(message: GetERsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetERsRequest;
  static deserializeBinaryFromReader(message: GetERsRequest, reader: jspb.BinaryReader): GetERsRequest;
}

export namespace GetERsRequest {
  export type AsObject = {
    pagedRequest?: PagedRequest.AsObject,
    open?: boolean,
    utilization?: InclusiveIntInterval.AsObject,
    location?: Point.AsObject,
  }

  export enum PagedRequestCase { 
    _PAGED_REQUEST_NOT_SET = 0,
    PAGED_REQUEST = 1,
  }

  export enum OpenCase { 
    _OPEN_NOT_SET = 0,
    OPEN = 2,
  }

  export enum UtilizationCase { 
    _UTILIZATION_NOT_SET = 0,
    UTILIZATION = 3,
  }

  export enum LocationCase { 
    _LOCATION_NOT_SET = 0,
    LOCATION = 4,
  }
}

export class GetERsResponse extends jspb.Message {
  getPageInfo(): PageInfo | undefined;
  setPageInfo(value?: PageInfo): GetERsResponse;
  hasPageInfo(): boolean;
  clearPageInfo(): GetERsResponse;

  getEmergencyRoomsList(): Array<GetERResponse>;
  setEmergencyRoomsList(value: Array<GetERResponse>): GetERsResponse;
  clearEmergencyRoomsList(): GetERsResponse;
  addEmergencyRooms(value?: GetERResponse, index?: number): GetERResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetERsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetERsResponse): GetERsResponse.AsObject;
  static serializeBinaryToWriter(message: GetERsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetERsResponse;
  static deserializeBinaryFromReader(message: GetERsResponse, reader: jspb.BinaryReader): GetERsResponse;
}

export namespace GetERsResponse {
  export type AsObject = {
    pageInfo?: PageInfo.AsObject,
    emergencyRoomsList: Array<GetERResponse.AsObject>,
  }
}

export class UpdateERRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateERRequest;

  getName(): string;
  setName(value: string): UpdateERRequest;
  hasName(): boolean;
  clearName(): UpdateERRequest;

  getLocation(): Point | undefined;
  setLocation(value?: Point): UpdateERRequest;
  hasLocation(): boolean;
  clearLocation(): UpdateERRequest;

  getDisplayableAddress(): string;
  setDisplayableAddress(value: string): UpdateERRequest;
  hasDisplayableAddress(): boolean;
  clearDisplayableAddress(): UpdateERRequest;

  getOpen(): boolean;
  setOpen(value: boolean): UpdateERRequest;
  hasOpen(): boolean;
  clearOpen(): UpdateERRequest;

  getUtilization(): number;
  setUtilization(value: number): UpdateERRequest;
  hasUtilization(): boolean;
  clearUtilization(): UpdateERRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateERRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateERRequest): UpdateERRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateERRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateERRequest;
  static deserializeBinaryFromReader(message: UpdateERRequest, reader: jspb.BinaryReader): UpdateERRequest;
}

export namespace UpdateERRequest {
  export type AsObject = {
    id: string,
    name?: string,
    location?: Point.AsObject,
    displayableAddress?: string,
    open?: boolean,
    utilization?: number,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }

  export enum LocationCase { 
    _LOCATION_NOT_SET = 0,
    LOCATION = 3,
  }

  export enum DisplayableAddressCase { 
    _DISPLAYABLE_ADDRESS_NOT_SET = 0,
    DISPLAYABLE_ADDRESS = 4,
  }

  export enum OpenCase { 
    _OPEN_NOT_SET = 0,
    OPEN = 5,
  }

  export enum UtilizationCase { 
    _UTILIZATION_NOT_SET = 0,
    UTILIZATION = 6,
  }
}

export class UpdateERResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateERResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateERResponse): UpdateERResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateERResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateERResponse;
  static deserializeBinaryFromReader(message: UpdateERResponse, reader: jspb.BinaryReader): UpdateERResponse;
}

export namespace UpdateERResponse {
  export type AsObject = {
  }
}

export class AddDepartmentsToERRequest extends jspb.Message {
  getId(): string;
  setId(value: string): AddDepartmentsToERRequest;

  getDepartmentsList(): Array<string>;
  setDepartmentsList(value: Array<string>): AddDepartmentsToERRequest;
  clearDepartmentsList(): AddDepartmentsToERRequest;
  addDepartments(value: string, index?: number): AddDepartmentsToERRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddDepartmentsToERRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AddDepartmentsToERRequest): AddDepartmentsToERRequest.AsObject;
  static serializeBinaryToWriter(message: AddDepartmentsToERRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddDepartmentsToERRequest;
  static deserializeBinaryFromReader(message: AddDepartmentsToERRequest, reader: jspb.BinaryReader): AddDepartmentsToERRequest;
}

export namespace AddDepartmentsToERRequest {
  export type AsObject = {
    id: string,
    departmentsList: Array<string>,
  }
}

export class AddDepartmentsToERResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddDepartmentsToERResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AddDepartmentsToERResponse): AddDepartmentsToERResponse.AsObject;
  static serializeBinaryToWriter(message: AddDepartmentsToERResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddDepartmentsToERResponse;
  static deserializeBinaryFromReader(message: AddDepartmentsToERResponse, reader: jspb.BinaryReader): AddDepartmentsToERResponse;
}

export namespace AddDepartmentsToERResponse {
  export type AsObject = {
  }
}

export class RemoveDepartmentsFromERRequest extends jspb.Message {
  getId(): string;
  setId(value: string): RemoveDepartmentsFromERRequest;

  getDepartmentsList(): Array<string>;
  setDepartmentsList(value: Array<string>): RemoveDepartmentsFromERRequest;
  clearDepartmentsList(): RemoveDepartmentsFromERRequest;
  addDepartments(value: string, index?: number): RemoveDepartmentsFromERRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RemoveDepartmentsFromERRequest.AsObject;
  static toObject(includeInstance: boolean, msg: RemoveDepartmentsFromERRequest): RemoveDepartmentsFromERRequest.AsObject;
  static serializeBinaryToWriter(message: RemoveDepartmentsFromERRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RemoveDepartmentsFromERRequest;
  static deserializeBinaryFromReader(message: RemoveDepartmentsFromERRequest, reader: jspb.BinaryReader): RemoveDepartmentsFromERRequest;
}

export namespace RemoveDepartmentsFromERRequest {
  export type AsObject = {
    id: string,
    departmentsList: Array<string>,
  }
}

export class RemoveDepartmentsFromERResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RemoveDepartmentsFromERResponse.AsObject;
  static toObject(includeInstance: boolean, msg: RemoveDepartmentsFromERResponse): RemoveDepartmentsFromERResponse.AsObject;
  static serializeBinaryToWriter(message: RemoveDepartmentsFromERResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RemoveDepartmentsFromERResponse;
  static deserializeBinaryFromReader(message: RemoveDepartmentsFromERResponse, reader: jspb.BinaryReader): RemoveDepartmentsFromERResponse;
}

export namespace RemoveDepartmentsFromERResponse {
  export type AsObject = {
  }
}

export class DeleteERRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteERRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteERRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteERRequest): DeleteERRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteERRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteERRequest;
  static deserializeBinaryFromReader(message: DeleteERRequest, reader: jspb.BinaryReader): DeleteERRequest;
}

export namespace DeleteERRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteERResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteERResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteERResponse): DeleteERResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteERResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteERResponse;
  static deserializeBinaryFromReader(message: DeleteERResponse, reader: jspb.BinaryReader): DeleteERResponse;
}

export namespace DeleteERResponse {
  export type AsObject = {
  }
}

