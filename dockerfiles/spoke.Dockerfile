# syntax=docker/dockerfile:1
ARG NODE_VERSION=22.21.1

FROM --platform=linux/amd64 node:${NODE_VERSION}
HEALTHCHECK CMD curl -fk https://localhost:9090 || exit 1
WORKDIR /code
CMD ["./scripts/run-local-reticulum.sh"]
