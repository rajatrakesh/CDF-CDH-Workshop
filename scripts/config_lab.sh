#!/bin/bash
cd
echo Installing Lab dependencies
sudo yum install unzip
wget http://nlp.stanford.edu/software/stanford-corenlp-full-2018-10-05.zip
unzip stanford-corenlp-full-2018-10-05.zip
wget  http://central.maven.org/maven2/org/apache/kudu/kudu-spark2_2.11/1.9.0/kudu-spark2_2.11-1.9.0.jar
wget https://raw.githubusercontent.com/swordsmanliu/SparkStreamingHbase/master/lib/spark-core_2.11-1.5.2.logging.jar
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/create_kafka_topic.sh
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/kafka_console.sh
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/list_kafka_topics.sh
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/set_env.sh
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/spark_kudu.sh
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/spark_kudu.py
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/start_nlp_engine.sh
wget https://raw.githubusercontent.com/rajatrakesh/CDF-CDH-Workshop/master/scripts/show_env.sh
chmod +x *.sh