#!/bin/sh
export SERVICE_HOME="$(cd "`dirname "$0"`"/..; pwd)"

# define your environment variable
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export SPARK_HOME='/usr/local/spark-2.3.0-bin-hadoop2.6'

EXEC_PY=$1
JARS_PATH=${SERVICE_HOME}/pyspark_xgb/jars/

spark-submit \
    --name 'spark xgb sample' \
    --master local \
    --jars ${JARS_PATH}/xgboost4j-spark-0.81.jar,${JARS_PATH}/xgboost4j-0.81.jar \
    ${EXEC_PY}