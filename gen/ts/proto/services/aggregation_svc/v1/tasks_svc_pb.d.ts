import * as jspb from 'google-protobuf'



export class GetWardsOverviewRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardsOverviewRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardsOverviewRequest): GetWardsOverviewRequest.AsObject;
  static serializeBinaryToWriter(message: GetWardsOverviewRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardsOverviewRequest;
  static deserializeBinaryFromReader(message: GetWardsOverviewRequest, reader: jspb.BinaryReader): GetWardsOverviewRequest;
}

export namespace GetWardsOverviewRequest {
  export type AsObject = {
  }
}

export class GetWardsOverviewResponse extends jspb.Message {
  getWardsList(): Array<GetWardsOverviewResponse.Ward>;
  setWardsList(value: Array<GetWardsOverviewResponse.Ward>): GetWardsOverviewResponse;
  clearWardsList(): GetWardsOverviewResponse;
  addWards(value?: GetWardsOverviewResponse.Ward, index?: number): GetWardsOverviewResponse.Ward;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetWardsOverviewResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetWardsOverviewResponse): GetWardsOverviewResponse.AsObject;
  static serializeBinaryToWriter(message: GetWardsOverviewResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetWardsOverviewResponse;
  static deserializeBinaryFromReader(message: GetWardsOverviewResponse, reader: jspb.BinaryReader): GetWardsOverviewResponse;
}

export namespace GetWardsOverviewResponse {
  export type AsObject = {
    wardsList: Array<GetWardsOverviewResponse.Ward.AsObject>,
  }

  export class Ward extends jspb.Message {
    getId(): string;
    setId(value: string): Ward;

    getName(): string;
    setName(value: string): Ward;

    getUnscheduled(): number;
    setUnscheduled(value: number): Ward;

    getInprogress(): number;
    setInprogress(value: number): Ward;

    getDone(): number;
    setDone(value: number): Ward;

    getBedCount(): number;
    setBedCount(value: number): Ward;

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
      unscheduled: number,
      inprogress: number,
      done: number,
      bedCount: number,
    }
  }

}

