import * as jspb from 'google-protobuf'



export class CreatePatientRequest extends jspb.Message {
  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): CreatePatientRequest;

  getNotes(): string;
  setNotes(value: string): CreatePatientRequest;

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
    notes: string,
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
  }

  export enum BedIdCase { 
    _BED_ID_NOT_SET = 0,
    BED_ID = 4,
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
  hasBedId(): boolean;
  clearBedId(): GetPatientByBedResponse;

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
    bedId?: string,
  }

  export enum BedIdCase { 
    _BED_ID_NOT_SET = 0,
    BED_ID = 4,
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
    }

    export enum BedIdCase { 
      _BED_ID_NOT_SET = 0,
      BED_ID = 4,
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

  getName(): string;
  setName(value: string): GetPatientDetailsResponse;

  getHumanReadableIdentifier(): string;
  setHumanReadableIdentifier(value: string): GetPatientDetailsResponse;

  getNotes(): string;
  setNotes(value: string): GetPatientDetailsResponse;

  getTasksList(): Array<GetPatientDetailsResponse.Task>;
  setTasksList(value: Array<GetPatientDetailsResponse.Task>): GetPatientDetailsResponse;
  clearTasksList(): GetPatientDetailsResponse;
  addTasks(value?: GetPatientDetailsResponse.Task, index?: number): GetPatientDetailsResponse.Task;

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
    name: string,
    humanReadableIdentifier: string,
    notes: string,
    tasksList: Array<GetPatientDetailsResponse.Task.AsObject>,
  }

  export class Task extends jspb.Message {
    getId(): string;
    setId(value: string): Task;

    getName(): string;
    setName(value: string): Task;

    getDescription(): string;
    setDescription(value: string): Task;

    getStatus(): GetPatientDetailsResponse.TaskStatus;
    setStatus(value: GetPatientDetailsResponse.TaskStatus): Task;

    getAssignedUserId(): string;
    setAssignedUserId(value: string): Task;

    getPatientId(): string;
    setPatientId(value: string): Task;

    getPublic(): boolean;
    setPublic(value: boolean): Task;

    getSubtasksList(): Array<GetPatientDetailsResponse.Task.SubTask>;
    setSubtasksList(value: Array<GetPatientDetailsResponse.Task.SubTask>): Task;
    clearSubtasksList(): Task;
    addSubtasks(value?: GetPatientDetailsResponse.Task.SubTask, index?: number): GetPatientDetailsResponse.Task.SubTask;

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
      status: GetPatientDetailsResponse.TaskStatus,
      assignedUserId: string,
      patientId: string,
      pb_public: boolean,
      subtasksList: Array<GetPatientDetailsResponse.Task.SubTask.AsObject>,
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

  }


  export enum TaskStatus { 
    TASK_STATUS_UNSPECIFIED = 0,
    TASK_STATUS_TODO = 1,
    TASK_STATUS_IN_PROGRESS = 2,
    TASK_STATUS_DONE = 3,
  }
}

