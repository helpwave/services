import * as grpcWeb from 'grpc-web';

import * as services_tasks_svc_v1_bed_svc_pb from '../../../services/tasks_svc/v1/bed_svc_pb'; // proto import: "services/tasks_svc/v1/bed_svc.proto"


export class BedServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createBed(
    request: services_tasks_svc_v1_bed_svc_pb.CreateBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.CreateBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.CreateBedResponse>;

  bulkCreateBeds(
    request: services_tasks_svc_v1_bed_svc_pb.BulkCreateBedsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.BulkCreateBedsResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.BulkCreateBedsResponse>;

  getBed(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.GetBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.GetBedResponse>;

  getBedByPatient(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedByPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.GetBedByPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.GetBedByPatientResponse>;

  getBeds(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.GetBedsResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.GetBedsResponse>;

  getBedsByRoom(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedsByRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.GetBedsByRoomResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.GetBedsByRoomResponse>;

  updateBed(
    request: services_tasks_svc_v1_bed_svc_pb.UpdateBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.UpdateBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.UpdateBedResponse>;

  deleteBed(
    request: services_tasks_svc_v1_bed_svc_pb.DeleteBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_bed_svc_pb.DeleteBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_bed_svc_pb.DeleteBedResponse>;

}

export class BedServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createBed(
    request: services_tasks_svc_v1_bed_svc_pb.CreateBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.CreateBedResponse>;

  bulkCreateBeds(
    request: services_tasks_svc_v1_bed_svc_pb.BulkCreateBedsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.BulkCreateBedsResponse>;

  getBed(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.GetBedResponse>;

  getBedByPatient(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedByPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.GetBedByPatientResponse>;

  getBeds(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.GetBedsResponse>;

  getBedsByRoom(
    request: services_tasks_svc_v1_bed_svc_pb.GetBedsByRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.GetBedsByRoomResponse>;

  updateBed(
    request: services_tasks_svc_v1_bed_svc_pb.UpdateBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.UpdateBedResponse>;

  deleteBed(
    request: services_tasks_svc_v1_bed_svc_pb.DeleteBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_bed_svc_pb.DeleteBedResponse>;

}

