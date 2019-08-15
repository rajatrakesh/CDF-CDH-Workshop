#!/bin/bash
source ./set_env.sh

if [ -n "$1" ]; then
	$kafka_dir/kafka-console-producer.sh --broker-list $localip:9092 --topic $1
else
	echo "Please provide Kafka Topic Name"
fi