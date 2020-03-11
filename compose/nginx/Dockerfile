FROM nginx:stable-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update 

RUN rm /etc/nginx/conf.d/default.conf

COPY ./compose/nginx/blog-yzp.conf /etc/nginx/conf.d/blog-yzp.conf
