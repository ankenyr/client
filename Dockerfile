ARG TARGETPLATFORM
FROM python@sha256:4718a47de1298c890b835bd5f4978acee04ba90f17c3395ee3d5e06920b63a26

LABEL tech.invariant.client.version="${INVARIANT_VERSION}"
LABEL python_version="${PYTHON_VERSION}"

LABEL org.opencontainers.image.description="CLI for Invariant – run, login, etc."
LABEL org.opencontainers.image.documentation="https://github.com/InvariantTech/client/blob/main/CONTAINER_README.md"
LABEL org.opencontainers.image.base.name="python"
LABEL org.opencontainers.image.base.digest="sha256:4718a47de1298c890b835bd5f4978acee04ba90f17c3395ee3d5e06920b63a26"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL org.opencontainers.image.revision="${VCS_REF}"
LABEL org.opencontainers.image.version="${INVARIANT_VERSION}"

ARG INVARIANT_VERSION
ARG PYTHON_VERSION
ARG BUILD_DATE
ARG VCS_REF



WORKDIR /data

RUN pip3 install invariant-client

ENTRYPOINT ["invariant"]
