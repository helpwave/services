import logging
from concurrent import futures

import grpc
from django.conf import settings

from django_grpc.utils import load_interceptors, add_servicers

logger = logging.getLogger(__name__)


def create_server(max_workers, port, interceptors=None):
    config = getattr(settings, 'GRPCSERVER', dict())
    servicers_list = config.get('servicers', [])  # callbacks to add servicers to the server
    interceptors = load_interceptors(config.get('interceptors', []))
    maximum_concurrent_rpcs = config.get('maximum_concurrent_rpcs', None)
    options = config.get('options', [])
    credentials = config.get('credentials', None)
    is_async = config.get('async', False)


    # create a gRPC server
    if is_async is True:
        server = grpc.aio.server(
            interceptors=interceptors,
            maximum_concurrent_rpcs=maximum_concurrent_rpcs,
            options=options
        )
    else:
        server = grpc.server(
            thread_pool=futures.ThreadPoolExecutor(max_workers=max_workers),
            interceptors=interceptors,
            maximum_concurrent_rpcs=maximum_concurrent_rpcs,
            options=options
        )

    add_servicers(server, servicers_list)

    if credentials is None:
        server.add_insecure_port('0.0.0.0:%s' % port)
    else:
        credential_data = list()
        for credential in credentials:
            # read in key and certificate
            with open(credential.get('private_key'), 'rb') as pp:
                private_key = pp.read()
            with open(credential.get('certificate_chain'), 'rb') as cp:
                certificate_chain = cp.read()

            credential_data.append((private_key, certificate_chain,))

        # create server credentials
        logger.debug("Adding server credentials...")
        server_credentials = grpc.ssl_server_credentials(credential_data)

        # add secure port with credentials
        server.add_secure_port('[::]:%s' % port, server_credentials)

    return server
