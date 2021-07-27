FROM ubuntu:20.04

RUN apt update && apt install -y \ 
    openjdk-8-jdk \
    openssh-server \
    openssh-client \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://mirrors.estointernet.in/apache/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz 
RUN tar xzf hadoop-3.3.1.tar.gz

ENV HADOOP_HOME=/hadoop-3.3.1 \
    HADOOP_INSTALL=${HADOOP_HOME} \
    HADOOP_MAPRED_HOME=${HADOOP_HOME} \
    HADOOP_COMMON_HOME=${HADOOP_HOME} \
    HADOOP_HDFS_HOME=${HADOOP_HOME} \
    YARN_HOME=${HADOOP_HOME} \
    HADOOP_COMMON_LIB_NATIVE_DIR=${HADOOP_HOME}/lib/native \
    PATH=$PATH:${HADOOP_HOME}/sbin:${HADOOP_HOME}/bin \
    HADOOP_OPTS="-Djava.library.path=${HADOOP_HOME}/lib/nativ" \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

COPY /etc/* ${HADOOP_HOME}/etc/hadoop/

CMD [ "bash" ]