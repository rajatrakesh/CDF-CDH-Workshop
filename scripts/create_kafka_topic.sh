#!/bin/bash
if [ -n "$1" ]; then
    $kafka_dir/kafka-topics.sh --create --zookeeper $localip:2181 --replication-factor 1 --partitions 1 --topic $1
else
    echo "Please provide topic name"
fi