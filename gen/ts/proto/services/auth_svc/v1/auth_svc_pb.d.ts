import * as jspb from 'google-protobuf'



export class PrelimAuthRequestRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PrelimAuthRequestRequest.AsObject;
  static toObject(includeInstance: boolean, msg: PrelimAuthRequestRequest): PrelimAuthRequestRequest.AsObject;
  static serializeBinaryToWriter(message: PrelimAuthRequestRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PrelimAuthRequestRequest;
  static deserializeBinaryFromReader(message: PrelimAuthRequestRequest, reader: jspb.BinaryReader): PrelimAuthRequestRequest;
}

export namespace PrelimAuthRequestRequest {
  export type AsObject = {
  }
}

export class PrelimAuthRequestResponse extends jspb.Message {
  getUrl(): string;
  setUrl(value: string): PrelimAuthRequestResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PrelimAuthRequestResponse.AsObject;
  static toObject(includeInstance: boolean, msg: PrelimAuthRequestResponse): PrelimAuthRequestResponse.AsObject;
  static serializeBinaryToWriter(message: PrelimAuthRequestResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PrelimAuthRequestResponse;
  static deserializeBinaryFromReader(message: PrelimAuthRequestResponse, reader: jspb.BinaryReader): PrelimAuthRequestResponse;
}

export namespace PrelimAuthRequestResponse {
  export type AsObject = {
    url: string,
  }
}

export class RefreshTokenRequest extends jspb.Message {
  getRefreshToken(): string;
  setRefreshToken(value: string): RefreshTokenRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RefreshTokenRequest.AsObject;
  static toObject(includeInstance: boolean, msg: RefreshTokenRequest): RefreshTokenRequest.AsObject;
  static serializeBinaryToWriter(message: RefreshTokenRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RefreshTokenRequest;
  static deserializeBinaryFromReader(message: RefreshTokenRequest, reader: jspb.BinaryReader): RefreshTokenRequest;
}

export namespace RefreshTokenRequest {
  export type AsObject = {
    refreshToken: string,
  }
}

export class RefreshTokenResponse extends jspb.Message {
  getAccessToken(): string;
  setAccessToken(value: string): RefreshTokenResponse;

  getRefreshToken(): string;
  setRefreshToken(value: string): RefreshTokenResponse;

  getExp(): number;
  setExp(value: number): RefreshTokenResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RefreshTokenResponse.AsObject;
  static toObject(includeInstance: boolean, msg: RefreshTokenResponse): RefreshTokenResponse.AsObject;
  static serializeBinaryToWriter(message: RefreshTokenResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RefreshTokenResponse;
  static deserializeBinaryFromReader(message: RefreshTokenResponse, reader: jspb.BinaryReader): RefreshTokenResponse;
}

export namespace RefreshTokenResponse {
  export type AsObject = {
    accessToken: string,
    refreshToken: string,
    exp: number,
  }
}

