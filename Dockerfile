FROM node:22-trixie-slim

RUN npm install -g -D @playwright/test@latest

RUN DEBIAN_FRONTEND=noninteractive npx playwright install --with-deps

