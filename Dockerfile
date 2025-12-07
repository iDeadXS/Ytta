FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install only the requested packages
RUN apt-get update && apt-get install -y \
    python3 \
    cpio \
    bc \
    flex \
    && apt-get clean

USER vscode
