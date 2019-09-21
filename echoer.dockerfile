FROM node

COPY protobuf/ /usr/src/app/protobuf/
COPY echoer/ /usr/src/app/echoer/

WORKDIR /usr/src/app/echoer

RUN yarn install --frozen-lockfile

ENV SERVICE_PORT=50051
ENV SERVICE_HOST=0.0.0.0

EXPOSE 50051

CMD ["node", "index.js"]
