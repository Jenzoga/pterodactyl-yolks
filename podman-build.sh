podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-17-graalvm-ee -f java-17-graalvm-ee.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-8-graalvm-ee -f java-8-graalvm-ee.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-17-graalvm -f java-17-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-21-graalvm -f java-21-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-22-graalvm -f java-22-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-23-graalvm -f java-23-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-24-graalvm -f java-24-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-25-graalvm -f java-25-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:java-26-graalvm -f java-26-graalvm.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:cl-java17-graalvm-ee -f clearlinux-graalvm8ee.Dockerfile .
podman build --platform=linux/amd64 -t ghcr.io/jenzoga/pterodactyl-yolks:cl-java8-graalvm-ee -f clearlinux-graalvm17ee.Dockerfile .


upload  
podman push ghcr.io/jenzoga/pterodactyl-yolks:java-25-graalvm
