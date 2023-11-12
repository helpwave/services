import asyncio

from django.apps import AppConfig


class DjangoGrpcConfig(AppConfig):
    name = 'django_grpc'

    def ready(self):
        super().ready()

        from django_grpc.grpc_server import serve
        # loop = asyncio.get_running_loop()
        # loop.run_until_complete(serve())
        asyncio.create_task(serve())
