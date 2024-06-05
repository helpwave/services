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

