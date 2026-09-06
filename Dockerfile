FROM golang:latest
RUN apt-get update && apt-get install -y --no-install-recommends git python3 python3-pip python3-venv && rm -rf /var/lib/apt/lists/*
RUN python3 -m venv /opt/aider-venv && /opt/aider-venv/bin/pip install --no-cache-dir --upgrade pip setuptools wheel && /opt/aider-venv/bin/pip install --no-cache-dir aider-chat
ENV PATH="/opt/aider-venv/bin:${PATH}"
RUN git config --global --add safe.directory /workspace
COPY . /workspace
WORKDIR /workspace
