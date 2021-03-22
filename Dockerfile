FROM node:14.16.0-alpine3.11
ENV PATH="$PATH:/npm/node_modules/.bin"
COPY ./package.json ./package-lock.json /npm/
RUN apk --update --no-cache add \
    bash \
    curl \
    git \
    git-lfs \
    openssh \
    && (cd /npm && npm ci)
CMD [ "semantic-release" ]