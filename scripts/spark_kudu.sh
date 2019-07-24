#!/bin/bash
source ./set_env.sh
sed -i "s/YourHostName/`hostname -I | awk '{print $1}'`/" spark_kudu.py
spark-submit --master local[2] --jars kudu-spark2_2.11-1.9.0.jar,spark-core_2.11-1.5.2.logging.jar --packages org.apache.spark:spark-streaming-kafka_2.11:1.6.3 spark_kudu.py