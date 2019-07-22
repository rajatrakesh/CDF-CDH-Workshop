#!/bin/bash
if [ -n "$1" ]; then
	$kafka_dir/kafka-console-producer.sh --broker-list $localip:9092 --topic $1
else
	echo "Please provide Kafka Topic Name"
fi