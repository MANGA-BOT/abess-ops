FROM alpine:latest

RUN apk add --no-cache curl ca-certificates

CMD ["sh", "-c", "echo ABESS-OPS Docker fonctionne && sleep infinity"]
