import * as jspb from 'google-protobuf'



export class AfterRegistrationWebhookPayloadRequest extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): AfterRegistrationWebhookPayloadRequest;

  getEmail(): string;
  setEmail(value: string): AfterRegistrationWebhookPayloadRequest;

  getNickname(): string;
  setNickname(value: string): AfterRegistrationWebhookPayloadRequest;

  getName(): string;
  setName(value: string): AfterRegistrationWebhookPayloadRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AfterRegistrationWebhookPayloadRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AfterRegistrationWebhookPayloadRequest): AfterRegistrationWebhookPayloadRequest.AsObject;
  static serializeBinaryToWriter(message: AfterRegistrationWebhookPayloadRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AfterRegistrationWebhookPayloadRequest;
  static deserializeBinaryFromReader(message: AfterRegistrationWebhookPayloadRequest, reader: jspb.BinaryReader): AfterRegistrationWebhookPayloadRequest;
}

export namespace AfterRegistrationWebhookPayloadRequest {
  export type AsObject = {
    userId: string,
    email: string,
    nickname: string,
    name: string,
  }
}

export class AfterSettingsWebhookPayload extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): AfterSettingsWebhookPayload;

  getEmail(): string;
  setEmail(value: string): AfterSettingsWebhookPayload;

  getNickname(): string;
  setNickname(value: string): AfterSettingsWebhookPayload;

  getName(): string;
  setName(value: string): AfterSettingsWebhookPayload;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AfterSettingsWebhookPayload.AsObject;
  static toObject(includeInstance: boolean, msg: AfterSettingsWebhookPayload): AfterSettingsWebhookPayload.AsObject;
  static serializeBinaryToWriter(message: AfterSettingsWebhookPayload, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AfterSettingsWebhookPayload;
  static deserializeBinaryFromReader(message: AfterSettingsWebhookPayload, reader: jspb.BinaryReader): AfterSettingsWebhookPayload;
}

export namespace AfterSettingsWebhookPayload {
  export type AsObject = {
    userId: string,
    email: string,
    nickname: string,
    name: string,
  }
}

