FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends git curl ca-certificates && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://go.dev/dl/go1.23.4.linux-amd64.tar.gz | tar -C /usr/local -xz
ENV PATH="/usr/local/go/bin:${PATH}"
RUN pip install --no-cache-dir aider-chat
RUN git config --global --add safe.directory /workspace
COPY . /workspace
WORKDIR /workspace
