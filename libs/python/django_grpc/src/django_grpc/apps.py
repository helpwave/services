import asyncio

from django.apps import AppConfig


class DjangoGrpcConfig(AppConfig):
    name = 'django_grpc'

    def ready(self):
        super().ready()

        from django_grpc.grpc_server import serve

        loop = asyncio.get_event_loop()
        loop.create_task(serve())
