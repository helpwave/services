from concurrent import futures
import time

import grpc
import db_pb2
import db_pb2_grpc



class DBServicer(db_pb2_grpc.DBServicer):
    def __init__(self):
        self.db = {}

    def Set(self, request, context):
        self.db[request.key] = request.value
        return db_pb2.Response(value=self.db[request.key])

    def Get(self, request, context):
        return db_pb2.Response(value=self.db[request.key])

    def Delete(self, request, context):
        del self.db[request.key]
        return db_pb2.Response(value=self.db[request.key])


def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    db_pb2_grpc.add_DBServicer_to_server(DBServicer(), server)
    server.add_insecure_port('[::]:50051')
    server.start()
    try:
        while True:
            time.sleep(60 * 60 * 24)
    except KeyboardInterrupt:
        server.stop(0)


if __name__ == '__main__':
    serve()
