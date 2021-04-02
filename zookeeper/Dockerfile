FROM azul/zulu-openjdk-alpine:8

RUN apk update && \
    apk add bash && \
    rm -rf /var/cache/apk/* && \
    wget https://downloads.apache.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz && \
    ls && \
    tar -xzf kafka_2.13-2.7.0.tgz && \
    mv kafka_2.13-2.7.0 /opt/kafka && \
    rm kafka_2.13-2.7.0.tgz

WORKDIR /opt/kafka

EXPOSE 2181
EXPOSE 2888
EXPOSE 3888
CMD [ "bin/zookeeper-server-start.sh", "config/zookeeper.properties" ]