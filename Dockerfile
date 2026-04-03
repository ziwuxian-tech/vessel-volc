FROM node:20-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g opencode-ai

WORKDIR /workspace

CMD ["/bin/bash"]
