podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-17-graalvm-ee -f java-17-graalvm-ee.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-8-graalvm-ee -f java-8-graalvm-ee.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-17-graalvm -f java-17-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-21-graalvm -f java-21-graalvm.Dockerfile .