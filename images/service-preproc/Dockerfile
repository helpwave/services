FROM golang:alpine as builder

RUN go install github.com/favadi/protoc-go-inject-tag@v1.4.0

FROM bufbuild/buf

COPY --from=builder /go/bin/protoc-* /bin/
COPY run.sh run.sh

ENTRYPOINT ["sh", "run.sh"]
