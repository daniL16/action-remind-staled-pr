FROM alpine:3.10

RUN apk add --no-cache bash curl jq
RUN apk add --update coreutils && rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh
ADD src /src

ENTRYPOINT ["/entrypoint.sh"]
