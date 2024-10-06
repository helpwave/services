import * as jspb from 'google-protobuf'

import * as services_tasks_svc_v1_types_pb from '../../../services/tasks_svc/v1/types_pb'; // proto import: "services/tasks_svc/v1/types.proto"
import * as libs_common_v1_conflict_pb from '../../../libs/common/v1/conflict_pb'; // proto import: "libs/common/v1/conflict.proto"


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

  getConsistency(): string;
  setConsistency(value: string): CreatePatientResponse;

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
    consistency: string,
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

  getRoom(): GetPatientResponse.Room | undefined;
  setRoom(value?: GetPatientResponse.Room): GetPatientResponse;
  hasRoom(): boolean;
  clearRoom(): GetPatientResponse;

  getBed(): GetPatientResponse.Bed | undefined;
  setBed(value?: GetPatientResponse.Bed): GetPatientResponse;
  hasBed(): boolean;
  clearBed(): GetPatientResponse;

  getConsistency(): string;
  setConsistency(value: string): GetPatientResponse;

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
    room?: GetPatientResponse.Room.AsObject,
    bed?: GetPatientResponse.Bed.AsObject,
    consistency: string,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

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
      wardId: string,
      consistency: string,
    }
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


  export enum RoomCase { 
    _ROOM_NOT_SET = 0,
    ROOM = 7,
  }

  export enum BedCase { 
    _BED_NOT_SET = 0,
    BED = 8,
  }
}

export class GetPatientByBedRequest extends jspb.Message {
  getBedId(): string;
  setBedId(value: string): GetPatientByBedRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientByBedRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientByBedRequest): GetPatientByBedRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientByBedRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientByBedRequest;
  static deserializeBinaryFromReader(message: GetPatientByBedRequest, reader: jspb.BinaryReader): GetPatientByBedRequest;
}

export namespace GetPatientByBedRequest {
  export type AsObject = {
    bedId: string,
  }
}

export class GetPatientByBedResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientByBedResponse;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): GetPatientByBedResponse;

  getNotes(): string;
  setNotes(value: string): GetPatientByBedResponse;

  getBedId(): string;
  setBedId(value: string): GetPatientByBedResponse;

  getConsistency(): string;
  setConsistency(value: string): GetPatientByBedResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientByBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientByBedResponse): GetPatientByBedResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientByBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientByBedResponse;
  static deserializeBinaryFromReader(message: GetPatientByBedResponse, reader: jspb.BinaryReader): GetPatientByBedResponse;
}

export namespace GetPatientByBedResponse {
  export type AsObject = {
    id: string,
    humanReadableIdentifier: string,
    notes: string,
    bedId: string,
    consistency: string,
  }
}

export class GetPatientsByWardRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): GetPatientsByWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientsByWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientsByWardRequest): GetPatientsByWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientsByWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientsByWardRequest;
  static deserializeBinaryFromReader(message: GetPatientsByWardRequest, reader: jspb.BinaryReader): GetPatientsByWardRequest;
}

export namespace GetPatientsByWardRequest {
  export type AsObject = {
    wardId: string,
  }
}

export class GetPatientsByWardResponse extends jspb.Message {
  getPatientsList(): Array<GetPatientsByWardResponse.Patient>;
  setPatientsList(value: Array<GetPatientsByWardResponse.Patient>): GetPatientsByWardResponse;
  clearPatientsList(): GetPatientsByWardResponse;
  addPatients(value?: GetPatientsByWardResponse.Patient, index?: number): GetPatientsByWardResponse.Patient;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientsByWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientsByWardResponse): GetPatientsByWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientsByWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientsByWardResponse;
  static deserializeBinaryFromReader(message: GetPatientsByWardResponse, reader: jspb.BinaryReader): GetPatientsByWardResponse;
}

export namespace GetPatientsByWardResponse {
  export type AsObject = {
    patientsList: Array<GetPatientsByWardResponse.Patient.AsObject>,
  }

  export class Patient extends jspb.Message {
    getId(): string;
    setId(value: string): Patient;

    getHumanReadableIdentifier(): string;
    setHumanReadableIdentifier(value: string): Patient;

    getNotes(): string;
    setNotes(value: string): Patient;

    getBedId(): string;
    setBedId(value: string): Patient;
    hasBedId(): boolean;
    clearBedId(): Patient;

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
      notes: string,
      bedId?: string,
      consistency: string,
    }

    export enum BedIdCase { 
      _BED_ID_NOT_SET = 0,
      BED_ID = 4,
    }
  }

}

export class GetPatientAssignmentByWardRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): GetPatientAssignmentByWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientAssignmentByWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientAssignmentByWardRequest): GetPatientAssignmentByWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientAssignmentByWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientAssignmentByWardRequest;
  static deserializeBinaryFromReader(message: GetPatientAssignmentByWardRequest, reader: jspb.BinaryReader): GetPatientAssignmentByWardRequest;
}

export namespace GetPatientAssignmentByWardRequest {
  export type AsObject = {
    wardId: string,
  }
}

export class GetPatientAssignmentByWardResponse extends jspb.Message {
  getRoomsList(): Array<GetPatientAssignmentByWardResponse.Room>;
  setRoomsList(value: Array<GetPatientAssignmentByWardResponse.Room>): GetPatientAssignmentByWardResponse;
  clearRoomsList(): GetPatientAssignmentByWardResponse;
  addRooms(value?: GetPatientAssignmentByWardResponse.Room, index?: number): GetPatientAssignmentByWardResponse.Room;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientAssignmentByWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientAssignmentByWardResponse): GetPatientAssignmentByWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientAssignmentByWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientAssignmentByWardResponse;
  static deserializeBinaryFromReader(message: GetPatientAssignmentByWardResponse, reader: jspb.BinaryReader): GetPatientAssignmentByWardResponse;
}

export namespace GetPatientAssignmentByWardResponse {
  export type AsObject = {
    roomsList: Array<GetPatientAssignmentByWardResponse.Room.AsObject>,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

    getBedsList(): Array<GetPatientAssignmentByWardResponse.Room.Bed>;
    setBedsList(value: Array<GetPatientAssignmentByWardResponse.Room.Bed>): Room;
    clearBedsList(): Room;
    addBeds(value?: GetPatientAssignmentByWardResponse.Room.Bed, index?: number): GetPatientAssignmentByWardResponse.Room.Bed;

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
      bedsList: Array<GetPatientAssignmentByWardResponse.Room.Bed.AsObject>,
      consistency: string,
    }

    export class Bed extends jspb.Message {
      getId(): string;
      setId(value: string): Bed;

      getName(): string;
      setName(value: string): Bed;

      getPatient(): GetPatientAssignmentByWardResponse.Room.Bed.Patient | undefined;
      setPatient(value?: GetPatientAssignmentByWardResponse.Room.Bed.Patient): Bed;
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
        patient?: GetPatientAssignmentByWardResponse.Room.Bed.Patient.AsObject,
        consistency: string,
      }

      export class Patient extends jspb.Message {
        getId(): string;
        setId(value: string): Patient;

        getName(): string;
        setName(value: string): Patient;

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
          name: string,
          consistency: string,
        }
      }


      export enum PatientCase { 
        _PATIENT_NOT_SET = 0,
        PATIENT = 3,
      }
    }

  }

}

export class GetPatientDetailsRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientDetailsRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientDetailsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientDetailsRequest): GetPatientDetailsRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientDetailsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientDetailsRequest;
  static deserializeBinaryFromReader(message: GetPatientDetailsRequest, reader: jspb.BinaryReader): GetPatientDetailsRequest;
}

export namespace GetPatientDetailsRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetPatientDetailsResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetPatientDetailsResponse;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): GetPatientDetailsResponse;

  getNotes(): string;
  setNotes(value: string): GetPatientDetailsResponse;

  getTasksList(): Array<GetPatientDetailsResponse.Task>;
  setTasksList(value: Array<GetPatientDetailsResponse.Task>): GetPatientDetailsResponse;
  clearTasksList(): GetPatientDetailsResponse;
  addTasks(value?: GetPatientDetailsResponse.Task, index?: number): GetPatientDetailsResponse.Task;

  getRoom(): GetPatientDetailsResponse.Room | undefined;
  setRoom(value?: GetPatientDetailsResponse.Room): GetPatientDetailsResponse;
  hasRoom(): boolean;
  clearRoom(): GetPatientDetailsResponse;

  getBed(): GetPatientDetailsResponse.Bed | undefined;
  setBed(value?: GetPatientDetailsResponse.Bed): GetPatientDetailsResponse;
  hasBed(): boolean;
  clearBed(): GetPatientDetailsResponse;

  getIsDischarged(): boolean;
  setIsDischarged(value: boolean): GetPatientDetailsResponse;

  getConsistency(): string;
  setConsistency(value: string): GetPatientDetailsResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientDetailsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientDetailsResponse): GetPatientDetailsResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientDetailsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientDetailsResponse;
  static deserializeBinaryFromReader(message: GetPatientDetailsResponse, reader: jspb.BinaryReader): GetPatientDetailsResponse;
}

export namespace GetPatientDetailsResponse {
  export type AsObject = {
    id: string,
    humanReadableIdentifier: string,
    notes: string,
    tasksList: Array<GetPatientDetailsResponse.Task.AsObject>,
    room?: GetPatientDetailsResponse.Room.AsObject,
    bed?: GetPatientDetailsResponse.Bed.AsObject,
    isDischarged: boolean,
    consistency: string,
  }

  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

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
      wardId: string,
      consistency: string,
    }
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


  export class Task extends jspb.Message {
    getId(): string;
    setId(value: string): Task;

    getName(): string;
    setName(value: string): Task;

    getDescription(): string;
    setDescription(value: string): Task;

    getStatus(): services_tasks_svc_v1_types_pb.TaskStatus;
    setStatus(value: services_tasks_svc_v1_types_pb.TaskStatus): Task;

    getAssignedUserId(): string;
    setAssignedUserId(value: string): Task;
    hasAssignedUserId(): boolean;
    clearAssignedUserId(): Task;

    getPatientId(): string;
    setPatientId(value: string): Task;

    getPublic(): boolean;
    setPublic(value: boolean): Task;

    getSubtasksList(): Array<GetPatientDetailsResponse.Task.SubTask>;
    setSubtasksList(value: Array<GetPatientDetailsResponse.Task.SubTask>): Task;
    clearSubtasksList(): Task;
    addSubtasks(value?: GetPatientDetailsResponse.Task.SubTask, index?: number): GetPatientDetailsResponse.Task.SubTask;

    getConsistency(): string;
    setConsistency(value: string): Task;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Task.AsObject;
    static toObject(includeInstance: boolean, msg: Task): Task.AsObject;
    static serializeBinaryToWriter(message: Task, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Task;
    static deserializeBinaryFromReader(message: Task, reader: jspb.BinaryReader): Task;
  }

  export namespace Task {
    export type AsObject = {
      id: string,
      name: string,
      description: string,
      status: services_tasks_svc_v1_types_pb.TaskStatus,
      assignedUserId?: string,
      patientId: string,
      pb_public: boolean,
      subtasksList: Array<GetPatientDetailsResponse.Task.SubTask.AsObject>,
      consistency: string,
    }

    export class SubTask extends jspb.Message {
      getId(): string;
      setId(value: string): SubTask;

      getName(): string;
      setName(value: string): SubTask;

      getDone(): boolean;
      setDone(value: boolean): SubTask;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SubTask.AsObject;
      static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
      static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SubTask;
      static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
    }

    export namespace SubTask {
      export type AsObject = {
        id: string,
        name: string,
        done: boolean,
      }
    }


    export enum AssignedUserIdCase { 
      _ASSIGNED_USER_ID_NOT_SET = 0,
      ASSIGNED_USER_ID = 5,
    }
  }


  export enum RoomCase { 
    _ROOM_NOT_SET = 0,
    ROOM = 5,
  }

  export enum BedCase { 
    _BED_NOT_SET = 0,
    BED = 6,
  }
}

export class GetPatientListRequest extends jspb.Message {
  getWardId(): string;
  setWardId(value: string): GetPatientListRequest;
  hasWardId(): boolean;
  clearWardId(): GetPatientListRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientListRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientListRequest): GetPatientListRequest.AsObject;
  static serializeBinaryToWriter(message: GetPatientListRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientListRequest;
  static deserializeBinaryFromReader(message: GetPatientListRequest, reader: jspb.BinaryReader): GetPatientListRequest;
}

export namespace GetPatientListRequest {
  export type AsObject = {
    wardId?: string,
  }

  export enum WardIdCase { 
    _WARD_ID_NOT_SET = 0,
    WARD_ID = 1,
  }
}

export class GetPatientListResponse extends jspb.Message {
  getActiveList(): Array<GetPatientListResponse.Patient>;
  setActiveList(value: Array<GetPatientListResponse.Patient>): GetPatientListResponse;
  clearActiveList(): GetPatientListResponse;
  addActive(value?: GetPatientListResponse.Patient, index?: number): GetPatientListResponse.Patient;

  getUnassignedPatientsList(): Array<GetPatientListResponse.Patient>;
  setUnassignedPatientsList(value: Array<GetPatientListResponse.Patient>): GetPatientListResponse;
  clearUnassignedPatientsList(): GetPatientListResponse;
  addUnassignedPatients(value?: GetPatientListResponse.Patient, index?: number): GetPatientListResponse.Patient;

  getDischargedPatientsList(): Array<GetPatientListResponse.Patient>;
  setDischargedPatientsList(value: Array<GetPatientListResponse.Patient>): GetPatientListResponse;
  clearDischargedPatientsList(): GetPatientListResponse;
  addDischargedPatients(value?: GetPatientListResponse.Patient, index?: number): GetPatientListResponse.Patient;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetPatientListResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetPatientListResponse): GetPatientListResponse.AsObject;
  static serializeBinaryToWriter(message: GetPatientListResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetPatientListResponse;
  static deserializeBinaryFromReader(message: GetPatientListResponse, reader: jspb.BinaryReader): GetPatientListResponse;
}

export namespace GetPatientListResponse {
  export type AsObject = {
    activeList: Array<GetPatientListResponse.Patient.AsObject>,
    unassignedPatientsList: Array<GetPatientListResponse.Patient.AsObject>,
    dischargedPatientsList: Array<GetPatientListResponse.Patient.AsObject>,
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


  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

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
      wardId: string,
      consistency: string,
    }
  }


  export class Patient extends jspb.Message {
    getId(): string;
    setId(value: string): Patient;

    getHumanReadableIdentifier(): string;
    setHumanReadableIdentifier(value: string): Patient;

    getRoom(): GetPatientListResponse.Room | undefined;
    setRoom(value?: GetPatientListResponse.Room): Patient;
    hasRoom(): boolean;
    clearRoom(): Patient;

    getBed(): GetPatientListResponse.Bed | undefined;
    setBed(value?: GetPatientListResponse.Bed): Patient;
    hasBed(): boolean;
    clearBed(): Patient;

    getNotes(): string;
    setNotes(value: string): Patient;

    getTasksList(): Array<GetPatientListResponse.Task>;
    setTasksList(value: Array<GetPatientListResponse.Task>): Patient;
    clearTasksList(): Patient;
    addTasks(value?: GetPatientListResponse.Task, index?: number): GetPatientListResponse.Task;

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
      room?: GetPatientListResponse.Room.AsObject,
      bed?: GetPatientListResponse.Bed.AsObject,
      notes: string,
      tasksList: Array<GetPatientListResponse.Task.AsObject>,
      consistency: string,
    }
  }


  export class Task extends jspb.Message {
    getId(): string;
    setId(value: string): Task;

    getName(): string;
    setName(value: string): Task;

    getDescription(): string;
    setDescription(value: string): Task;

    getStatus(): services_tasks_svc_v1_types_pb.TaskStatus;
    setStatus(value: services_tasks_svc_v1_types_pb.TaskStatus): Task;

    getAssignedUserId(): string;
    setAssignedUserId(value: string): Task;
    hasAssignedUserId(): boolean;
    clearAssignedUserId(): Task;

    getPatientId(): string;
    setPatientId(value: string): Task;

    getPublic(): boolean;
    setPublic(value: boolean): Task;

    getSubtasksList(): Array<GetPatientListResponse.Task.SubTask>;
    setSubtasksList(value: Array<GetPatientListResponse.Task.SubTask>): Task;
    clearSubtasksList(): Task;
    addSubtasks(value?: GetPatientListResponse.Task.SubTask, index?: number): GetPatientListResponse.Task.SubTask;

    getConsistency(): string;
    setConsistency(value: string): Task;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Task.AsObject;
    static toObject(includeInstance: boolean, msg: Task): Task.AsObject;
    static serializeBinaryToWriter(message: Task, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Task;
    static deserializeBinaryFromReader(message: Task, reader: jspb.BinaryReader): Task;
  }

  export namespace Task {
    export type AsObject = {
      id: string,
      name: string,
      description: string,
      status: services_tasks_svc_v1_types_pb.TaskStatus,
      assignedUserId?: string,
      patientId: string,
      pb_public: boolean,
      subtasksList: Array<GetPatientListResponse.Task.SubTask.AsObject>,
      consistency: string,
    }

    export class SubTask extends jspb.Message {
      getId(): string;
      setId(value: string): SubTask;

      getName(): string;
      setName(value: string): SubTask;

      getDone(): boolean;
      setDone(value: boolean): SubTask;

      serializeBinary(): Uint8Array;
      toObject(includeInstance?: boolean): SubTask.AsObject;
      static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
      static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
      static deserializeBinary(bytes: Uint8Array): SubTask;
      static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
    }

    export namespace SubTask {
      export type AsObject = {
        id: string,
        name: string,
        done: boolean,
      }
    }


    export enum AssignedUserIdCase { 
      _ASSIGNED_USER_ID_NOT_SET = 0,
      ASSIGNED_USER_ID = 5,
    }
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
  getRecentPatientsList(): Array<GetRecentPatientsResponse.Patient>;
  setRecentPatientsList(value: Array<GetRecentPatientsResponse.Patient>): GetRecentPatientsResponse;
  clearRecentPatientsList(): GetRecentPatientsResponse;
  addRecentPatients(value?: GetRecentPatientsResponse.Patient, index?: number): GetRecentPatientsResponse.Patient;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRecentPatientsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRecentPatientsResponse): GetRecentPatientsResponse.AsObject;
  static serializeBinaryToWriter(message: GetRecentPatientsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRecentPatientsResponse;
  static deserializeBinaryFromReader(message: GetRecentPatientsResponse, reader: jspb.BinaryReader): GetRecentPatientsResponse;
}

export namespace GetRecentPatientsResponse {
  export type AsObject = {
    recentPatientsList: Array<GetRecentPatientsResponse.Patient.AsObject>,
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


  export class Room extends jspb.Message {
    getId(): string;
    setId(value: string): Room;

    getName(): string;
    setName(value: string): Room;

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
      wardId: string,
      consistency: string,
    }
  }


  export class Patient extends jspb.Message {
    getId(): string;
    setId(value: string): Patient;

    getHumanReadableIdentifier(): string;
    setHumanReadableIdentifier(value: string): Patient;

    getRoom(): GetRecentPatientsResponse.Room | undefined;
    setRoom(value?: GetRecentPatientsResponse.Room): Patient;
    hasRoom(): boolean;
    clearRoom(): Patient;

    getBed(): GetRecentPatientsResponse.Bed | undefined;
    setBed(value?: GetRecentPatientsResponse.Bed): Patient;
    hasBed(): boolean;
    clearBed(): Patient;

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
      room?: GetRecentPatientsResponse.Room.AsObject,
      bed?: GetRecentPatientsResponse.Bed.AsObject,
      consistency: string,
    }

    export enum RoomCase { 
      _ROOM_NOT_SET = 0,
      ROOM = 3,
    }

    export enum BedCase { 
      _BED_NOT_SET = 0,
      BED = 4,
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

  getConsistency(): string;
  setConsistency(value: string): UpdatePatientRequest;
  hasConsistency(): boolean;
  clearConsistency(): UpdatePatientRequest;

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
    consistency?: string,
  }

  export enum HumanReadableIdentifierCase { 
    _HUMAN_READABLE_IDENTIFIER_NOT_SET = 0,
    HUMAN_READABLE_IDENTIFIER = 2,
  }

  export enum NotesCase { 
    _NOTES_NOT_SET = 0,
    NOTES = 3,
  }

  export enum ConsistencyCase { 
    _CONSISTENCY_NOT_SET = 0,
    CONSISTENCY = 4,
  }
}

export class UpdatePatientResponse extends jspb.Message {
  getConflict(): libs_common_v1_conflict_pb.Conflict | undefined;
  setConflict(value?: libs_common_v1_conflict_pb.Conflict): UpdatePatientResponse;
  hasConflict(): boolean;
  clearConflict(): UpdatePatientResponse;

  getConsistency(): string;
  setConsistency(value: string): UpdatePatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdatePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdatePatientResponse): UpdatePatientResponse.AsObject;
  static serializeBinaryToWriter(message: UpdatePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdatePatientResponse;
  static deserializeBinaryFromReader(message: UpdatePatientResponse, reader: jspb.BinaryReader): UpdatePatientResponse;
}

export namespace UpdatePatientResponse {
  export type AsObject = {
    conflict?: libs_common_v1_conflict_pb.Conflict.AsObject,
    consistency: string,
  }

  export enum ConflictCase { 
    _CONFLICT_NOT_SET = 0,
    CONFLICT = 1,
  }
}

export class AssignBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): AssignBedRequest;

  getBedId(): string;
  setBedId(value: string): AssignBedRequest;

  getConsistency(): string;
  setConsistency(value: string): AssignBedRequest;
  hasConsistency(): boolean;
  clearConsistency(): AssignBedRequest;

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
    consistency?: string,
  }

  export enum ConsistencyCase { 
    _CONSISTENCY_NOT_SET = 0,
    CONSISTENCY = 3,
  }
}

export class AssignBedResponse extends jspb.Message {
  getConflict(): libs_common_v1_conflict_pb.Conflict | undefined;
  setConflict(value?: libs_common_v1_conflict_pb.Conflict): AssignBedResponse;
  hasConflict(): boolean;
  clearConflict(): AssignBedResponse;

  getConsistency(): string;
  setConsistency(value: string): AssignBedResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AssignBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AssignBedResponse): AssignBedResponse.AsObject;
  static serializeBinaryToWriter(message: AssignBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AssignBedResponse;
  static deserializeBinaryFromReader(message: AssignBedResponse, reader: jspb.BinaryReader): AssignBedResponse;
}

export namespace AssignBedResponse {
  export type AsObject = {
    conflict?: libs_common_v1_conflict_pb.Conflict.AsObject,
    consistency: string,
  }

  export enum ConflictCase { 
    _CONFLICT_NOT_SET = 0,
    CONFLICT = 1,
  }
}

export class UnassignBedRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UnassignBedRequest;

  getConsistency(): string;
  setConsistency(value: string): UnassignBedRequest;
  hasConsistency(): boolean;
  clearConsistency(): UnassignBedRequest;

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
    consistency?: string,
  }

  export enum ConsistencyCase { 
    _CONSISTENCY_NOT_SET = 0,
    CONSISTENCY = 2,
  }
}

export class UnassignBedResponse extends jspb.Message {
  getConflict(): libs_common_v1_conflict_pb.Conflict | undefined;
  setConflict(value?: libs_common_v1_conflict_pb.Conflict): UnassignBedResponse;
  hasConflict(): boolean;
  clearConflict(): UnassignBedResponse;

  getConsistency(): string;
  setConsistency(value: string): UnassignBedResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UnassignBedResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UnassignBedResponse): UnassignBedResponse.AsObject;
  static serializeBinaryToWriter(message: UnassignBedResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UnassignBedResponse;
  static deserializeBinaryFromReader(message: UnassignBedResponse, reader: jspb.BinaryReader): UnassignBedResponse;
}

export namespace UnassignBedResponse {
  export type AsObject = {
    conflict?: libs_common_v1_conflict_pb.Conflict.AsObject,
    consistency: string,
  }

  export enum ConflictCase { 
    _CONFLICT_NOT_SET = 0,
    CONFLICT = 1,
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
  getConsistency(): string;
  setConsistency(value: string): DischargePatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DischargePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DischargePatientResponse): DischargePatientResponse.AsObject;
  static serializeBinaryToWriter(message: DischargePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DischargePatientResponse;
  static deserializeBinaryFromReader(message: DischargePatientResponse, reader: jspb.BinaryReader): DischargePatientResponse;
}

export namespace DischargePatientResponse {
  export type AsObject = {
    consistency: string,
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
  getConsistency(): string;
  setConsistency(value: string): ReadmitPatientResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ReadmitPatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ReadmitPatientResponse): ReadmitPatientResponse.AsObject;
  static serializeBinaryToWriter(message: ReadmitPatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ReadmitPatientResponse;
  static deserializeBinaryFromReader(message: ReadmitPatientResponse, reader: jspb.BinaryReader): ReadmitPatientResponse;
}

export namespace ReadmitPatientResponse {
  export type AsObject = {
    consistency: string,
  }
}

export class DeletePatientRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeletePatientRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeletePatientRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeletePatientRequest): DeletePatientRequest.AsObject;
  static serializeBinaryToWriter(message: DeletePatientRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeletePatientRequest;
  static deserializeBinaryFromReader(message: DeletePatientRequest, reader: jspb.BinaryReader): DeletePatientRequest;
}

export namespace DeletePatientRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeletePatientResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeletePatientResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeletePatientResponse): DeletePatientResponse.AsObject;
  static serializeBinaryToWriter(message: DeletePatientResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeletePatientResponse;
  static deserializeBinaryFromReader(message: DeletePatientResponse, reader: jspb.BinaryReader): DeletePatientResponse;
}

export namespace DeletePatientResponse {
  export type AsObject = {
  }
}

