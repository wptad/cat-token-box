FROM registry.cn-zhangjiakou.aliyuncs.com/zlns/node AS app

ENV TIME_ZONE=Asia/Shanghai
ENV TZ=Asia/Shanghai

WORKDIR /app
COPY . /app/
RUN yarn install && yarn build 

WORKDIR /app/packages/tracker
RUN yarn install && yarn build

EXPOSE 3000
CMD ["yarn", "start:prod"]
