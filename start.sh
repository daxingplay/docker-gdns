#!/bin/bash

cd $GOPATH/src/github.com/ayanamist/gdns-go/
cp config-example.json config.json

if [ ! -z "${PROXY}" ]; then
    sed -i -e "s/127.0.0.1:53/0.0.0.0:53/g" config.json
    sed -i -e "s#ss://method:pass@server:port#$PROXY#g" config.json
fi

./gdns-go