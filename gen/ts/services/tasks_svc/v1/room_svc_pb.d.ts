import * as jspb from 'google-protobuf'

import * as libs_common_v1_conflict_pb from '../../../libs/common/v1/conflict_pb'; // proto import: "libs/common/v1/conflict.proto"


export class CreateRoomRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateRoomRequest;

  getWardId(): string;
  setWardId(value: string): CreateRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateRoomRequest): CreateRoomRequest.AsObject;
  static serializeBinaryToWriter(message: CreateRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateRoomRequest;
  static deserializeBinaryFromReader(message: CreateRoomRequest, reader: jspb.BinaryReader): CreateRoomRequest;
}

export namespace CreateRoomRequest {
  export type AsObject = {
    name: string,
    wardId: string,
  }
}

export class CreateRoomResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateRoomResponse;

  getConsistency(): string;
  setConsistency(value: string): CreateRoomResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateRoomResponse): CreateRoomResponse.AsObject;
  static serializeBinaryToWriter(message: CreateRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateRoomResponse;
  static deserializeBinaryFromReader(message: CreateRoomResponse, reader: jspb.BinaryReader): CreateRoomResponse;
}

export namespace CreateRoomResponse {
  export type AsObject = {
    id: string,
    consistency: string,
  }
}

export class GetRoomRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomRequest): GetRoomRequest.AsObject;
  static serializeBinaryToWriter(message: GetRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomRequest;
  static deserializeBinaryFromReader(message: GetRoomRequest, reader: jspb.BinaryReader): GetRoomRequest;
}

export namespace GetRoomRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetRoomResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomResponse;

  getName(): string;
  setName(value: string): GetRoomResponse;

  getBedsList(): Array<GetRoomResponse.Bed>;
  setBedsList(value: Array<GetRoomResponse.Bed>): GetRoomResponse;
  clearBedsList(): GetRoomResponse;
  addBeds(value?: GetRoomResponse.Bed, index?: number): GetRoomResponse.Bed;

  getWardId(): string;
  setWardId(value: string): GetRoomResponse;

  getConsistency(): string;
  setConsistency(value: string): GetRoomResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomResponse): GetRoomResponse.AsObject;
  static serializeBinaryToWriter(message: GetRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomResponse;
  static deserializeBinaryFromReader(message: GetRoomResponse, reader: jspb.BinaryReader): GetRoomResponse;
}

export namespace GetRoomResponse {
  export type AsObject = {
    id: string,
    name: string,
    bedsList: Array<GetRoomResponse.Bed.AsObject>,
    wardId: string,
    consistency: string,
  }

  export class Bed extends jspb.Message {
    getId(): string;
    setId(value: string): Bed;

    getName(): string;
    setName(value: string): Bed;

    getConsistency(): string;
    setConsistency(value: string): Bed;

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
      consistency: string,
    }
  }

}

export class GetRoomsRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): GetRoomsRequest;
  hasWardId(): boolean;
  clearWardId(): GetRoomsRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsRequest): GetRoomsRequest.AsObject;
  static serializeBinaryToWriter(message: GetRoomsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsRequest;
  static deserializeBinaryFromReader(message: GetRoomsRequest, reader: jspb.BinaryReader): GetRoomsRequest;
}

export namespace GetRoomsRequest {
  export type AsObject = {
    wardId?: string,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 1,
  }
}

export class GetRoomsResponse extends jspb.Message {
  getRoomsList(): Array<GetRoomsResponse.Room>;
  setRoomsList(value: Array<GetRoomsResponse.Room>): GetRoomsResponse;
  clearRoomsList(): GetRoomsResponse;
  addRooms(value?: GetRoomsResponse.Room, index?: number): GetRoomsResponse.Room;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomsResponse): GetRoomsResponse.AsObject;
  static serializeBinaryToWriter(message: GetRoomsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomsResponse;
  static deserializeBinaryFromReader(message: GetRoomsResponse, reader: jspb.BinaryReader): GetRoomsResponse;
}

export namespace GetRoomsResponse {
  export type AsObject = {
    roomsList: Array<GetRoomsResponse.Room.AsObject>,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getBedsList(): Array<GetRoomsResponse.Room.Bed>;
    setBedsList(value: Array<GetRoomsResponse.Room.Bed>): Room;
    clearBedsList(): Room;
    addBeds(value?: GetRoomsResponse.Room.Bed, index?: number): GetRoomsResponse.Room.Bed;

    getWardId(): string;
    setWardId(value: string): Room;

    getConsistency(): string;
    setConsistency(value: string): Room;

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
      bedsList: Array<GetRoomsResponse.Room.Bed.AsObject>,
      wardId: string,
      consistency: string,
    }

    export class Bed extends jspb.Message {
      getId(): string;
      setId(value: string): Bed;

      getName(): string;
      setName(value: string): Bed;

      getConsistency(): string;
      setConsistency(value: string): Bed;

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
        consistency: string,
      }
    }

  }

}

export class UpdateRoomRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateRoomRequest;

  getName(): string;
  setName(value: string): UpdateRoomRequest;
  hasName(): boolean;
  clearName(): UpdateRoomRequest;

  getConsistency(): string;
  setConsistency(value: string): UpdateRoomRequest;
  hasConsistency(): boolean;
  clearConsistency(): UpdateRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateRoomRequest): UpdateRoomRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateRoomRequest;
  static deserializeBinaryFromReader(message: UpdateRoomRequest, reader: jspb.BinaryReader): UpdateRoomRequest;
}

export namespace UpdateRoomRequest {
  export type AsObject = {
    id: string,
    name?: string,
    consistency?: string,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }

  export enum ConsistencyCase { 
    _CONSISTENCY_NOT_SET = 0,
    CONSISTENCY = 3,
  }
}

export class UpdateRoomResponse extends jspb.Message {
  getConflict(): libs_common_v1_conflict_pb.Conflict | undefined;
  setConflict(value?: libs_common_v1_conflict_pb.Conflict): UpdateRoomResponse;
  hasConflict(): boolean;
  clearConflict(): UpdateRoomResponse;

  getConsistency(): string;
  setConsistency(value: string): UpdateRoomResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateRoomResponse): UpdateRoomResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateRoomResponse;
  static deserializeBinaryFromReader(message: UpdateRoomResponse, reader: jspb.BinaryReader): UpdateRoomResponse;
}

export namespace UpdateRoomResponse {
  export type AsObject = {
    conflict?: libs_common_v1_conflict_pb.Conflict.AsObject,
    consistency: string,
  }

  export enum ConflictCase { 
    _CONFLICT_NOT_SET = 0,
    CONFLICT = 1,
  }
}

export class DeleteRoomRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteRoomRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteRoomRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteRoomRequest): DeleteRoomRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteRoomRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteRoomRequest;
  static deserializeBinaryFromReader(message: DeleteRoomRequest, reader: jspb.BinaryReader): DeleteRoomRequest;
}

export namespace DeleteRoomRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteRoomResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteRoomResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteRoomResponse): DeleteRoomResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteRoomResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteRoomResponse;
  static deserializeBinaryFromReader(message: DeleteRoomResponse, reader: jspb.BinaryReader): DeleteRoomResponse;
}

export namespace DeleteRoomResponse {
  export type AsObject = {
  }
}

export class GetRoomOverviewsByWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetRoomOverviewsByWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomOverviewsByWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomOverviewsByWardRequest): GetRoomOverviewsByWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetRoomOverviewsByWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomOverviewsByWardRequest;
  static deserializeBinaryFromReader(message: GetRoomOverviewsByWardRequest, reader: jspb.BinaryReader): GetRoomOverviewsByWardRequest;
}

export namespace GetRoomOverviewsByWardRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetRoomOverviewsByWardResponse extends jspb.Message {
  getRoomsList(): Array<GetRoomOverviewsByWardResponse.Room>;
  setRoomsList(value: Array<GetRoomOverviewsByWardResponse.Room>): GetRoomOverviewsByWardResponse;
  clearRoomsList(): GetRoomOverviewsByWardResponse;
  addRooms(value?: GetRoomOverviewsByWardResponse.Room, index?: number): GetRoomOverviewsByWardResponse.Room;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRoomOverviewsByWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRoomOverviewsByWardResponse): GetRoomOverviewsByWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetRoomOverviewsByWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRoomOverviewsByWardResponse;
  static deserializeBinaryFromReader(message: GetRoomOverviewsByWardResponse, reader: jspb.BinaryReader): GetRoomOverviewsByWardResponse;
}

export namespace GetRoomOverviewsByWardResponse {
  export type AsObject = {
    roomsList: Array<GetRoomOverviewsByWardResponse.Room.AsObject>,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getBedsList(): Array<GetRoomOverviewsByWardResponse.Room.Bed>;
    setBedsList(value: Array<GetRoomOverviewsByWardResponse.Room.Bed>): Room;
    clearBedsList(): Room;
    addBeds(value?: GetRoomOverviewsByWardResponse.Room.Bed, index?: number): GetRoomOverviewsByWardResponse.Room.Bed;

    getConsistency(): string;
    setConsistency(value: string): Room;

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
      bedsList: Array<GetRoomOverviewsByWardResponse.Room.Bed.AsObject>,
      consistency: string,
    }

    export class Bed extends jspb.Message {
      getId(): string;
      setId(value: string): Bed;

      getName(): string;
      setName(value: string): Bed;

      getPatient(): GetRoomOverviewsByWardResponse.Room.Bed.Patient | undefined;
      setPatient(value?: GetRoomOverviewsByWardResponse.Room.Bed.Patient): Bed;
      hasPatient(): boolean;
      clearPatient(): Bed;

      getConsistency(): string;
      setConsistency(value: string): Bed;

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
        patient?: GetRoomOverviewsByWardResponse.Room.Bed.Patient.AsObject,
        consistency: string,
      }

      export class Patient extends jspb.Message {
        getId(): string;
        setId(value: string): Patient;

        getHumanReadableIdentifier(): string;
        setHumanReadableIdentifier(value: string): Patient;

        getTasksUnscheduled(): number;
        setTasksUnscheduled(value: number): Patient;

        getTasksInProgress(): number;
        setTasksInProgress(value: number): Patient;

        getTasksDone(): number;
        setTasksDone(value: number): Patient;

        getConsistency(): string;
        setConsistency(value: string): Patient;

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
          humanReadableIdentifier: string,
          tasksUnscheduled: number,
          tasksInProgress: number,
          tasksDone: number,
          consistency: string,
        }
      }


      export enum PatientCase { 
        _PATIENT_NOT_SET = 0,
        PATIENT = 2,
      }
    }

  }

}

