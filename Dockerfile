FROM node:10-alpine

USER root

ARG VERSION=3.2.2

LABEL version=$VERSION

VOLUME ["/gitbook"]

WORKDIR /gitbook

RUN npm install -g npm &&\
    npm install -g gitbook-cli && \
    gitbook fetch ${VERSION} && \
    npm cache clear --force && \
    rm -rf /tmp/* && \
    sed -i.bak 's/confirm: true/confirm: false/g' \
    /root/.gitbook/versions/${VERSION}/lib/output/website/copyPluginAssets.js

EXPOSE 4000

CMD ["/usr/local/bin/gitbook", "--help"]
