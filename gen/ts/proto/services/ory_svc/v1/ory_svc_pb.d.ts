import * as jspb from 'google-protobuf'



export class AfterRegistrationWebhookPayload extends jspb.Message {
  getUserId(): string;
  setUserId(value: string): AfterRegistrationWebhookPayload;

  getEmail(): string;
  setEmail(value: string): AfterRegistrationWebhookPayload;

  getNickname(): string;
  setNickname(value: string): AfterRegistrationWebhookPayload;

  getName(): string;
  setName(value: string): AfterRegistrationWebhookPayload;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AfterRegistrationWebhookPayload.AsObject;
  static toObject(includeInstance: boolean, msg: AfterRegistrationWebhookPayload): AfterRegistrationWebhookPayload.AsObject;
  static serializeBinaryToWriter(message: AfterRegistrationWebhookPayload, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AfterRegistrationWebhookPayload;
  static deserializeBinaryFromReader(message: AfterRegistrationWebhookPayload, reader: jspb.BinaryReader): AfterRegistrationWebhookPayload;
}

export namespace AfterRegistrationWebhookPayload {
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

