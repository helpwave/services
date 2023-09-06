import * as grpcWeb from 'grpc-web';

import * as proto_services_task_svc_v1_patient_svc_pb from '../../../../proto/services/task_svc/v1/patient_svc_pb';


export class PatientServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPatient(
    request: proto_services_task_svc_v1_patient_svc_pb.CreatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.CreatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.CreatePatientResponse>;

  getPatient(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.GetPatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.GetPatientResponse>;

  getPatientByBed(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientByBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.GetPatientByBedResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.GetPatientByBedResponse>;

  getPatientsByWard(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientsByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.GetPatientsByWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.GetPatientsByWardResponse>;

  getPatientAssignmentByWard(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardResponse>;

  updatePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.UpdatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.UpdatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.UpdatePatientResponse>;

  assignBed(
    request: proto_services_task_svc_v1_patient_svc_pb.AssignBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.AssignBedResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.AssignBedResponse>;

  unassignBed(
    request: proto_services_task_svc_v1_patient_svc_pb.UnassignBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.UnassignBedResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.UnassignBedResponse>;

  dischargePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.DischargePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.DischargePatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.DischargePatientResponse>;

  getPatientDetails(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientDetailsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.GetPatientDetailsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.GetPatientDetailsResponse>;

  getPatientList(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientListRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.GetPatientListResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.GetPatientListResponse>;

  deletePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.DeletePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.DeletePatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.DeletePatientResponse>;

  reactivatePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.ReactivatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_patient_svc_pb.ReactivatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_patient_svc_pb.ReactivatePatientResponse>;

}

export class PatientServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPatient(
    request: proto_services_task_svc_v1_patient_svc_pb.CreatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.CreatePatientResponse>;

  getPatient(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.GetPatientResponse>;

  getPatientByBed(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientByBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.GetPatientByBedResponse>;

  getPatientsByWard(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientsByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.GetPatientsByWardResponse>;

  getPatientAssignmentByWard(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardResponse>;

  updatePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.UpdatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.UpdatePatientResponse>;

  assignBed(
    request: proto_services_task_svc_v1_patient_svc_pb.AssignBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.AssignBedResponse>;

  unassignBed(
    request: proto_services_task_svc_v1_patient_svc_pb.UnassignBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.UnassignBedResponse>;

  dischargePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.DischargePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.DischargePatientResponse>;

  getPatientDetails(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientDetailsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.GetPatientDetailsResponse>;

  getPatientList(
    request: proto_services_task_svc_v1_patient_svc_pb.GetPatientListRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.GetPatientListResponse>;

  deletePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.DeletePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.DeletePatientResponse>;

  reactivatePatient(
    request: proto_services_task_svc_v1_patient_svc_pb.ReactivatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_patient_svc_pb.ReactivatePatientResponse>;

}

