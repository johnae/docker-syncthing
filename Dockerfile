FROM debian:jessie

RUN apt-get update && apt-get -y install wget

VOLUME ["/Sync"]
VOLUME ["/Config"]
VOLUME ["/syncthing"]
WORKDIR /Sync

EXPOSE 8080 22000
ADD start /start
ADD node_id /node_id
RUN chmod 0755 /start /node_id
CMD ["/start"]