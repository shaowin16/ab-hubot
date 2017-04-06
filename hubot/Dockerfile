FROM  mhart/alpine-node:7.8

#挂载数据卷
VOLUME /home/myhubot

#指定执行的工作目录
WORKDIR /home/myhubot

#安装hubot生成器
RUN npm --registry=https://registry.npm.taobao.org install -g yo --allow-root generator-hubot
#issue:https://github.com/yeoman/yeoman.github.io/issues/282#issuecomment-64543114

#生成机器人实例
RUN chmod g+rwx /root /root/.config /root/.config/configstore && yo hubot --defaults

CMD ["./bin/hubot","--name myhubot"]
