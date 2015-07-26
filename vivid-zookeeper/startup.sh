#!/bin/bash

echo $MYID > /tmp/zookeeper/myid

sed "s/2181/${CLIENT_PORT}/g" < ${ZK_HOME}/conf/zoo_sample.cfg > ${ZK_HOME}/conf/zoo.cfg

if [ -n "$SERVER1" ]
  then
    echo "server.1=${SERVER1}" >> ${ZK_HOME}/conf/zoo.cfg
fi

if [ -n "$SERVER2" ]
  then
    echo "server.2=${SERVER2}" >> ${ZK_HOME}/conf/zoo.cfg
fi

if [ -n "$SERVER3" ]
  then
    echo "server.3=${SERVER3}" >> ${ZK_HOME}/conf/zoo.cfg
fi

echo "Updated ${ZK_HOME}/conf/zoo.cfg:"
cat ${ZK_HOME}/conf/zoo.cfg

${ZK_HOME}/bin/zkServer.sh start-foreground ${ZK_HOME}/conf/zoo.cfg
