FROM python:3.8
RUN apt-get update && apt-get install -y
    openssh-clients \
    ca-certificates \ 
    bash \
    git \
    make \
    curl \
    rsync \ 
    protobuf \
    openssl-devel \
    util-linux \
    && update-ca-trust

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/alersrt/python-ci-builder"
