import * as jspb from 'google-protobuf'

import * as google_protobuf_timestamp_pb from 'google-protobuf/google/protobuf/timestamp_pb';


export class CreateUserRequest extends jspb.Message {
  getUsername(): string;
  setUsername(value: string): CreateUserRequest;

  getSex(): string;
  setSex(value: string): CreateUserRequest;

  getBirthday(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setBirthday(value?: google_protobuf_timestamp_pb.Timestamp): CreateUserRequest;
  hasBirthday(): boolean;
  clearBirthday(): CreateUserRequest;

  getPal(): number;
  setPal(value: number): CreateUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateUserRequest): CreateUserRequest.AsObject;
  static serializeBinaryToWriter(message: CreateUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateUserRequest;
  static deserializeBinaryFromReader(message: CreateUserRequest, reader: jspb.BinaryReader): CreateUserRequest;
}

export namespace CreateUserRequest {
  export type AsObject = {
    username: string,
    sex: string,
    birthday?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    pal: number,
  }
}

export class CreateUserResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateUserResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateUserResponse): CreateUserResponse.AsObject;
  static serializeBinaryToWriter(message: CreateUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateUserResponse;
  static deserializeBinaryFromReader(message: CreateUserResponse, reader: jspb.BinaryReader): CreateUserResponse;
}

export namespace CreateUserResponse {
  export type AsObject = {
    id: string,
  }
}

export class UpdateUserRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateUserRequest;

  getSex(): string;
  setSex(value: string): UpdateUserRequest;
  hasSex(): boolean;
  clearSex(): UpdateUserRequest;

  getBirthday(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setBirthday(value?: google_protobuf_timestamp_pb.Timestamp): UpdateUserRequest;
  hasBirthday(): boolean;
  clearBirthday(): UpdateUserRequest;

  getPal(): number;
  setPal(value: number): UpdateUserRequest;
  hasPal(): boolean;
  clearPal(): UpdateUserRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateUserRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateUserRequest): UpdateUserRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateUserRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateUserRequest;
  static deserializeBinaryFromReader(message: UpdateUserRequest, reader: jspb.BinaryReader): UpdateUserRequest;
}

export namespace UpdateUserRequest {
  export type AsObject = {
    id: string,
    sex?: string,
    birthday?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    pal?: number,
  }

  export enum SexCase { 
    _SEX_NOT_SET = 0,
    SEX = 2,
  }

  export enum BirthdayCase { 
    _BIRTHDAY_NOT_SET = 0,
    BIRTHDAY = 3,
  }

  export enum PalCase { 
    _PAL_NOT_SET = 0,
    PAL = 4,
  }
}

export class UpdateUserResponse extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateUserResponse;

  getSex(): string;
  setSex(value: string): UpdateUserResponse;

  getBirthday(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setBirthday(value?: google_protobuf_timestamp_pb.Timestamp): UpdateUserResponse;
  hasBirthday(): boolean;
  clearBirthday(): UpdateUserResponse;

  getPal(): number;
  setPal(value: number): UpdateUserResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateUserResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateUserResponse): UpdateUserResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateUserResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateUserResponse;
  static deserializeBinaryFromReader(message: UpdateUserResponse, reader: jspb.BinaryReader): UpdateUserResponse;
}

export namespace UpdateUserResponse {
  export type AsObject = {
    id: string,
    sex: string,
    birthday?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    pal: number,
  }
}

export class TrackChallengeRequest extends jspb.Message {
  getChallengeId(): string;
  setChallengeId(value: string): TrackChallengeRequest;

  getUserId(): string;
  setUserId(value: string): TrackChallengeRequest;

  getScore(): number;
  setScore(value: number): TrackChallengeRequest;

  getDoneAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setDoneAt(value?: google_protobuf_timestamp_pb.Timestamp): TrackChallengeRequest;
  hasDoneAt(): boolean;
  clearDoneAt(): TrackChallengeRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TrackChallengeRequest.AsObject;
  static toObject(includeInstance: boolean, msg: TrackChallengeRequest): TrackChallengeRequest.AsObject;
  static serializeBinaryToWriter(message: TrackChallengeRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TrackChallengeRequest;
  static deserializeBinaryFromReader(message: TrackChallengeRequest, reader: jspb.BinaryReader): TrackChallengeRequest;
}

export namespace TrackChallengeRequest {
  export type AsObject = {
    challengeId: string,
    userId: string,
    score: number,
    doneAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
  }
}

export class TrackChallengeResponse extends jspb.Message {
  getId(): string;
  setId(value: string): TrackChallengeResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): TrackChallengeResponse.AsObject;
  static toObject(includeInstance: boolean, msg: TrackChallengeResponse): TrackChallengeResponse.AsObject;
  static serializeBinaryToWriter(message: TrackChallengeResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): TrackChallengeResponse;
  static deserializeBinaryFromReader(message: TrackChallengeResponse, reader: jspb.BinaryReader): TrackChallengeResponse;
}

export namespace TrackChallengeResponse {
  export type AsObject = {
    id: string,
  }
}

export class CreateDailyChallengeRequest extends jspb.Message {
  getTitle(): string;
  setTitle(value: string): CreateDailyChallengeRequest;

  getDescription(): string;
  setDescription(value: string): CreateDailyChallengeRequest;

  getCategory(): ChallengeCategory;
  setCategory(value: ChallengeCategory): CreateDailyChallengeRequest;

  getThreshold(): number;
  setThreshold(value: number): CreateDailyChallengeRequest;

  getPoints(): number;
  setPoints(value: number): CreateDailyChallengeRequest;

  getUnit(): string;
  setUnit(value: string): CreateDailyChallengeRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateDailyChallengeRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateDailyChallengeRequest): CreateDailyChallengeRequest.AsObject;
  static serializeBinaryToWriter(message: CreateDailyChallengeRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateDailyChallengeRequest;
  static deserializeBinaryFromReader(message: CreateDailyChallengeRequest, reader: jspb.BinaryReader): CreateDailyChallengeRequest;
}

export namespace CreateDailyChallengeRequest {
  export type AsObject = {
    title: string,
    description: string,
    category: ChallengeCategory,
    threshold: number,
    points: number,
    unit: string,
  }
}

export class CreateDailyChallengeResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateDailyChallengeResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateDailyChallengeResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateDailyChallengeResponse): CreateDailyChallengeResponse.AsObject;
  static serializeBinaryToWriter(message: CreateDailyChallengeResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateDailyChallengeResponse;
  static deserializeBinaryFromReader(message: CreateDailyChallengeResponse, reader: jspb.BinaryReader): CreateDailyChallengeResponse;
}

export namespace CreateDailyChallengeResponse {
  export type AsObject = {
    id: string,
  }
}

export class CreateQuestChallengeRequest extends jspb.Message {
  getTitle(): string;
  setTitle(value: string): CreateQuestChallengeRequest;

  getDescription(): string;
  setDescription(value: string): CreateQuestChallengeRequest;

  getStartAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setStartAt(value?: google_protobuf_timestamp_pb.Timestamp): CreateQuestChallengeRequest;
  hasStartAt(): boolean;
  clearStartAt(): CreateQuestChallengeRequest;

  getEndAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setEndAt(value?: google_protobuf_timestamp_pb.Timestamp): CreateQuestChallengeRequest;
  hasEndAt(): boolean;
  clearEndAt(): CreateQuestChallengeRequest;

  getCategory(): ChallengeCategory;
  setCategory(value: ChallengeCategory): CreateQuestChallengeRequest;

  getThreshold(): number;
  setThreshold(value: number): CreateQuestChallengeRequest;

  getPoints(): number;
  setPoints(value: number): CreateQuestChallengeRequest;

  getUnit(): string;
  setUnit(value: string): CreateQuestChallengeRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateQuestChallengeRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateQuestChallengeRequest): CreateQuestChallengeRequest.AsObject;
  static serializeBinaryToWriter(message: CreateQuestChallengeRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateQuestChallengeRequest;
  static deserializeBinaryFromReader(message: CreateQuestChallengeRequest, reader: jspb.BinaryReader): CreateQuestChallengeRequest;
}

export namespace CreateQuestChallengeRequest {
  export type AsObject = {
    title: string,
    description: string,
    startAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    endAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    category: ChallengeCategory,
    threshold: number,
    points: number,
    unit: string,
  }
}

export class CreateQuestChallengeResponse extends jspb.Message {
  getId(): string;
  setId(value: string): CreateQuestChallengeResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateQuestChallengeResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateQuestChallengeResponse): CreateQuestChallengeResponse.AsObject;
  static serializeBinaryToWriter(message: CreateQuestChallengeResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateQuestChallengeResponse;
  static deserializeBinaryFromReader(message: CreateQuestChallengeResponse, reader: jspb.BinaryReader): CreateQuestChallengeResponse;
}

export namespace CreateQuestChallengeResponse {
  export type AsObject = {
    id: string,
  }
}

export class GetChallengesRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetChallengesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetChallengesRequest): GetChallengesRequest.AsObject;
  static serializeBinaryToWriter(message: GetChallengesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetChallengesRequest;
  static deserializeBinaryFromReader(message: GetChallengesRequest, reader: jspb.BinaryReader): GetChallengesRequest;
}

export namespace GetChallengesRequest {
  export type AsObject = {
  }
}

export class GetChallengesResponse extends jspb.Message {
  getChallengesList(): Array<GetChallengesResponse.Challenge>;
  setChallengesList(value: Array<GetChallengesResponse.Challenge>): GetChallengesResponse;
  clearChallengesList(): GetChallengesResponse;
  addChallenges(value?: GetChallengesResponse.Challenge, index?: number): GetChallengesResponse.Challenge;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetChallengesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetChallengesResponse): GetChallengesResponse.AsObject;
  static serializeBinaryToWriter(message: GetChallengesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetChallengesResponse;
  static deserializeBinaryFromReader(message: GetChallengesResponse, reader: jspb.BinaryReader): GetChallengesResponse;
}

export namespace GetChallengesResponse {
  export type AsObject = {
    challengesList: Array<GetChallengesResponse.Challenge.AsObject>,
  }

  export class Challenge extends jspb.Message {
    getId(): string;
    setId(value: string): Challenge;

    getTitle(): string;
    setTitle(value: string): Challenge;

    getDescription(): string;
    setDescription(value: string): Challenge;

    getStartAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setStartAt(value?: google_protobuf_timestamp_pb.Timestamp): Challenge;
    hasStartAt(): boolean;
    clearStartAt(): Challenge;

    getEndAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
    setEndAt(value?: google_protobuf_timestamp_pb.Timestamp): Challenge;
    hasEndAt(): boolean;
    clearEndAt(): Challenge;

    getCategory(): ChallengeCategory;
    setCategory(value: ChallengeCategory): Challenge;

    getType(): ChallengeType;
    setType(value: ChallengeType): Challenge;

    getThreshold(): number;
    setThreshold(value: number): Challenge;

    getPoints(): number;
    setPoints(value: number): Challenge;

    getUnit(): string;
    setUnit(value: string): Challenge;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Challenge.AsObject;
    static toObject(includeInstance: boolean, msg: Challenge): Challenge.AsObject;
    static serializeBinaryToWriter(message: Challenge, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Challenge;
    static deserializeBinaryFromReader(message: Challenge, reader: jspb.BinaryReader): Challenge;
  }

  export namespace Challenge {
    export type AsObject = {
      id: string,
      title: string,
      description: string,
      startAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      endAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
      category: ChallengeCategory,
      type: ChallengeType,
      threshold: number,
      points: number,
      unit: string,
    }
  }

}

export class UpdateChallengeRequest extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateChallengeRequest;

  getTitle(): string;
  setTitle(value: string): UpdateChallengeRequest;
  hasTitle(): boolean;
  clearTitle(): UpdateChallengeRequest;

  getDescription(): string;
  setDescription(value: string): UpdateChallengeRequest;
  hasDescription(): boolean;
  clearDescription(): UpdateChallengeRequest;

  getStartAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setStartAt(value?: google_protobuf_timestamp_pb.Timestamp): UpdateChallengeRequest;
  hasStartAt(): boolean;
  clearStartAt(): UpdateChallengeRequest;

  getEndAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setEndAt(value?: google_protobuf_timestamp_pb.Timestamp): UpdateChallengeRequest;
  hasEndAt(): boolean;
  clearEndAt(): UpdateChallengeRequest;

  getCategory(): ChallengeCategory;
  setCategory(value: ChallengeCategory): UpdateChallengeRequest;
  hasCategory(): boolean;
  clearCategory(): UpdateChallengeRequest;

  getThreshold(): number;
  setThreshold(value: number): UpdateChallengeRequest;
  hasThreshold(): boolean;
  clearThreshold(): UpdateChallengeRequest;

  getPoints(): number;
  setPoints(value: number): UpdateChallengeRequest;
  hasPoints(): boolean;
  clearPoints(): UpdateChallengeRequest;

  getUnit(): string;
  setUnit(value: string): UpdateChallengeRequest;
  hasUnit(): boolean;
  clearUnit(): UpdateChallengeRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateChallengeRequest.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateChallengeRequest): UpdateChallengeRequest.AsObject;
  static serializeBinaryToWriter(message: UpdateChallengeRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateChallengeRequest;
  static deserializeBinaryFromReader(message: UpdateChallengeRequest, reader: jspb.BinaryReader): UpdateChallengeRequest;
}

export namespace UpdateChallengeRequest {
  export type AsObject = {
    id: string,
    title?: string,
    description?: string,
    startAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    endAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    category?: ChallengeCategory,
    threshold?: number,
    points?: number,
    unit?: string,
  }

  export enum TitleCase { 
    _TITLE_NOT_SET = 0,
    TITLE = 2,
  }

  export enum DescriptionCase { 
    _DESCRIPTION_NOT_SET = 0,
    DESCRIPTION = 3,
  }

  export enum StartAtCase { 
    _START_AT_NOT_SET = 0,
    START_AT = 4,
  }

  export enum EndAtCase { 
    _END_AT_NOT_SET = 0,
    END_AT = 5,
  }

  export enum CategoryCase { 
    _CATEGORY_NOT_SET = 0,
    CATEGORY = 6,
  }

  export enum ThresholdCase { 
    _THRESHOLD_NOT_SET = 0,
    THRESHOLD = 7,
  }

  export enum PointsCase { 
    _POINTS_NOT_SET = 0,
    POINTS = 8,
  }

  export enum UnitCase { 
    _UNIT_NOT_SET = 0,
    UNIT = 9,
  }
}

export class UpdateChallengeResponse extends jspb.Message {
  getId(): string;
  setId(value: string): UpdateChallengeResponse;

  getTitle(): string;
  setTitle(value: string): UpdateChallengeResponse;

  getDescription(): string;
  setDescription(value: string): UpdateChallengeResponse;

  getStartAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setStartAt(value?: google_protobuf_timestamp_pb.Timestamp): UpdateChallengeResponse;
  hasStartAt(): boolean;
  clearStartAt(): UpdateChallengeResponse;

  getEndAt(): google_protobuf_timestamp_pb.Timestamp | undefined;
  setEndAt(value?: google_protobuf_timestamp_pb.Timestamp): UpdateChallengeResponse;
  hasEndAt(): boolean;
  clearEndAt(): UpdateChallengeResponse;

  getCategory(): ChallengeCategory;
  setCategory(value: ChallengeCategory): UpdateChallengeResponse;

  getType(): ChallengeType;
  setType(value: ChallengeType): UpdateChallengeResponse;

  getThreshold(): number;
  setThreshold(value: number): UpdateChallengeResponse;

  getPoints(): number;
  setPoints(value: number): UpdateChallengeResponse;

  getUnit(): string;
  setUnit(value: string): UpdateChallengeResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): UpdateChallengeResponse.AsObject;
  static toObject(includeInstance: boolean, msg: UpdateChallengeResponse): UpdateChallengeResponse.AsObject;
  static serializeBinaryToWriter(message: UpdateChallengeResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): UpdateChallengeResponse;
  static deserializeBinaryFromReader(message: UpdateChallengeResponse, reader: jspb.BinaryReader): UpdateChallengeResponse;
}

export namespace UpdateChallengeResponse {
  export type AsObject = {
    id: string,
    title: string,
    description: string,
    startAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    endAt?: google_protobuf_timestamp_pb.Timestamp.AsObject,
    category: ChallengeCategory,
    type: ChallengeType,
    threshold: number,
    points: number,
    unit: string,
  }
}

export enum ChallengeType { 
  CHALLENGE_TYPE_UNSPECIFIED = 0,
  CHALLENGE_TYPE_DAILY = 1,
  CHALLENGE_TYPE_QUEST = 2,
}
export enum ChallengeCategory { 
  CHALLENGE_CATEGORY_UNSPECIFIED = 0,
  CHALLENGE_CATEGORY_FOOD = 1,
  CHALLENGE_CATEGORY_FITNESS = 2,
}
