ARG TARGETPLATFORM
FROM --platform=$TARGETPLATFORM python@sha256:4718a47de1298c890b835bd5f4978acee04ba90f17c3395ee3d5e06920b63a26
LABEL org.opencontainers.image.description="CLI for Invariant – run, login, etc."
LABEL org.opencontainers.image.documentation="https://github.com/InvariantTech/client/blob/main/CONTAINER_README.md"
LABEL org.opencontainers.image.base.name="python"
LABEL org.opencontainers.image.base.digest="sha256:4718a47de1298c890b835bd5f4978acee04ba90f17c3395ee3d5e06920b63a26"
ARG INVARIANT_VERSION
ARG PYTHON_VERSION

LABEL invariant_client_version="${INVARIANT_VERSION}"
LABEL python_version="${PYTHON_VERSION}"

WORKDIR /data

RUN pip3 install invariant-client

ENTRYPOINT ["invariant"]
