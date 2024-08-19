import * as grpcWeb from 'grpc-web';

import * as services_task_svc_v1_patient_svc_pb from '../../../services/task_svc/v1/patient_svc_pb'; // proto import: "services/task_svc/v1/patient_svc.proto"


export class PatientServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPatient(
    request: services_task_svc_v1_patient_svc_pb.CreatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.CreatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.CreatePatientResponse>;

  getPatient(
    request: services_task_svc_v1_patient_svc_pb.GetPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetPatientResponse>;

  getPatientByBed(
    request: services_task_svc_v1_patient_svc_pb.GetPatientByBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetPatientByBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetPatientByBedResponse>;

  getPatientsByWard(
    request: services_task_svc_v1_patient_svc_pb.GetPatientsByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetPatientsByWardResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetPatientsByWardResponse>;

  getPatientAssignmentByWard(
    request: services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardResponse>;

  getRecentPatients(
    request: services_task_svc_v1_patient_svc_pb.GetRecentPatientsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetRecentPatientsResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetRecentPatientsResponse>;

  updatePatient(
    request: services_task_svc_v1_patient_svc_pb.UpdatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.UpdatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.UpdatePatientResponse>;

  assignBed(
    request: services_task_svc_v1_patient_svc_pb.AssignBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.AssignBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.AssignBedResponse>;

  unassignBed(
    request: services_task_svc_v1_patient_svc_pb.UnassignBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.UnassignBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.UnassignBedResponse>;

  dischargePatient(
    request: services_task_svc_v1_patient_svc_pb.DischargePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.DischargePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.DischargePatientResponse>;

  getPatientDetails(
    request: services_task_svc_v1_patient_svc_pb.GetPatientDetailsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetPatientDetailsResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetPatientDetailsResponse>;

  getPatientList(
    request: services_task_svc_v1_patient_svc_pb.GetPatientListRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.GetPatientListResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.GetPatientListResponse>;

  deletePatient(
    request: services_task_svc_v1_patient_svc_pb.DeletePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.DeletePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.DeletePatientResponse>;

  readmitPatient(
    request: services_task_svc_v1_patient_svc_pb.ReadmitPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_patient_svc_pb.ReadmitPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_patient_svc_pb.ReadmitPatientResponse>;

}

export class PatientServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPatient(
    request: services_task_svc_v1_patient_svc_pb.CreatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.CreatePatientResponse>;

  getPatient(
    request: services_task_svc_v1_patient_svc_pb.GetPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetPatientResponse>;

  getPatientByBed(
    request: services_task_svc_v1_patient_svc_pb.GetPatientByBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetPatientByBedResponse>;

  getPatientsByWard(
    request: services_task_svc_v1_patient_svc_pb.GetPatientsByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetPatientsByWardResponse>;

  getPatientAssignmentByWard(
    request: services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetPatientAssignmentByWardResponse>;

  getRecentPatients(
    request: services_task_svc_v1_patient_svc_pb.GetRecentPatientsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetRecentPatientsResponse>;

  updatePatient(
    request: services_task_svc_v1_patient_svc_pb.UpdatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.UpdatePatientResponse>;

  assignBed(
    request: services_task_svc_v1_patient_svc_pb.AssignBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.AssignBedResponse>;

  unassignBed(
    request: services_task_svc_v1_patient_svc_pb.UnassignBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.UnassignBedResponse>;

  dischargePatient(
    request: services_task_svc_v1_patient_svc_pb.DischargePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.DischargePatientResponse>;

  getPatientDetails(
    request: services_task_svc_v1_patient_svc_pb.GetPatientDetailsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetPatientDetailsResponse>;

  getPatientList(
    request: services_task_svc_v1_patient_svc_pb.GetPatientListRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.GetPatientListResponse>;

  deletePatient(
    request: services_task_svc_v1_patient_svc_pb.DeletePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.DeletePatientResponse>;

  readmitPatient(
    request: services_task_svc_v1_patient_svc_pb.ReadmitPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_patient_svc_pb.ReadmitPatientResponse>;

}

