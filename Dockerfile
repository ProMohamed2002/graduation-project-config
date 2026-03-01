FROM apache/nifi:1.23.2

USER root

# Install curl 
RUN apt-get update && apt-get install -y curl

USER nifi

ENV NIFI_WEB_HTTP_PORT=8080

EXPOSE 8080
