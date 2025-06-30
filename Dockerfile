FROM rust:latest

# Node.js / NPM
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# PNPM
RUN npm install -g pnpm

# Task
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
COPY Taskfile.yml /home/node/Taskfile.yml

# Setup
RUN cargo install wasm-pack

WORKDIR /app
