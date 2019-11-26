FROM alpine:latest

LABEL maintainer="Alex Gonzalez <alexg@balena.io>"

RUN apk --no-cache add nethogs vnstat net-tools bmon tcpdump

ENV BWC_BMON_OUTPUT "/data/bmon.out"
ENV BWC_BMON_INTERFACES "eth*,wlan*"
ENV BWC_BMON_DURATION 600

COPY entrypoint.sh /bin/entrypoint.sh
CMD ["/bin/sh", "-c", "entrypoint.sh ${BWC_BMON_OUTPUT} ${BWC_BMON_INTERFACES} ${BWC_BMON_DURATION}"]
