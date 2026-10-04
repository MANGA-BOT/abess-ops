FROM alpine:latest

RUN apk add --no-cache ca-certificates curl unzip

RUN curl -L https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip -o xray.zip && \
    unzip xray.zip -d /usr/bin && \
    rm xray.zip

COPY config.json /etc/xray/config.json

CMD /usr/bin/xray -c /etc/xray/config.json
