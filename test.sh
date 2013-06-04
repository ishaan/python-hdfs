#!/bin/bash
HADOOP_CONF=/home/ishaan/Impala/fe/src/test/resources
HADOOP_HOME=/home/ishaan/Impala/thirdparty/hadoop-2.0.0-cdh4.2.1-SNAPSHOT/

export CLASSPATH=${HADOOP_CONF}:$(find ${HADOOP_HOME} -name *.jar | sort | tr '\n' ':')

#export PYTHONPATH=hdfs:${PYTHONPATH}
python hdfs/hfilesystem_test.py
python hdfs/hfile_test.py
