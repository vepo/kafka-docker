FROM openjdk:8

WORKDIR /opt

RUN curl -o kafka.tgz https://downloads.apache.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz
RUN tar -xzf kafka.tgz

WORKDIR /opt/kafka_2.13-2.7.0

ADD start-kafka.sh .

EXPOSE 9092
CMD [ "./start-kafka.sh" ]