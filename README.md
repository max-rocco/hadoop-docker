## Steps to get up & running:

1. Create account on https://labs.play-with-docker.com & login.
2. Create an instance.
3. Inside CLI, execute: docker pull ghcr.io/max-rocco/hadoop-docker:main. (Wait for it complete.)
4. docker image ls & note down the Image ID.
5. docker run -it <Image ID> bash

From now on, you will be inside container's bash (terminal).

1. `/etc/init.d/ssh start`
2. `ssh localhost`
3. `source /etc/environment`
4. `export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin`
5. `$HADOOP_HOME/sbin/start-all.sh`
6. `hdfs namenode -format`
7. `hadoop fs -mkdir /tmp`
8. `hadoop fs -ls`
