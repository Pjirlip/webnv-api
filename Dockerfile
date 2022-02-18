FROM node:16
LABEL maintainer="Philipp Dippel <dev@pjirlip.eu>"
LABEL org.opencontainers.image.source=https://github.com/Pjirlip/webnv-api

ENV NODE_ENV production

WORKDIR /server

COPY --chown=node:node package*.json /app

RUN npm ci

COPY --chown=node:node . .

RUN npm build

CMD ["npm", "run" "start"]