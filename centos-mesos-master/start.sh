#!/bin/bash

echo "$ZK_CONF" > /etc/mesos/zk
echo "$QUORUM" > /etc/mesos-master/quorum

/usr/sbin/mesos-master --work_dir=/var/lib/mesos
