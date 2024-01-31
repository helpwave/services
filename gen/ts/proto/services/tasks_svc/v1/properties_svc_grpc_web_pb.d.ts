import * as grpcWeb from 'grpc-web';

import * as proto_services_tasks_svc_v1_properties_svc_pb from '../../../../proto/services/tasks_svc/v1/properties_svc_pb'; // proto import: "proto/services/tasks_svc/v1/properties_svc.proto"


export class PropertiesServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPropertySet(
    request: proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertySetResponse>;

  updatePropertySet(
    request: proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertySetResponse>;

  deletePropertySet(
    request: proto_services_tasks_svc_v1_properties_svc_pb.DeletePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.DeletePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.DeletePropertySetResponse>;

  createProperty(
    request: proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertyResponse>;

  getProperty(
    request: proto_services_tasks_svc_v1_properties_svc_pb.GetPropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.GetPropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.GetPropertyResponse>;

  getProperties(
    request: proto_services_tasks_svc_v1_properties_svc_pb.GetPropertiesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.GetPropertiesResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.GetPropertiesResponse>;

  updateProperty(
    request: proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertyResponse>;

  attachPropertyValue(
    request: proto_services_tasks_svc_v1_properties_svc_pb.AttachPropertyValueRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.AttachPropertyValueResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.AttachPropertyValueResponse>;

  getAttachedPropertyValues(
    request: proto_services_tasks_svc_v1_properties_svc_pb.GetAttachedPropertyValuesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_properties_svc_pb.GetAttachedPropertyValuesResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_properties_svc_pb.GetAttachedPropertyValuesResponse>;

}

export class PropertiesServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPropertySet(
    request: proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertySetResponse>;

  updatePropertySet(
    request: proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertySetResponse>;

  deletePropertySet(
    request: proto_services_tasks_svc_v1_properties_svc_pb.DeletePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.DeletePropertySetResponse>;

  createProperty(
    request: proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.CreatePropertyResponse>;

  getProperty(
    request: proto_services_tasks_svc_v1_properties_svc_pb.GetPropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.GetPropertyResponse>;

  getProperties(
    request: proto_services_tasks_svc_v1_properties_svc_pb.GetPropertiesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.GetPropertiesResponse>;

  updateProperty(
    request: proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.UpdatePropertyResponse>;

  attachPropertyValue(
    request: proto_services_tasks_svc_v1_properties_svc_pb.AttachPropertyValueRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.AttachPropertyValueResponse>;

  getAttachedPropertyValues(
    request: proto_services_tasks_svc_v1_properties_svc_pb.GetAttachedPropertyValuesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_properties_svc_pb.GetAttachedPropertyValuesResponse>;

}

