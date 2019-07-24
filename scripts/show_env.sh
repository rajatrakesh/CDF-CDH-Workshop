#!/bin/bash
echo "Kafka Directory:" /opt/cloudera/parcels/CDH-6.2.0-1.cdh6.2.0.p0.967373/lib/kafka/bin
echo "Your Local IP:"  `hostname -I | awk '{print $1}'`
echo "Your Public IP:" `curl api.ipify.org`