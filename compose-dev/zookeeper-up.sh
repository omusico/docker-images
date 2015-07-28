#!/bin/bash

docker run --name=zoo1 -d --net=host -e "MYID=1" -e "CLIENT_PORT=2181" -e "SERVER1=localhost:2888:3888" -e "SERVER2=localhost:2887:3887" -e "SERVER3=localhost:2889:3889" -p 2181:2181 -p 2888:2888 -p 3888:3888 pcompton/vivid-zookeeper
docker run --name=zoo2 -d --net=host -e "MYID=2" -e "CLIENT_PORT=2182" -e "SERVER1=localhost:2888:3888" -e "SERVER2=localhost:2887:3887" -e "SERVER3=localhost:2889:3889" -p 2182:2182 -p 2887:2887 -p 3887:3887 pcompton/vivid-zookeeper
docker run --name=zoo3 -d --net=host -e "MYID=3" -e "CLIENT_PORT=2183" -e "SERVER1=localhost:2888:3888" -e "SERVER2=localhost:2887:3887" -e "SERVER3=localhost:2889:3889" -p 2183:2183 -p 2889:2889 -p 3889:3889 pcompton/vivid-zookeeper
