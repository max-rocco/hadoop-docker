# Hadoop (Psuedo Distributed Mode) in Docker

## Follow the steps to get up & running:

1. Create account on [Docker Hub](https://hub.docker.com/signup).
2. Login to [Play with Docker](https://labs.play-with-docker.com) using the same credentials.
3. Create an instance.
4. Now we need to pull the image from _Github Container Registry (GHCR)_. To do so, execute the following command:

```bash
docker pull ghcr.io/max-rocco/hadoop-docker:main
```

5. List images & note down the Image ID.

```bash
docker image ls
```

6. We need to get inside container's terminal (mostly bash). To do so, execute the following command:

```bash
docker run -it <Image ID> bash
```

_(**Replace "\<Image ID\>" with the one that you noted in step 4.**)_

<hr />

**From now on, you will be inside container's bash (terminal).** Execute the following steps.

```bash
1. /etc/init.d/ssh start
2. ssh localhost
3. source /etc/environment
4. export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
5. $HADOOP_HOME/sbin/start-all.sh
6. hdfs namenode -format
7. hadoop fs -mkdir /tmp
8. hadoop fs -ls
```

<hr />

<div align="right">

Max Rocco (c) 2021

</div>
