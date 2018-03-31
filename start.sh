#!/bin/bash

cd $GOPATH/src/github.com/ayanamist/gdns-go/

if [ -f "/config.json" ]; then
    cp /config.json config.json
elif [ -f "/etc/gdns/config.json" ]; then
    cp /etc/gdns/config.json config.json
else
    cp config-example.json config.json
fi

if [ ! -z "${PROXY}" ]; then
    sed -i -e "s/127.0.0.1:53/0.0.0.0:53/g" config.json
    sed -i -e "s#ss://method:pass@server:port#$PROXY#g" config.json
fi

echo "config file: \n"
cat config.json

./gdns-go