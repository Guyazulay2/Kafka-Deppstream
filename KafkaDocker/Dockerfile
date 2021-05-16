FROM 247555/kafka:latest

WORKDIR /usr/local/kafka

RUN apt-get update 


CMD bin/zookeeper-server-start.sh /usr/local/kafka/config/zookeeper.properties & bin/kafka-server-start.sh /usr/local/kafka/config/server.properties & bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic testTopic & bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic testTopic --from-beginning & bin/kafka-console-producer.sh --topic testTopic --bootstrap-server localhost:9092
