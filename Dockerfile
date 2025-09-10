FROM node:22-trixie-slim

ARG BROWSER
ENV BROWSER=$BROWSER

RUN npm install -g -D @playwright/test@latest

RUN case "${BROWSER}" in \
    "chromium") \
        DEBIAN_FRONTEND=noninteractive npx playwright install chromium --with-deps; \
        ;; \
    "firefox") \
        DEBIAN_FRONTEND=noninteractive npx playwright install firefox --with-deps; \
        ;; \
    "webkit") \
        DEBIAN_FRONTEND=noninteractive npx playwright install webkit --with-deps; \
        ;; \
    *) \
        DEBIAN_FRONTEND=noninteractive npx playwright install --with-deps; \
        ;; \
    esac;
