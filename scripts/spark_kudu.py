import json, configparser, sys, requests
from pyspark import SparkContext
from pyspark import SparkConf
from pyspark.streaming import StreamingContext
from pyspark.streaming.kafka import KafkaUtils
from pyspark.storagelevel import StorageLevel
from pyspark.sql import SQLContext
from uuid import uuid1
from pyspark.sql.types import *

schema = StructType([StructField("__time", StringType(), True),
                      StructField("event", StringType(), True),
                     StructField("member", StringType(), True),
                     StructField("msgcomment", StringType(), True),
                     StructField("sentiment", StringType(), True)])

zk_broker = "YourHostName:2181"
kafka_topic = "meetup_comment_ws"
kudu_master = "YourHostName"
kudu_table = "impala::default.meetup_comment_sentiment"

def getSqlContextInstance(sparkContext):
        if ('sqlContextSingletonInstance' not in globals()):
            globals()['sqlContextSingletonInstance'] = SQLContext(sc)
        return globals()['sqlContextSingletonInstance']


def splitJson(time,rdd):
    sqc = getSqlContextInstance(rdd.context)
    kudu_df = sqc.createDataFrame(rdd,schema)
    kudu_df.show()
    kudu_df.write.format('org.apache.kudu.spark.kudu') \
                 .option('kudu.master',kudu_master) \
                 .option('kudu.table',kudu_table) \
                 .mode("append") \
                 .save()

if __name__ == '__main__':
    sc = SparkContext(appName="SparkStreaming_IoT")
    ssc = StreamingContext(sc, 5) # 5 second window
    kvs = KafkaUtils.createStream(ssc, zk_broker, "meetup_comment_ws2", {kafka_topic:1})

    kafka_stream = kvs.map(lambda x: x[1]) \
                           .map(lambda l: json.loads(l)) \
                           .map(lambda p: (p['__time'],
                                           p['sentiment'],
                                           p['event'],
                                           p['comment'],
                                           p['member']))


    kafka_stream.foreachRDD(splitJson)
    ssc.start()
    ssc.awaitTermination()