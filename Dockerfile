ARG HADOLINT_VERSION=v1.17.5-alpine
ARG REVIEWDOG_VERSION=v0.9.17

FROM hadolint/hadolint:${HADOLINT_VERSION}

LABEL maintainer="Fabrizio Bellicano <bellicaf@tcd.ie>" \
    image="linuxbandit/hadolint-reviewdog" \
    repository="https://github.com/linuxbandit/hadolint-reviewdog" \
    vendor="jobtome" \
    description="Hadolint with bash and Review Dog inside." \
    license="MIT"

ADD https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh install.sh

RUN chmod +x install.sh \
      && ./install.sh -b /usr/local/bin/ ${REVIEWDOG_VERSION} \
      && rm install.sh\
      && apk add --no-cache bash

ENTRYPOINT [ "/bin/bash" ]