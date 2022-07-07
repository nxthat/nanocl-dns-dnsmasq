FROM alpine:latest

RUN apk upgrade
RUN apk add dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]
