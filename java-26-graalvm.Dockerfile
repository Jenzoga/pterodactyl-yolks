FROM --platform=$TARGETOS/$TARGETARCH debian:bookworm-slim

LABEL author="Jenzoga" maintainer="jenzoga@celest.live"
LABEL org.opencontainers.image.source="https://github.com/jenzoga/pterodactyl-yolks"
LABEL org.opencontainers.image.licenses=MIT

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    openssl \
    passwd \
    && rm -rf /var/lib/apt/lists/*

RUN set -eux; \
    GRAALVM_URL="$(wget -qO- https://api.github.com/repos/graalvm/oracle-graalvm-ea-builds/releases \
      | grep '"browser_download_url"' \
      | grep -E 'graalvm-jdk-26.*linux-x64_bin\.tar\.gz' \
      | cut -d '"' -f 4 \
      | head -n 1)"; \
    test -n "$GRAALVM_URL"; \
    echo "Using GraalVM: $GRAALVM_URL"; \
    wget -O /tmp/graalvm.tar.gz "$GRAALVM_URL"; \
    mkdir -p /opt/graalvm; \
    tar -xzf /tmp/graalvm.tar.gz --strip-components=1 -C /opt/graalvm; \
    rm /tmp/graalvm.tar.gz

RUN useradd -m -d /home/container container

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
ENV JAVA_HOME=/opt/graalvm
ENV PATH=/opt/graalvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../java-entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]