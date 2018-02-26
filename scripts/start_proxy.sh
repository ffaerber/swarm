#!/bin/sh
n=0
until [ $n -ge 3 ]
do
   ssh -fnNT -L 9999:/var/run/docker.sock $DEPLOY_USER@$DOCKER_REMOTE_HOST -i /$DEPLOY_USER.key && break
   n=$[$n+1]
   sleep 5
done
