FROM golang:1.8

ENV PROXY socks5://127.0.0.1:6513

COPY start.sh /

RUN apk add --no-cache bash git && \
    go get github.com/ayanamist/gdns-go && \
    cd $GOPATH/src/github.com/ayanamist/gdns-go/ && \
    go build

ENTRYPOINT ["/start.sh"]