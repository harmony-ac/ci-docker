FROM node:10-alpine
RUN apk add \
      git curl jq \
      maven openjdk8 \
      chromium chromium-chromedriver \
      xvfb
COPY main.js /harmony-ci/main.js
ENTRYPOINT /harmony-ci/main.js
