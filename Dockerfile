FROM alpine:3.19

ARG VERSION

EXPOSE 5201/udp 5201/tcp

RUN apk --no-cache add iperf3=$VERSION

ENTRYPOINT ["iperf3"]

CMD ["--server"]