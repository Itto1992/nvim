FROM alpine:latest
WORKDIR /root

COPY setup.sh setup.sh
COPY .config .config
RUN sh setup.sh
