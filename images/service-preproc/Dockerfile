FROM golang:alpine as builder

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    go install github.com/favadi/protoc-go-inject-tag@v1.4.0

FROM alpine

RUN apk add protoc
COPY --from=builder /go/bin/protoc-* /bin/
COPY run.sh run.sh

CMD ["sh", "run.sh"]
