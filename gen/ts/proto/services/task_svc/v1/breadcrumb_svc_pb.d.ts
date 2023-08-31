import * as jspb from 'google-protobuf'



export class GetBreadcrumbsRequest extends jspb.Message {
  getOrganizationId(): string;
  setOrganizationId(value: string): GetBreadcrumbsRequest;
  hasOrganizationId(): boolean;
  clearOrganizationId(): GetBreadcrumbsRequest;

  getWardId(): string;
  setWardId(value: string): GetBreadcrumbsRequest;
  hasWardId(): boolean;
  clearWardId(): GetBreadcrumbsRequest;

  getRoomId(): string;
  setRoomId(value: string): GetBreadcrumbsRequest;
  hasRoomId(): boolean;
  clearRoomId(): GetBreadcrumbsRequest;

  getBedId(): string;
  setBedId(value: string): GetBreadcrumbsRequest;
  hasBedId(): boolean;
  clearBedId(): GetBreadcrumbsRequest;

  getPatientId(): string;
  setPatientId(value: string): GetBreadcrumbsRequest;
  hasPatientId(): boolean;
  clearPatientId(): GetBreadcrumbsRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBreadcrumbsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetBreadcrumbsRequest): GetBreadcrumbsRequest.AsObject;
  static serializeBinaryToWriter(message: GetBreadcrumbsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBreadcrumbsRequest;
  static deserializeBinaryFromReader(message: GetBreadcrumbsRequest, reader: jspb.BinaryReader): GetBreadcrumbsRequest;
}

export namespace GetBreadcrumbsRequest {
  export type AsObject = {
    organizationId?: string,
    wardId?: string,
    roomId?: string,
    bedId?: string,
    patientId?: string,
  }

  export enum OrganizationIdCase { 
    _ORGANIZATION_ID_NOT_SET = 0,
    ORGANIZATION_ID = 1,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 2,
  }

  export enum RoomIdCase { 
    _ROOM_ID_NOT_SET = 0,
    ROOM_ID = 3,
  }

  export enum BedIdCase { 
    _BED_ID_NOT_SET = 0,
    BED_ID = 4,
  }

  export enum PatientIdCase { 
    _PATIENT_ID_NOT_SET = 0,
    PATIENT_ID = 5,
  }
}

export class GetBreadcrumbsResponse extends jspb.Message {
  getOrganization(): GetBreadcrumbsResponse.Organization | undefined;
  setOrganization(value?: GetBreadcrumbsResponse.Organization): GetBreadcrumbsResponse;
  hasOrganization(): boolean;
  clearOrganization(): GetBreadcrumbsResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetBreadcrumbsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetBreadcrumbsResponse): GetBreadcrumbsResponse.AsObject;
  static serializeBinaryToWriter(message: GetBreadcrumbsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetBreadcrumbsResponse;
  static deserializeBinaryFromReader(message: GetBreadcrumbsResponse, reader: jspb.BinaryReader): GetBreadcrumbsResponse;
}

export namespace GetBreadcrumbsResponse {
  export type AsObject = {
    organization?: GetBreadcrumbsResponse.Organization.AsObject,
  }

  export class Organization extends jspb.Message {
    getId(): string;
    setId(value: string): Organization;

    getName(): string;
    setName(value: string): Organization;

    getWard(): GetBreadcrumbsResponse.Ward | undefined;
    setWard(value?: GetBreadcrumbsResponse.Ward): Organization;
    hasWard(): boolean;
    clearWard(): Organization;

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
      name: string,
      ward?: GetBreadcrumbsResponse.Ward.AsObject,
    }

    export enum WardCase { 
      _WARD_NOT_SET = 0,
      WARD = 3,
    }
  }


  export class Ward extends jspb.Message {
    getId(): string;
    setId(value: string): Ward;

    getName(): string;
    setName(value: string): Ward;

    getRoom(): GetBreadcrumbsResponse.Room | undefined;
    setRoom(value?: GetBreadcrumbsResponse.Room): Ward;
    hasRoom(): boolean;
    clearRoom(): Ward;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Ward.AsObject;
    static toObject(includeInstance: boolean, msg: Ward): Ward.AsObject;
    static serializeBinaryToWriter(message: Ward, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Ward;
    static deserializeBinaryFromReader(message: Ward, reader: jspb.BinaryReader): Ward;
  }

  export namespace Ward {
    export type AsObject = {
      id: string,
      name: string,
      room?: GetBreadcrumbsResponse.Room.AsObject,
    }

    export enum RoomCase { 
      _ROOM_NOT_SET = 0,
      ROOM = 3,
    }
  }


  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getBed(): GetBreadcrumbsResponse.Bed | undefined;
    setBed(value?: GetBreadcrumbsResponse.Bed): Room;
    hasBed(): boolean;
    clearBed(): Room;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Room.AsObject;
    static toObject(includeInstance: boolean, msg: Room): Room.AsObject;
    static serializeBinaryToWriter(message: Room, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Room;
    static deserializeBinaryFromReader(message: Room, reader: jspb.BinaryReader): Room;
  }

  export namespace Room {
    export type AsObject = {
      id: string,
      name: string,
      bed?: GetBreadcrumbsResponse.Bed.AsObject,
    }

    export enum BedCase { 
      _BED_NOT_SET = 0,
      BED = 3,
    }
  }


  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

    getPatient(): GetBreadcrumbsResponse.Patient | undefined;
    setPatient(value?: GetBreadcrumbsResponse.Patient): Bed;
    hasPatient(): boolean;
    clearPatient(): Bed;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Bed.AsObject;
    static toObject(includeInstance: boolean, msg: Bed): Bed.AsObject;
    static serializeBinaryToWriter(message: Bed, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Bed;
    static deserializeBinaryFromReader(message: Bed, reader: jspb.BinaryReader): Bed;
  }

  export namespace Bed {
    export type AsObject = {
      id: string,
      name: string,
      patient?: GetBreadcrumbsResponse.Patient.AsObject,
    }

    export enum PatientCase { 
      _PATIENT_NOT_SET = 0,
      PATIENT = 3,
    }
  }


  export class Patient extends jspb.Message {
    getId(): string;
    setId(value: string): Patient;

    getName(): string;
    setName(value: string): Patient;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Patient.AsObject;
    static toObject(includeInstance: boolean, msg: Patient): Patient.AsObject;
    static serializeBinaryToWriter(message: Patient, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Patient;
    static deserializeBinaryFromReader(message: Patient, reader: jspb.BinaryReader): Patient;
  }

  export namespace Patient {
    export type AsObject = {
      id: string,
      name: string,
    }
  }


  export enum OrganizationCase { 
    _ORGANIZATION_NOT_SET = 0,
    ORGANIZATION = 1,
  }
}

