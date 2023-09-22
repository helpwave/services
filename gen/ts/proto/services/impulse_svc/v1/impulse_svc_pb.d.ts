import * as jspb from 'google-protobuf'



export class CreateUserRequest extends jspb.Message {
  getUsername(): string;
  setUsername(value: string): CreateUserRequest;

  getGender(): string;
  setGender(value: string): CreateUserRequest;

  getBirthday(): string;
  setBirthday(value: string): CreateUserRequest;

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
    gender: string,
    birthday: string,
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

  getGender(): string;
  setGender(value: string): UpdateUserRequest;
  hasGender(): boolean;
  clearGender(): UpdateUserRequest;

  getBirthday(): string;
  setBirthday(value: string): UpdateUserRequest;
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
    gender?: string,
    birthday?: string,
    pal?: number,
  }

  export enum GenderCase { 
    _GENDER_NOT_SET = 0,
    GENDER = 2,
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

  getGender(): string;
  setGender(value: string): UpdateUserResponse;

  getBirthday(): string;
  setBirthday(value: string): UpdateUserResponse;

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
    gender: string,
    birthday: string,
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

  getDoneAt(): string;
  setDoneAt(value: string): TrackChallengeRequest;

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
    doneAt: string,
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

export class GetActiveChallengesRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetActiveChallengesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetActiveChallengesRequest): GetActiveChallengesRequest.AsObject;
  static serializeBinaryToWriter(message: GetActiveChallengesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetActiveChallengesRequest;
  static deserializeBinaryFromReader(message: GetActiveChallengesRequest, reader: jspb.BinaryReader): GetActiveChallengesRequest;
}

export namespace GetActiveChallengesRequest {
  export type AsObject = {
  }
}

export class GetActiveChallengesResponse extends jspb.Message {
  getChallengesList(): Array<GetActiveChallengesResponse.Challenge>;
  setChallengesList(value: Array<GetActiveChallengesResponse.Challenge>): GetActiveChallengesResponse;
  clearChallengesList(): GetActiveChallengesResponse;
  addChallenges(value?: GetActiveChallengesResponse.Challenge, index?: number): GetActiveChallengesResponse.Challenge;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetActiveChallengesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetActiveChallengesResponse): GetActiveChallengesResponse.AsObject;
  static serializeBinaryToWriter(message: GetActiveChallengesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetActiveChallengesResponse;
  static deserializeBinaryFromReader(message: GetActiveChallengesResponse, reader: jspb.BinaryReader): GetActiveChallengesResponse;
}

export namespace GetActiveChallengesResponse {
  export type AsObject = {
    challengesList: Array<GetActiveChallengesResponse.Challenge.AsObject>,
  }

  export class Challenge extends jspb.Message {
    getId(): string;
    setId(value: string): Challenge;

    getTitle(): string;
    setTitle(value: string): Challenge;

    getDescription(): string;
    setDescription(value: string): Challenge;

    getStartAt(): string;
    setStartAt(value: string): Challenge;

    getEndAt(): string;
    setEndAt(value: string): Challenge;

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
      startAt: string,
      endAt: string,
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

  getStartAt(): string;
  setStartAt(value: string): UpdateChallengeRequest;
  hasStartAt(): boolean;
  clearStartAt(): UpdateChallengeRequest;

  getEndAt(): string;
  setEndAt(value: string): UpdateChallengeRequest;
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
    startAt?: string,
    endAt?: string,
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

  getStartAt(): string;
  setStartAt(value: string): UpdateChallengeResponse;

  getEndAt(): string;
  setEndAt(value: string): UpdateChallengeResponse;

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
    startAt: string,
    endAt: string,
    category: ChallengeCategory,
    type: ChallengeType,
    threshold: number,
    points: number,
    unit: string,
  }
}

export class GetScoreRequest extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): GetScoreRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetScoreRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetScoreRequest): GetScoreRequest.AsObject;
  static serializeBinaryToWriter(message: GetScoreRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetScoreRequest;
  static deserializeBinaryFromReader(message: GetScoreRequest, reader: jspb.BinaryReader): GetScoreRequest;
}

export namespace GetScoreRequest {
  export type AsObject = {
    userId: string,
  }
}

export class GetScoreResponse extends jspb.Message {
  getScore(): number;
  setScore(value: number): GetScoreResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetScoreResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetScoreResponse): GetScoreResponse.AsObject;
  static serializeBinaryToWriter(message: GetScoreResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetScoreResponse;
  static deserializeBinaryFromReader(message: GetScoreResponse, reader: jspb.BinaryReader): GetScoreResponse;
}

export namespace GetScoreResponse {
  export type AsObject = {
    score: number,
  }
}

export class GetRewardsRequest extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): GetRewardsRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRewardsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetRewardsRequest): GetRewardsRequest.AsObject;
  static serializeBinaryToWriter(message: GetRewardsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRewardsRequest;
  static deserializeBinaryFromReader(message: GetRewardsRequest, reader: jspb.BinaryReader): GetRewardsRequest;
}

export namespace GetRewardsRequest {
  export type AsObject = {
    userId: string,
  }
}

export class GetRewardsResponse extends jspb.Message {
  getRewardsList(): Array<GetRewardsResponse.Reward>;
  setRewardsList(value: Array<GetRewardsResponse.Reward>): GetRewardsResponse;
  clearRewardsList(): GetRewardsResponse;
  addRewards(value?: GetRewardsResponse.Reward, index?: number): GetRewardsResponse.Reward;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetRewardsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetRewardsResponse): GetRewardsResponse.AsObject;
  static serializeBinaryToWriter(message: GetRewardsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetRewardsResponse;
  static deserializeBinaryFromReader(message: GetRewardsResponse, reader: jspb.BinaryReader): GetRewardsResponse;
}

export namespace GetRewardsResponse {
  export type AsObject = {
    rewardsList: Array<GetRewardsResponse.Reward.AsObject>,
  }

  export class Reward extends jspb.Message {
    getId(): string;
    setId(value: string): Reward;

    getTitle(): string;
    setTitle(value: string): Reward;

    getDescription(): string;
    setDescription(value: string): Reward;

    getPoints(): number;
    setPoints(value: number): Reward;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Reward.AsObject;
    static toObject(includeInstance: boolean, msg: Reward): Reward.AsObject;
    static serializeBinaryToWriter(message: Reward, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Reward;
    static deserializeBinaryFromReader(message: Reward, reader: jspb.BinaryReader): Reward;
  }

  export namespace Reward {
    export type AsObject = {
      id: string,
      title: string,
      description: string,
      points: number,
    }
  }

}

export class GetAllRewardsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllRewardsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllRewardsRequest): GetAllRewardsRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllRewardsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllRewardsRequest;
  static deserializeBinaryFromReader(message: GetAllRewardsRequest, reader: jspb.BinaryReader): GetAllRewardsRequest;
}

export namespace GetAllRewardsRequest {
  export type AsObject = {
  }
}

export class GetAllRewardsResponse extends jspb.Message {
  getRewardsList(): Array<GetAllRewardsResponse.Reward>;
  setRewardsList(value: Array<GetAllRewardsResponse.Reward>): GetAllRewardsResponse;
  clearRewardsList(): GetAllRewardsResponse;
  addRewards(value?: GetAllRewardsResponse.Reward, index?: number): GetAllRewardsResponse.Reward;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllRewardsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllRewardsResponse): GetAllRewardsResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllRewardsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllRewardsResponse;
  static deserializeBinaryFromReader(message: GetAllRewardsResponse, reader: jspb.BinaryReader): GetAllRewardsResponse;
}

export namespace GetAllRewardsResponse {
  export type AsObject = {
    rewardsList: Array<GetAllRewardsResponse.Reward.AsObject>,
  }

  export class Reward extends jspb.Message {
    getId(): string;
    setId(value: string): Reward;

    getTitle(): string;
    setTitle(value: string): Reward;

    getDescription(): string;
    setDescription(value: string): Reward;

    getPoints(): number;
    setPoints(value: number): Reward;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Reward.AsObject;
    static toObject(includeInstance: boolean, msg: Reward): Reward.AsObject;
    static serializeBinaryToWriter(message: Reward, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Reward;
    static deserializeBinaryFromReader(message: Reward, reader: jspb.BinaryReader): Reward;
  }

  export namespace Reward {
    export type AsObject = {
      id: string,
      title: string,
      description: string,
      points: number,
    }
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
