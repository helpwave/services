import * as grpcWeb from 'grpc-web';

import * as proto_services_auth_svc_v1_auth_svc_pb from '../../../../proto/services/auth_svc/v1/auth_svc_pb';


export class AuthServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  prelimAuthRequest(
    request: proto_services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestResponse>;

}

export class AuthServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  prelimAuthRequest(
    request: proto_services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestResponse>;

}

