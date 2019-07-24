#!/bin/bash
export kafka_dir=/opt/cloudera/parcels/CDH-6.2.0-1.cdh6.2.0.p0.967373/lib/kafka/bin
export localip=`hostname -I | awk '{print $1}'`
export publicip=`curl api.ipify.org`