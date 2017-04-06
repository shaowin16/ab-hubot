#!/bin/bash

cd `dirname $0`

#构建镜像
docker build -t shaowin/ab-hubot .

#删除容器
docker rm -f ab-hubot &> /dev/null

docker run -d --restart=on-failure:5 \
    --name ab-hubot shaowin/ab-hubot
