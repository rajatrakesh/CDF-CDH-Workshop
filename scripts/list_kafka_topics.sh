#!/bin/bash
source ./set_env.sh
$kafka_dir/kafka-topics.sh --list --zookeeper $localip:2181