FROM openjdk:9-jdk-slim as certbuilder
RUN apt-get update && apt-get install --no-install-recommends -y -qq \
    ca-certificates-java
COPY certificates /usr/local/share/ca-certificates/certificates
RUN update-ca-certificates

FROM openjdk:9-jdk-slim
RUN apt-get update && \
    useradd --uid 101 --user-group java --shell /bin/bash --create-home && \
    chmod -R a-w /home/java
USER java
COPY --from=certbuilder /etc/ssl/certs /etc/ssl/certs
WORKDIR /home/java
