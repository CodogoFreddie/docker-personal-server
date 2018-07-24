FROM ubuntu

RUN apt-get update
RUN apt-get install -y gnupg wget gettext-base

RUN echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | tee /etc/apt/sources.list.d/resilio-sync.list
RUN wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y resilio-sync

RUN mkdir -p /etc/resilio-sync /data/Sync
ADD ./config.json /tmp/config.json
ADD sync.btskey /etc/resilio-sync/sync.btskey
RUN envsubst < /tmp/config.json > /etc/resilio-sync/config.json

RUN rslsync --config /etc/resilio-sync/config.json --identity "docker personal server"
RUN rslsync --config /etc/resilio-sync/config.json --license ./sync.btskey
CMD rslsync --config /etc/resilio-sync/config.json --nodaemon
