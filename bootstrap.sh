#!/usr/bin/env bash

# 1. Start the SSH server
/etc/init.d/ssh start

# 2. Connect to "localhost" via SSH
# https://askubuntu.com/a/123080
ssh -oStrictHostKeyChecking=no localhost

# 3. Source the environment variables dumped in /etc/enviroment
source /etc/environment

# 4. Set Hadoop's "sbin" & "bin" in path
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
