## Dev
```bash
python3 -m grpc_tools.protoc -I proto/services/impulse_svc/v1 --python_out=services/impulse_svc/impulse --grpc_python_out=services/impulse_svc/impulse proto/services/impulse_svc/v1/impulse_svc.proto
```

To start sync 
```bash
python -m uvicorn impulse_svc.asgi:application
```