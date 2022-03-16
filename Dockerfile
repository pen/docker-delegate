FROM debian:jessie-slim AS builder

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends wget

RUN wget --no-check-certificate -O /bin/delegate \
        https://its-more.jp/delegate/ftp/pub/DeleGate/bin/linux2.6/9.9.13/linux2.6-dg9_9_13
RUN chmod 755 /bin/delegate


FROM debian:jessie-slim
LABEL org.opencontainers.image.authors="Abe Masahiro <pen@thcomp.org>" \
    org.opencontainers.image.source="https://github.com/pen/docker-delegate"

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends libssl1.0.0

COPY --from=builder /bin/delegate  /bin/delegate

COPY rc.entry /etc/

ENTRYPOINT ["/etc/rc.entry"]
