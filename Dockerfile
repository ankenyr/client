FROM --platform=$TARGETPLATFORM python:3.12-slim
LABEL org.opencontainers.image.description="CLI for Invariant – run, login, etc."
LABEL org.opencontainers.image.documentation="https://github.com/InvariantTech/client/blob/main/CONTAINER_README.md"
ARG INVARIANT_VERSION
ARG PYTHON_VERSION

LABEL invariant_client_version="${INVARIANT_VERSION}"
LABEL python_version="${PYTHON_VERSION}"

WORKDIR /data

RUN pip3 install invariant-client

ENTRYPOINT ["invariant"]

