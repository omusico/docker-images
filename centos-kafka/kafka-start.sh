#!/bin/bash

sed -e "s/BROKER_ID/${BROKER_ID}/g" -e "s/KAFKA_PORT/${KAFKA_PORT}/g" -e "s/ZK_CONF/${ZK_CONF}/g" -e "s/NUM_PARTITIONS/${NUM_PARTITIONS}/g"  < $KAFKA_HOME/config/server.properties.template > $KAFKA_HOME/config/server.properties

echo "Using $KAFKA_HOME/config/server.properties:"
cat $KAFKA_HOME/config/server.properties

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties
