import * as grpcWeb from 'grpc-web';

import * as services_tasks_svc_v1_patient_svc_pb from '../../../services/tasks_svc/v1/patient_svc_pb'; // proto import: "services/tasks_svc/v1/patient_svc.proto"


export class PatientServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPatient(
    request: services_tasks_svc_v1_patient_svc_pb.CreatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.CreatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.CreatePatientResponse>;

  getPatient(
    request: services_tasks_svc_v1_patient_svc_pb.GetPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.GetPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.GetPatientResponse>;

  getRecentPatients(
    request: services_tasks_svc_v1_patient_svc_pb.GetRecentPatientsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.GetRecentPatientsResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.GetRecentPatientsResponse>;

  updatePatient(
    request: services_tasks_svc_v1_patient_svc_pb.UpdatePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.UpdatePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.UpdatePatientResponse>;

  assignBed(
    request: services_tasks_svc_v1_patient_svc_pb.AssignBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.AssignBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.AssignBedResponse>;

  unassignBed(
    request: services_tasks_svc_v1_patient_svc_pb.UnassignBedRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.UnassignBedResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.UnassignBedResponse>;

  dischargePatient(
    request: services_tasks_svc_v1_patient_svc_pb.DischargePatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.DischargePatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.DischargePatientResponse>;

  readmitPatient(
    request: services_tasks_svc_v1_patient_svc_pb.ReadmitPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_patient_svc_pb.ReadmitPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_patient_svc_pb.ReadmitPatientResponse>;

}

export class PatientServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPatient(
    request: services_tasks_svc_v1_patient_svc_pb.CreatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.CreatePatientResponse>;

  getPatient(
    request: services_tasks_svc_v1_patient_svc_pb.GetPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.GetPatientResponse>;

  getRecentPatients(
    request: services_tasks_svc_v1_patient_svc_pb.GetRecentPatientsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.GetRecentPatientsResponse>;

  updatePatient(
    request: services_tasks_svc_v1_patient_svc_pb.UpdatePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.UpdatePatientResponse>;

  assignBed(
    request: services_tasks_svc_v1_patient_svc_pb.AssignBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.AssignBedResponse>;

  unassignBed(
    request: services_tasks_svc_v1_patient_svc_pb.UnassignBedRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.UnassignBedResponse>;

  dischargePatient(
    request: services_tasks_svc_v1_patient_svc_pb.DischargePatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.DischargePatientResponse>;

  readmitPatient(
    request: services_tasks_svc_v1_patient_svc_pb.ReadmitPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_patient_svc_pb.ReadmitPatientResponse>;

}

