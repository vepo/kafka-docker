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
ADD start-kafka.sh .

EXPOSE 9092
CMD [ "./start-kafka.sh" ]