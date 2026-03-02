FROM apache/nifi:1.23.2

USER root

RUN apt-get update && apt-get install -y curl wget

# PostgreSQL JDBC Driver
RUN wget https://jdbc.postgresql.org/download/postgresql-42.6.0.jar \
    -P /opt/nifi/nifi-current/lib/

USER nifi

ENV NIFI_WEB_HTTP_PORT=8080

EXPOSE 8080
