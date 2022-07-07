FROM ubuntu:jammy

RUN apt update -y
RUN apt install -y dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]
