FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
EXPOSE 9392
COPY build-gvm.sh /build-gvm.sh

RUN bash /build-gvm.sh

COPY scripts/* /

CMD '/start.sh'
