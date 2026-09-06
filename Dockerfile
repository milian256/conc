FROM golang:latest
RUN apt-get update && apt-get install -y --no-install-recommends git python3 python3-pip && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir --break-system-packages aider-chat
RUN git config --global --add safe.directory /workspace
COPY . /workspace
WORKDIR /workspace
