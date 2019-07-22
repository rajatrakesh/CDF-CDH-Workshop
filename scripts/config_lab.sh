#!/bin/bash
echo Installing Lab dependencies
sudo yum install unzip
wget http://nlp.stanford.edu/software/stanford-corenlp-full-2018-10-05.zip
unzip stanford-corenlp-full-2018-10-05.zip
wget  http://central.maven.org/maven2/org/apache/kudu/kudu-spark2_2.11/1.9.0/kudu-spark2_2.11-1.9.0.jar
wget https://raw.githubusercontent.com/swordsmanliu/SparkStreamingHbase/master/lib/spark-core_2.11-1.5.2.logging.jar
export kafka_dir=/opt/cloudera/parcels/CDH-6.2.0-1.cdh6.2.0.p0.967373/lib/kafka/bin
export 'localip=`hostname -I | awk '{print $1}'`'
export 'export publicip=`curl api.ipify.org`'

