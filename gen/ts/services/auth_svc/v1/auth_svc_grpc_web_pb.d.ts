import * as grpcWeb from 'grpc-web';

import * as services_auth_svc_v1_auth_svc_pb from '../../../services/auth_svc/v1/auth_svc_pb'; // proto import: "services/auth_svc/v1/auth_svc.proto"


export class AuthServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  prelimAuthRequest(
    request: services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestResponse) => void
  ): grpcWeb.ClientReadableStream<services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestResponse>;

}

export class AuthServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  prelimAuthRequest(
    request: services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_auth_svc_v1_auth_svc_pb.PrelimAuthRequestResponse>;

}

