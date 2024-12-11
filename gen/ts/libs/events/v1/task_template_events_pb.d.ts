import * as jspb from 'google-protobuf'

import * as libs_events_v1_options_pb from '../../../libs/events/v1/options_pb'; // proto import: "libs/events/v1/options.proto"


export class TaskTemplateCreatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): TaskTemplateCreatedEvent;

  getName(): string;
  setName(value: string): TaskTemplateCreatedEvent;

  getDescription(): string;
  setDescription(value: string): TaskTemplateCreatedEvent;

  getSubtasksList(): Array<TaskTemplateCreatedEvent.SubTask>;
  setSubtasksList(value: Array<TaskTemplateCreatedEvent.SubTask>): TaskTemplateCreatedEvent;
  clearSubtasksList(): TaskTemplateCreatedEvent;
  addSubtasks(value?: TaskTemplateCreatedEvent.SubTask, index?: number): TaskTemplateCreatedEvent.SubTask;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskTemplateCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TaskTemplateCreatedEvent): TaskTemplateCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: TaskTemplateCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskTemplateCreatedEvent;
  static deserializeBinaryFromReader(message: TaskTemplateCreatedEvent, reader: jspb.BinaryReader): TaskTemplateCreatedEvent;
}

export namespace TaskTemplateCreatedEvent {
  export type AsObject = {
    id: string,
    name: string,
    description: string,
    subtasksList: Array<TaskTemplateCreatedEvent.SubTask.AsObject>,
  }

  export class SubTask extends jspb.Message {
    getName(): string;
    setName(value: string): SubTask;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SubTask.AsObject;
    static toObject(includeInstance: boolean, msg: SubTask): SubTask.AsObject;
    static serializeBinaryToWriter(message: SubTask, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SubTask;
    static deserializeBinaryFromReader(message: SubTask, reader: jspb.BinaryReader): SubTask;
  }

  export namespace SubTask {
    export type AsObject = {
      name: string,
    }
  }

}

export class TaskTemplateUpdatedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): TaskTemplateUpdatedEvent;

  getName(): string;
  setName(value: string): TaskTemplateUpdatedEvent;

  getDescription(): string;
  setDescription(value: string): TaskTemplateUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskTemplateUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TaskTemplateUpdatedEvent): TaskTemplateUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: TaskTemplateUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskTemplateUpdatedEvent;
  static deserializeBinaryFromReader(message: TaskTemplateUpdatedEvent, reader: jspb.BinaryReader): TaskTemplateUpdatedEvent;
}

export namespace TaskTemplateUpdatedEvent {
  export type AsObject = {
    id: string,
    name: string,
    description: string,
  }
}

export class TaskTemplateDeletedEvent extends jspb.Message {
  getId(): string;
  setId(value: string): TaskTemplateDeletedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskTemplateDeletedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TaskTemplateDeletedEvent): TaskTemplateDeletedEvent.AsObject;
  static serializeBinaryToWriter(message: TaskTemplateDeletedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskTemplateDeletedEvent;
  static deserializeBinaryFromReader(message: TaskTemplateDeletedEvent, reader: jspb.BinaryReader): TaskTemplateDeletedEvent;
}

export namespace TaskTemplateDeletedEvent {
  export type AsObject = {
    id: string,
  }
}

export class TaskTemplateSubTaskCreatedEvent extends jspb.Message {
  getTaskTemplateId(): string;
  setTaskTemplateId(value: string): TaskTemplateSubTaskCreatedEvent;

  getSubTaskId(): string;
  setSubTaskId(value: string): TaskTemplateSubTaskCreatedEvent;

  getName(): string;
  setName(value: string): TaskTemplateSubTaskCreatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskTemplateSubTaskCreatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TaskTemplateSubTaskCreatedEvent): TaskTemplateSubTaskCreatedEvent.AsObject;
  static serializeBinaryToWriter(message: TaskTemplateSubTaskCreatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskTemplateSubTaskCreatedEvent;
  static deserializeBinaryFromReader(message: TaskTemplateSubTaskCreatedEvent, reader: jspb.BinaryReader): TaskTemplateSubTaskCreatedEvent;
}

export namespace TaskTemplateSubTaskCreatedEvent {
  export type AsObject = {
    taskTemplateId: string,
    subTaskId: string,
    name: string,
  }
}

export class TaskTemplateSubTaskUpdatedEvent extends jspb.Message {
  getTaskTemplateId(): string;
  setTaskTemplateId(value: string): TaskTemplateSubTaskUpdatedEvent;

  getSubTaskId(): string;
  setSubTaskId(value: string): TaskTemplateSubTaskUpdatedEvent;

  getName(): string;
  setName(value: string): TaskTemplateSubTaskUpdatedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskTemplateSubTaskUpdatedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TaskTemplateSubTaskUpdatedEvent): TaskTemplateSubTaskUpdatedEvent.AsObject;
  static serializeBinaryToWriter(message: TaskTemplateSubTaskUpdatedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskTemplateSubTaskUpdatedEvent;
  static deserializeBinaryFromReader(message: TaskTemplateSubTaskUpdatedEvent, reader: jspb.BinaryReader): TaskTemplateSubTaskUpdatedEvent;
}

export namespace TaskTemplateSubTaskUpdatedEvent {
  export type AsObject = {
    taskTemplateId: string,
    subTaskId: string,
    name: string,
  }
}

export class TaskTemplateSubTaskDeletedEvent extends jspb.Message {
  getTaskTemplateId(): string;
  setTaskTemplateId(value: string): TaskTemplateSubTaskDeletedEvent;

  getSubTaskId(): string;
  setSubTaskId(value: string): TaskTemplateSubTaskDeletedEvent;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TaskTemplateSubTaskDeletedEvent.AsObject;
  static toObject(includeInstance: boolean, msg: TaskTemplateSubTaskDeletedEvent): TaskTemplateSubTaskDeletedEvent.AsObject;
  static serializeBinaryToWriter(message: TaskTemplateSubTaskDeletedEvent, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TaskTemplateSubTaskDeletedEvent;
  static deserializeBinaryFromReader(message: TaskTemplateSubTaskDeletedEvent, reader: jspb.BinaryReader): TaskTemplateSubTaskDeletedEvent;
}

export namespace TaskTemplateSubTaskDeletedEvent {
  export type AsObject = {
    taskTemplateId: string,
    subTaskId: string,
  }
}

