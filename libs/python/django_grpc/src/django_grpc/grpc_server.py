import logging

import grpc

from django.utils.module_loading import import_string
from django.conf import settings

logger = logging.getLogger(__name__)


async def serve(port: int = 50051):
    config = getattr(settings, 'GRPCSERVER', dict())
    interceptors = [
        import_string(interceptor_path)()
        for interceptor_path in config.get('interceptors', [])
    ]

    maximum_concurrent_rpcs = config.get('maximum_concurrent_rpcs', None)
    options = config.get('options', [])
    credentials = config.get('credentials', None)

    server = grpc.aio.server(
        interceptors=interceptors,
        maximum_concurrent_rpcs=maximum_concurrent_rpcs,
        options=options
    )

    for servicer_path in config.get('servicers', []):
        callback_hook = import_string(servicer_path)
        callback_hook(server)

    # TODO Creds
    server.add_insecure_port(f"[::]:{port}")
    logger.info("Starting gRPC server at 127.0.0.1:%s", port)
    await server.start()
    await server.wait_for_termination()

