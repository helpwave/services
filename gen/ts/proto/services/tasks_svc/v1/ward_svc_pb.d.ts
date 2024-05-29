import * as jspb from 'google-protobuf'



export class CreateWardRequest extends jspb.Message {
  getName(): string;
  setName(value: string): CreateWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateWardRequest): CreateWardRequest.AsObject;
  static serializeBinaryToWriter(message: CreateWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateWardRequest;
  static deserializeBinaryFromReader(message: CreateWardRequest, reader: jspb.BinaryReader): CreateWardRequest;
}

export namespace CreateWardRequest {
  export type AsObject = {
    name: string,
  }
}

export class CreateWardResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateWardResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateWardResponse): CreateWardResponse.AsObject;
  static serializeBinaryToWriter(message: CreateWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateWardResponse;
  static deserializeBinaryFromReader(message: CreateWardResponse, reader: jspb.BinaryReader): CreateWardResponse;
}

export namespace CreateWardResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardRequest): GetWardRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardRequest;
  static deserializeBinaryFromReader(message: GetWardRequest, reader: jspb.BinaryReader): GetWardRequest;
}

export namespace GetWardRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetWardResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardResponse;

  getName(): string;
  setName(value: string): GetWardResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardResponse): GetWardResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardResponse;
  static deserializeBinaryFromReader(message: GetWardResponse, reader: jspb.BinaryReader): GetWardResponse;
}

export namespace GetWardResponse {
  export type AsObject = {
    id: string,
    name: string,
  }
}

export class GetWardsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardsRequest): GetWardsRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardsRequest;
  static deserializeBinaryFromReader(message: GetWardsRequest, reader: jspb.BinaryReader): GetWardsRequest;
}

export namespace GetWardsRequest {
  export type AsObject = {
  }
}

export class GetWardsResponse extends jspb.Message {
  getWardsList(): Array<GetWardsResponse.Ward>;
  setWardsList(value: Array<GetWardsResponse.Ward>): GetWardsResponse;
  clearWardsList(): GetWardsResponse;
  addWards(value?: GetWardsResponse.Ward, index?: number): GetWardsResponse.Ward;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardsResponse): GetWardsResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardsResponse;
  static deserializeBinaryFromReader(message: GetWardsResponse, reader: jspb.BinaryReader): GetWardsResponse;
}

export namespace GetWardsResponse {
  export type AsObject = {
    wardsList: Array<GetWardsResponse.Ward.AsObject>,
  }

  export class Ward extends jspb.Message {
    getId(): string;
    setId(value: string): Ward;

    getName(): string;
    setName(value: string): Ward;

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
    }
  }

}

export class GetRecentWardsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRecentWardsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRecentWardsRequest): GetRecentWardsRequest.AsObject;
  static serializeBinaryToWriter(message: GetRecentWardsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRecentWardsRequest;
  static deserializeBinaryFromReader(message: GetRecentWardsRequest, reader: jspb.BinaryReader): GetRecentWardsRequest;
}

export namespace GetRecentWardsRequest {
  export type AsObject = {
  }
}

export class GetRecentWardsResponse extends jspb.Message {
  getWardsList(): Array<GetRecentWardsResponse.Ward>;
  setWardsList(value: Array<GetRecentWardsResponse.Ward>): GetRecentWardsResponse;
  clearWardsList(): GetRecentWardsResponse;
  addWards(value?: GetRecentWardsResponse.Ward, index?: number): GetRecentWardsResponse.Ward;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRecentWardsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRecentWardsResponse): GetRecentWardsResponse.AsObject;
  static serializeBinaryToWriter(message: GetRecentWardsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRecentWardsResponse;
  static deserializeBinaryFromReader(message: GetRecentWardsResponse, reader: jspb.BinaryReader): GetRecentWardsResponse;
}

export namespace GetRecentWardsResponse {
  export type AsObject = {
    wardsList: Array<GetRecentWardsResponse.Ward.AsObject>,
  }

  export class Ward extends jspb.Message {
    getId(): string;
    setId(value: string): Ward;

    getName(): string;
    setName(value: string): Ward;

    getBedCount(): number;
    setBedCount(value: number): Ward;

    getTasksTodo(): number;
    setTasksTodo(value: number): Ward;

    getTasksInProgress(): number;
    setTasksInProgress(value: number): Ward;

    getTasksDone(): number;
    setTasksDone(value: number): Ward;

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
      bedCount: number,
      tasksTodo: number,
      tasksInProgress: number,
      tasksDone: number,
    }
  }

}

export class UpdateWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateWardRequest;

  getName(): string;
  setName(value: string): UpdateWardRequest;
  hasName(): boolean;
  clearName(): UpdateWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateWardRequest): UpdateWardRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateWardRequest;
  static deserializeBinaryFromReader(message: UpdateWardRequest, reader: jspb.BinaryReader): UpdateWardRequest;
}

export namespace UpdateWardRequest {
  export type AsObject = {
    id: string,
    name?: string,
  }

  export enum NameCase { 
    _NAME_NOT_SET = 0,
    NAME = 2,
  }
}

export class UpdateWardResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateWardResponse): UpdateWardResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateWardResponse;
  static deserializeBinaryFromReader(message: UpdateWardResponse, reader: jspb.BinaryReader): UpdateWardResponse;
}

export namespace UpdateWardResponse {
  export type AsObject = {
  }
}

export class DeleteWardRequest extends jspb.Message {
  getId(): string;
  setId(value: string): DeleteWardRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteWardRequest.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteWardRequest): DeleteWardRequest.AsObject;
  static serializeBinaryToWriter(message: DeleteWardRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteWardRequest;
  static deserializeBinaryFromReader(message: DeleteWardRequest, reader: jspb.BinaryReader): DeleteWardRequest;
}

export namespace DeleteWardRequest {
  export type AsObject = {
    id: string,
  }
}

export class DeleteWardResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DeleteWardResponse.AsObject;
  static toObject(includeInstance: boolean, msg: DeleteWardResponse): DeleteWardResponse.AsObject;
  static serializeBinaryToWriter(message: DeleteWardResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DeleteWardResponse;
  static deserializeBinaryFromReader(message: DeleteWardResponse, reader: jspb.BinaryReader): DeleteWardResponse;
}

export namespace DeleteWardResponse {
  export type AsObject = {
  }
}

export class GetWardDetailsRequest extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardDetailsRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardDetailsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardDetailsRequest): GetWardDetailsRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardDetailsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardDetailsRequest;
  static deserializeBinaryFromReader(message: GetWardDetailsRequest, reader: jspb.BinaryReader): GetWardDetailsRequest;
}

export namespace GetWardDetailsRequest {
  export type AsObject = {
    id: string,
  }
}

export class GetWardDetailsResponse extends jspb.Message {
  getId(): string;
  setId(value: string): GetWardDetailsResponse;

  getName(): string;
  setName(value: string): GetWardDetailsResponse;

  getRoomsList(): Array<GetWardDetailsResponse.Room>;
  setRoomsList(value: Array<GetWardDetailsResponse.Room>): GetWardDetailsResponse;
  clearRoomsList(): GetWardDetailsResponse;
  addRooms(value?: GetWardDetailsResponse.Room, index?: number): GetWardDetailsResponse.Room;

  getTaskTemplatesList(): Array<GetWardDetailsResponse.TaskTemplate>;
  setTaskTemplatesList(value: Array<GetWardDetailsResponse.TaskTemplate>): GetWardDetailsResponse;
  clearTaskTemplatesList(): GetWardDetailsResponse;
  addTaskTemplates(value?: GetWardDetailsResponse.TaskTemplate, index?: number): GetWardDetailsResponse.TaskTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardDetailsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardDetailsResponse): GetWardDetailsResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardDetailsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardDetailsResponse;
  static deserializeBinaryFromReader(message: GetWardDetailsResponse, reader: jspb.BinaryReader): GetWardDetailsResponse;
}

export namespace GetWardDetailsResponse {
  export type AsObject = {
    id: string,
    name: string,
    roomsList: Array<GetWardDetailsResponse.Room.AsObject>,
    taskTemplatesList: Array<GetWardDetailsResponse.TaskTemplate.AsObject>,
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


  export class Subtask extends jspb.Message {
    getId(): string;
    setId(value: string): Subtask;

    getName(): string;
    setName(value: string): Subtask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Subtask.AsObject;
    static toObject(includeInstance: boolean, msg: Subtask): Subtask.AsObject;
    static serializeBinaryToWriter(message: Subtask, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Subtask;
    static deserializeBinaryFromReader(message: Subtask, reader: jspb.BinaryReader): Subtask;
  }

  export namespace Subtask {
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

    getBedsList(): Array<GetWardDetailsResponse.Bed>;
    setBedsList(value: Array<GetWardDetailsResponse.Bed>): Room;
    clearBedsList(): Room;
    addBeds(value?: GetWardDetailsResponse.Bed, index?: number): GetWardDetailsResponse.Bed;

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
      bedsList: Array<GetWardDetailsResponse.Bed.AsObject>,
    }
  }


  export class TaskTemplate extends jspb.Message {
    getId(): string;
    setId(value: string): TaskTemplate;

    getName(): string;
    setName(value: string): TaskTemplate;

    getSubtasksList(): Array<GetWardDetailsResponse.Subtask>;
    setSubtasksList(value: Array<GetWardDetailsResponse.Subtask>): TaskTemplate;
    clearSubtasksList(): TaskTemplate;
    addSubtasks(value?: GetWardDetailsResponse.Subtask, index?: number): GetWardDetailsResponse.Subtask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): TaskTemplate.AsObject;
    static toObject(includeInstance: boolean, msg: TaskTemplate): TaskTemplate.AsObject;
    static serializeBinaryToWriter(message: TaskTemplate, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): TaskTemplate;
    static deserializeBinaryFromReader(message: TaskTemplate, reader: jspb.BinaryReader): TaskTemplate;
  }

  export namespace TaskTemplate {
    export type AsObject = {
      id: string,
      name: string,
      subtasksList: Array<GetWardDetailsResponse.Subtask.AsObject>,
    }
  }

}

export class GetWardOverviewsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardOverviewsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardOverviewsRequest): GetWardOverviewsRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardOverviewsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardOverviewsRequest;
  static deserializeBinaryFromReader(message: GetWardOverviewsRequest, reader: jspb.BinaryReader): GetWardOverviewsRequest;
}

export namespace GetWardOverviewsRequest {
  export type AsObject = {
  }
}

export class GetWardOverviewsResponse extends jspb.Message {
  getWardsList(): Array<GetWardOverviewsResponse.Ward>;
  setWardsList(value: Array<GetWardOverviewsResponse.Ward>): GetWardOverviewsResponse;
  clearWardsList(): GetWardOverviewsResponse;
  addWards(value?: GetWardOverviewsResponse.Ward, index?: number): GetWardOverviewsResponse.Ward;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardOverviewsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardOverviewsResponse): GetWardOverviewsResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardOverviewsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardOverviewsResponse;
  static deserializeBinaryFromReader(message: GetWardOverviewsResponse, reader: jspb.BinaryReader): GetWardOverviewsResponse;
}

export namespace GetWardOverviewsResponse {
  export type AsObject = {
    wardsList: Array<GetWardOverviewsResponse.Ward.AsObject>,
  }

  export class Ward extends jspb.Message {
    getId(): string;
    setId(value: string): Ward;

    getName(): string;
    setName(value: string): Ward;

    getBedCount(): number;
    setBedCount(value: number): Ward;

    getTasksTodo(): number;
    setTasksTodo(value: number): Ward;

    getTasksInProgress(): number;
    setTasksInProgress(value: number): Ward;

    getTasksDone(): number;
    setTasksDone(value: number): Ward;

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
      bedCount: number,
      tasksTodo: number,
      tasksInProgress: number,
      tasksDone: number,
    }
  }

}

