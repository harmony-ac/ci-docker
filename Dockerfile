FROM node:10-alpine
RUN apk add \
      git curl jq \
      maven openjdk8 \
      chromium chromium-chromedriver \
      xvfb
COPY harmony-ci /usr/bin/harmony-ci
COPY optparse.bash /usr/bin/optparse.bash
CMD /usr/bin/harmony-ci
