#!/bin/bash

docker run --name=kafka1 -d --net=host -e "ZK_CONF=localhost:2181,localhost:2182,localhost:2183" -e "BROKER_LIST=localhost:9092,localhost:9093,localhost:9094" -e "KAFKA_PORT=9092" -e "NUM_PARTITIONS=2" -e "BROKER_ID=0" -p 9092:9092  pcompton/centos-kafka
docker run --name=kafka2 -d --net=host -e "ZK_CONF=localhost:2181,localhost:2182,localhost:2183" -e "BROKER_LIST=localhost:9092,localhost:9093,localhost:9094" -e "KAFKA_PORT=9093" -e "NUM_PARTITIONS=2" -e "BROKER_ID=1" -p 9093:9093  pcompton/centos-kafka
docker run --name=kafka3 -d --net=host -e "ZK_CONF=localhost:2181,localhost:2182,localhost:2183" -e "BROKER_LIST=localhost:9092,localhost:9093,localhost:9094" -e "KAFKA_PORT=9094" -e "NUM_PARTITIONS=2" -e "BROKER_ID=2" -p 9094:9094  pcompton/centos-kafka
