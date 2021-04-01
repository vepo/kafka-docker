#!/bin/bash

cp config/server.properties server.properties
echo "Is there connect? ${ZOOKEEPER_CONNECT}"
if [ ! -z $ZOOKEEPER_CONNECT ]; then
    sed -i 's/^zookeeper.connect=.*/zookeeper.connect='$ZOOKEEPER_CONNECT'/g' server.properties
fi

cat server.properties

bin/kafka-server-start.sh server.properties