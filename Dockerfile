FROM golang:1.8.3-alpine

ENV PROXY socks5://127.0.0.1:6513

COPY start.sh /

RUN mkdir /etc/gdns && \
    apk add --no-cache bash git && \
    go get github.com/ayanamist/gdns-go && \
    cd $GOPATH/src/github.com/ayanamist/gdns-go/ && \
    go build && \
    chmod a+x /start.sh && \
    apk del git

ENTRYPOINT ["/start.sh"]