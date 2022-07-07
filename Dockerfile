FROM ubuntu:jammy

RUN apt-get update -y
RUN apt-get install -y dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]
