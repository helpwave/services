import * as grpcWeb from 'grpc-web';

import * as services_updates_svc_v1_updates_svc_pb from '../../../services/updates_svc/v1/updates_svc_pb'; // proto import: "services/updates_svc/v1/updates_svc.proto"


export class UpdatesServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  receiveUpdates(
    request: services_updates_svc_v1_updates_svc_pb.ReceiveUpdatesRequest,
    metadata?: grpcWeb.Metadata
  ): grpcWeb.ClientReadableStream<services_updates_svc_v1_updates_svc_pb.ReceiveUpdatesResponse>;

}

export class UpdatesServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  receiveUpdates(
    request: services_updates_svc_v1_updates_svc_pb.ReceiveUpdatesRequest,
    metadata?: grpcWeb.Metadata
  ): grpcWeb.ClientReadableStream<services_updates_svc_v1_updates_svc_pb.ReceiveUpdatesResponse>;

}

