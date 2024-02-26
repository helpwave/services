import * as jspb from 'google-protobuf'



export class CreatePatientRequest extends jspb.Message {
  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): CreatePatientRequest;

  getNotes(): string;
  setNotes(value: string): CreatePatientRequest;
  hasNotes(): boolean;
  clearNotes(): CreatePatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePatientRequest): CreatePatientRequest.AsObject;
  static serializeBinaryToWriter(message: CreatePatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePatientRequest;
  static deserializeBinaryFromReader(message: CreatePatientRequest, reader: jspb.BinaryReader): CreatePatientRequest;
}

export namespace CreatePatientRequest {
  export type AsObject = {
    humanReadableIdentifier: string,
    notes?: string,
  }

  export enum NotesCase { 
    _NOTES_NOT_SET = 0,
    NOTES = 2,
  }
}

export class CreatePatientResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreatePatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePatientResponse): CreatePatientResponse.AsObject;
  static serializeBinaryToWriter(message: CreatePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePatientResponse;
  static deserializeBinaryFromReader(message: CreatePatientResponse, reader: jspb.BinaryReader): CreatePatientResponse;
}

export namespace CreatePatientResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetPatientRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientRequest): GetPatientRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientRequest;
  static deserializeBinaryFromReader(message: GetPatientRequest, reader: jspb.BinaryReader): GetPatientRequest;
}

export namespace GetPatientRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetPatientResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientResponse;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): GetPatientResponse;

  getNotes(): string;
  setNotes(value: string): GetPatientResponse;

  getBedId(): string;
  setBedId(value: string): GetPatientResponse;
  hasBedId(): boolean;
  clearBedId(): GetPatientResponse;

  getWardId(): string;
  setWardId(value: string): GetPatientResponse;
  hasWardId(): boolean;
  clearWardId(): GetPatientResponse;

  getRoom(): GetPatientResponse.Room | undefined;
  setRoom(value?: GetPatientResponse.Room): GetPatientResponse;
  hasRoom(): boolean;
  clearRoom(): GetPatientResponse;

  getBed(): GetPatientResponse.Bed | undefined;
  setBed(value?: GetPatientResponse.Bed): GetPatientResponse;
  hasBed(): boolean;
  clearBed(): GetPatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientResponse): GetPatientResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientResponse;
  static deserializeBinaryFromReader(message: GetPatientResponse, reader: jspb.BinaryReader): GetPatientResponse;
}

export namespace GetPatientResponse {
  export type AsObject = {
    id: string,
    humanReadableIdentifier: string,
    notes: string,
    bedId?: string,
    wardId?: string,
    room?: GetPatientResponse.Room.AsObject,
    bed?: GetPatientResponse.Bed.AsObject,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getWardId(): string;
    setWardId(value: string): Room;

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
      wardId: string,
    }
  }


  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

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
    }
  }


  export enum BedIdCase { 
    _BED_ID_NOT_SET = 0,
    BED_ID = 4,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 5,
  }

  export enum RoomCase { 
    _ROOM_NOT_SET = 0,
    ROOM = 7,
  }

  export enum BedCase { 
    _BED_NOT_SET = 0,
    BED = 8,
  }
}

export class GetRecentPatientsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRecentPatientsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRecentPatientsRequest): GetRecentPatientsRequest.AsObject;
  static serializeBinaryToWriter(message: GetRecentPatientsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRecentPatientsRequest;
  static deserializeBinaryFromReader(message: GetRecentPatientsRequest, reader: jspb.BinaryReader): GetRecentPatientsRequest;
}

export namespace GetRecentPatientsRequest {
  export type AsObject = {
  }
}

export class GetRecentPatientsResponse extends jspb.Message {
  getRecentPatientsList(): Array<GetRecentPatientsResponse.PatientWithRoomAndBed>;
  setRecentPatientsList(value: Array<GetRecentPatientsResponse.PatientWithRoomAndBed>): GetRecentPatientsResponse;
  clearRecentPatientsList(): GetRecentPatientsResponse;
  addRecentPatients(value?: GetRecentPatientsResponse.PatientWithRoomAndBed, index?: number): GetRecentPatientsResponse.PatientWithRoomAndBed;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRecentPatientsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRecentPatientsResponse): GetRecentPatientsResponse.AsObject;
  static serializeBinaryToWriter(message: GetRecentPatientsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRecentPatientsResponse;
  static deserializeBinaryFromReader(message: GetRecentPatientsResponse, reader: jspb.BinaryReader): GetRecentPatientsResponse;
}

export namespace GetRecentPatientsResponse {
  export type AsObject = {
    recentPatientsList: Array<GetRecentPatientsResponse.PatientWithRoomAndBed.AsObject>,
  }

  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

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
    }
  }


  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getWardId(): string;
    setWardId(value: string): Room;

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
      wardId: string,
    }
  }


  export class PatientWithRoomAndBed extends jspb.Message {
    getId(): string;
    setId(value: string): PatientWithRoomAndBed;

    getHumanReadableIdentifier(): string;
    setHumanReadableIdentifier(value: string): PatientWithRoomAndBed;

    getRoom(): GetRecentPatientsResponse.Room | undefined;
    setRoom(value?: GetRecentPatientsResponse.Room): PatientWithRoomAndBed;
    hasRoom(): boolean;
    clearRoom(): PatientWithRoomAndBed;

    getBed(): GetRecentPatientsResponse.Bed | undefined;
    setBed(value?: GetRecentPatientsResponse.Bed): PatientWithRoomAndBed;
    hasBed(): boolean;
    clearBed(): PatientWithRoomAndBed;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): PatientWithRoomAndBed.AsObject;
    static toObject(includeInstance: boolean, msg: PatientWithRoomAndBed): PatientWithRoomAndBed.AsObject;
    static serializeBinaryToWriter(message: PatientWithRoomAndBed, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): PatientWithRoomAndBed;
    static deserializeBinaryFromReader(message: PatientWithRoomAndBed, reader: jspb.BinaryReader): PatientWithRoomAndBed;
  }

  export namespace PatientWithRoomAndBed {
    export type AsObject = {
      id: string,
      humanReadableIdentifier: string,
      room?: GetRecentPatientsResponse.Room.AsObject,
      bed?: GetRecentPatientsResponse.Bed.AsObject,
    }
  }

}

export class UpdatePatientRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdatePatientRequest;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): UpdatePatientRequest;
  hasHumanReadableIdentifier(): boolean;
  clearHumanReadableIdentifier(): UpdatePatientRequest;

  getNotes(): string;
  setNotes(value: string): UpdatePatientRequest;
  hasNotes(): boolean;
  clearNotes(): UpdatePatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientRequest): UpdatePatientRequest.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientRequest;
  static deserializeBinaryFromReader(message: UpdatePatientRequest, reader: jspb.BinaryReader): UpdatePatientRequest;
}

export namespace UpdatePatientRequest {
  export type AsObject = {
    id: string,
    humanReadableIdentifier?: string,
    notes?: string,
  }

  export enum HumanReadableIdentifierCase { 
    _HUMAN_READABLE_IDENTIFIER_NOT_SET = 0,
    HUMAN_READABLE_IDENTIFIER = 2,
  }

  export enum NotesCase { 
    _NOTES_NOT_SET = 0,
    NOTES = 3,
  }
}

export class UpdatePatientResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientResponse): UpdatePatientResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientResponse;
  static deserializeBinaryFromReader(message: UpdatePatientResponse, reader: jspb.BinaryReader): UpdatePatientResponse;
}

export namespace UpdatePatientResponse {
  export type AsObject = {
  }
}

export class AssignBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): AssignBedRequest;

  getBedId(): string;
  setBedId(value: string): AssignBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AssignBedRequest): AssignBedRequest.AsObject;
  static serializeBinaryToWriter(message: AssignBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignBedRequest;
  static deserializeBinaryFromReader(message: AssignBedRequest, reader: jspb.BinaryReader): AssignBedRequest;
}

export namespace AssignBedRequest {
  export type AsObject = {
    id: string,
    bedId: string,
  }
}

export class AssignBedResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AssignBedResponse): AssignBedResponse.AsObject;
  static serializeBinaryToWriter(message: AssignBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignBedResponse;
  static deserializeBinaryFromReader(message: AssignBedResponse, reader: jspb.BinaryReader): AssignBedResponse;
}

export namespace AssignBedResponse {
  export type AsObject = {
  }
}

export class UnassignBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UnassignBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignBedRequest): UnassignBedRequest.AsObject;
  static serializeBinaryToWriter(message: UnassignBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignBedRequest;
  static deserializeBinaryFromReader(message: UnassignBedRequest, reader: jspb.BinaryReader): UnassignBedRequest;
}

export namespace UnassignBedRequest {
  export type AsObject = {
    id: string,
  }
}

export class UnassignBedResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignBedResponse): UnassignBedResponse.AsObject;
  static serializeBinaryToWriter(message: UnassignBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignBedResponse;
  static deserializeBinaryFromReader(message: UnassignBedResponse, reader: jspb.BinaryReader): UnassignBedResponse;
}

export namespace UnassignBedResponse {
  export type AsObject = {
  }
}

export class DischargePatientRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DischargePatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DischargePatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DischargePatientRequest): DischargePatientRequest.AsObject;
  static serializeBinaryToWriter(message: DischargePatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DischargePatientRequest;
  static deserializeBinaryFromReader(message: DischargePatientRequest, reader: jspb.BinaryReader): DischargePatientRequest;
}

export namespace DischargePatientRequest {
  export type AsObject = {
    id: string,
  }
}

export class DischargePatientResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DischargePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DischargePatientResponse): DischargePatientResponse.AsObject;
  static serializeBinaryToWriter(message: DischargePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DischargePatientResponse;
  static deserializeBinaryFromReader(message: DischargePatientResponse, reader: jspb.BinaryReader): DischargePatientResponse;
}

export namespace DischargePatientResponse {
  export type AsObject = {
  }
}

export class ReadmitPatientRequest extends jspb.Message {
  getPatientId(): string;
  setPatientId(value: string): ReadmitPatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadmitPatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ReadmitPatientRequest): ReadmitPatientRequest.AsObject;
  static serializeBinaryToWriter(message: ReadmitPatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadmitPatientRequest;
  static deserializeBinaryFromReader(message: ReadmitPatientRequest, reader: jspb.BinaryReader): ReadmitPatientRequest;
}

export namespace ReadmitPatientRequest {
  export type AsObject = {
    patientId: string,
  }
}

export class ReadmitPatientResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadmitPatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ReadmitPatientResponse): ReadmitPatientResponse.AsObject;
  static serializeBinaryToWriter(message: ReadmitPatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadmitPatientResponse;
  static deserializeBinaryFromReader(message: ReadmitPatientResponse, reader: jspb.BinaryReader): ReadmitPatientResponse;
}

export namespace ReadmitPatientResponse {
  export type AsObject = {
  }
}

