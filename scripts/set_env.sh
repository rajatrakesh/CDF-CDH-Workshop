#!/bin/bash
export kafka_dir=/opt/cloudera/parcels/CDH-6.3.0-1.cdh6.3.0.p0.1279813/lib/kafka/bin
export localip=`hostname -I | awk '{print $1}'`
export publicip=`curl api.ipify.org`