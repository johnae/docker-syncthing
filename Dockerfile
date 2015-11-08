FROM alpine:edge

RUN apk add --update bash wget tar gzip openssl
RUN wget --no-check-certificate https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk
RUN apk add --allow-untrusted glibc-2.21-r2.apk

VOLUME ["/Sync"]
VOLUME ["/Config"]
VOLUME ["/syncthing"]
WORKDIR /Sync

EXPOSE 8080 22000
ADD start /start
ADD node_id /node_id
RUN chmod 0755 /start /node_id
CMD ["/start"]
