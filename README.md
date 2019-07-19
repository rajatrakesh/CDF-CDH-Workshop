# CDF-CDH Labs: Real-time sentiment analysis with NiFi, Kafka, Spark, Python, Kudu, Impala and Hue.

--

### Pre-requisites

You would require an environment where the following are installed and configured:

* Cloudera CDH (Impala, Kudu, Hue)
* Cloudera Data Flow (Nifi, Registry)

We provide instructions to deploy a single node CDH cluster with all the above pre-requisites configured and installed [Github Repo](https://github.com/rajatrakesh/OneNodeCDHCluster)

Using this repo, you can bring up a CDH cluster (also includes CDSW deployment instructions as well). Alternatively, you can also deploy it as an instance on AWS using a public AMI available (for Cloudera Workshops ONLY). 

To prepare the environment:

* Deploy the OneNodeCluster using [Github Repo](https://github.com/rajatrakesh/OneNodeCDHCluster). This is an extension of the fantastic work done by my colleague **Fabio**. His original repo is available [here](https://github.com/fabiog1901/OneNodeCDHCluster) 

OR 

* Launch the AWS AMI **TBD** with **TBD** instance type.

--

## Content
### Section 1

* [Lab 1 - Accessing the sandbox](#accessing-the-sandbox)
* [Lab 2 - Stream data using NiFi](#stream-data-using-nifi)
* [Lab 3 - Explore Kafka](#explore-kafka)
* [Lab 4 - Spark Streaming w/ Python](#stream-with-spark)
* [Lab 4 - Explore Kudu, Impala](#explore-kudu-impala)
* [Lab 5 - Stream enhanced data into Kudu using NiFi](#stream-enhanced-data-into-kudu-using-nifi)
* [Lab 6 - Create live dashboard with Hue](#create-live-dashboard-with-hue)

### Section 2
* [Lab 1 - Collect syslog data using MiNiFi and EFM](#collect-syslog-data-using-minifi-and-efm)

## Accessing the sandbox





