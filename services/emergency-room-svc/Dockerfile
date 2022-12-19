FROM golang:1.19 AS builder

WORKDIR /app
COPY . /app

ARG VERSION
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-X main.Version=${VERSION}" -a -o app .

FROM alpine AS production

WORKDIR /app

COPY --from=builder /app/app .
RUN chmod +x app

ENV PORT 80
ENV MODE production
ENV LOG_LEVEL info
ENV POSTGRES_PORT 5432

EXPOSE 80

CMD ["./app"]

