FROM golang:alpine

RUN apk add --no-cache git openssl openssh-client \
    && go get -u github.com/kardianos/govendor

ENTRYPOINT ["govendor"]
