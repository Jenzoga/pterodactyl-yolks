LABEL author="Jenzoga" maintainer="jenzoga@celest.live"
LABEL org.opencontainers.image.source="https://github.com/jenzoga/pterodactyl-yolks"
LABEL org.opencontainers.image.licenses=MIT

FROM clearlinux:latest

# Set version variables
ARG GRAALVM_DIR_NAME=graalvm-ee-java8-*

# Install GraalVM EE manually
COPY ./jdk/graalvm-ee-java8-21.3.14 /opt/
RUN mkdir -p /opt && \
    ln -s /opt/${GRAALVM_DIR_NAME} /opt/graalvm

# Set environment
ENV JAVA_HOME=/opt/graalvm
ENV GRAALVM_HOME=/opt/graalvm
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN useradd -m -d /home/container -s /bin/bash container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container



COPY ./../java-entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]