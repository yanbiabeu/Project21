#!/bin/bash


for i in $(docker images | awk '{print$3}' |grep -v IMAGES);
do
docker rmi -f ${i}
done
