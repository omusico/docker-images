#!/bin/bash

docker run --name=mesos-master1 -d --net=host -e "ZK_CONF=zk://localhost:2181,localhost:2182,localhost:2183/mesos" -e "QUORUM=1" -p 5050:5050  pcompton/centos-mesos-master
