# Apache Hadoop using Docker 🐳

## ⚠ This repository has been migrated to [kasipavankumar/hadoop-docker](https://github.com/kasipavankumar/hadoop-docker). ⚠

A Docker image to play around with [Apache Hadoop](https://hadoop.apache.org) in [Pseudo Distributed Mode](https://hadoop.apache.org/docs/stable/hadoop-project-dist/hadoop-common/SingleCluster.html) (single cluster mode).

### Below are the steps to play around with this image using [Play with Docker](https://labs.play-with-docker.com).

1. First of all, create an account on [Docker Hub](https://hub.docker.com/signup).
2. Login to [Play with Docker](https://labs.play-with-docker.com) using the Docker Hub account you just created.
3. You should see a green "Start" button, click on it to start a session. 
4. Create an instance by clicking on "+ Add new instance" in the left pane, to create a VM.
5. A new terminal should show up in the right pane. Here, we need to pull the Docker image from _Github Container Registry (GHCR)_. 
To do so, execute:

```bash
docker pull ghcr.io/kasipavankumar/hadoop-docker:latest
```

6. After the image has been pulled into the VM, we need to start a new container & switch into it's terminal (mostly bash). 
To do so, execute:

```bash
docker run -it ghcr.io/kasipavankumar/hadoop-docker:latest
```

_At this stage, the image will be booting up by executing all the required steps to start Hadoop._

**From now on, you will be inside container's bash (terminal) and can start using Hadoop's filesystem commands.** 🚀

<hr />

[![Deploy Docker image](https://github.com/max-rocco/hadoop-docker/actions/workflows/build.yml/badge.svg)](https://github.com/max-rocco/hadoop-docker/actions/workflows/build.yml)

<hr />

<div align="center">

```txt
Max Rocco (c) 2021
```

</div>
